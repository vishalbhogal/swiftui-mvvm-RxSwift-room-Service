//
//  HotelCardCell.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 15/01/22.
//

import SwiftUI

struct HotelCardCell: View {
    @State var progressValue: Float = 0.0
    var hotelCardData: [HotelCard] = HotelCardData.hotelOccupanyDetails
    var body: some View {
        NavigationView {
            NavigationLink(destination: WelcomeView()) {
                List(hotelCardData, id: \.id) { hotelCardInfo in
            VStack {
                LinearGradient(gradient: Gradient(colors: [.black, Color("pinkWhite")]),
                               startPoint: .leading,
                               endPoint: .trailing)
                    .frame(width: 350, height: 25)
                
                HStack(spacing: 60) {
                    CardDataRoomInformation(hotelCardInfo: hotelCardInfo)
                    CardsDataItemsSection(progressValueForTheCard: hotelCardInfo.progressValue, progressValue: $progressValue)
                }
            }
                .border(.black, width: 1)
            }
            .navigationBarTitle("Room Details")
            }

    }
        
    }
}

struct ProgressBarForItems: View {
    @Binding var progress: Float
    var color: Color = Color.green
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 8)
                .opacity(0.2)
                .foregroundColor(Color.gray)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 5), value: self.progress)
        }
    }
}

struct CardDataRoomInformation: View {
    var hotelCardInfo: HotelCard
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Room no: \(hotelCardInfo.roomNumber)")
                .font(.system(size: 24, weight: .bold, design: .serif))
                .padding(.bottom)
            
            Text(hotelCardInfo.ownerName)
                .font(.system(size: 16, weight: .medium, design: .monospaced))
            HStack {
                Text("Vacating on:")
                    .font(.system(size: 14, weight: .regular, design: .default))
                    .padding(.bottom, 4)
                Text(hotelCardInfo.dateOfVacating)
                    .font(.system(size: 14, weight: .semibold, design: .default))
                    .foregroundColor(hotelCardInfo.colorOfDate)
                    .padding(.bottom, 4)
            }
        }
    }
}

struct CardsDataItemsSection: View {
    var progressValueForTheCard: Float
    @Binding var progressValue: Float
    var body: some View {
        VStack(alignment: .center) {
            Text("Items")
                .font(.system(size: 24, weight: .bold, design: .serif))
                .padding(.top)

            ProgressBarForItems(progress: self.$progressValue)
                .frame(width: 60, height: 60)
                .onAppear {
                    self.progressValue = progressValueForTheCard
                }
                .padding(.bottom)
        }
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        HotelCardCell(progressValue: 0.0)
    }
}