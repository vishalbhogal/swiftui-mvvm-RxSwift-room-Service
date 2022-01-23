//
//  HotelCardCell.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 15/01/22.
//

import SwiftUI

struct HotelCardCell: View {
    @State var progressValue: Float = 1
    @State var hotelCardViewModel = HotelCardViewModel(staysNearHotelService: HotelDetailsInformationService())
    @State var isSelectedCard: HotelInformation?
    var body: some View {
                List(hotelCardViewModel.hotelCardData.hotelInformation, id: \.self) { hotelCardInfo in
                            ZStack {
                                Image(uiImage: UIImage(named: "sampleCardBackground")!)
                                    .resizable()
                                    .frame(height:213)
                                    .cornerRadius(13)

                                    
                            HStack(spacing: 95) {
                                CardDataRoomInformation(hotelInfoResponse: hotelCardInfo)
                                
                                CardsDataItemsSection(progressValueForTheCard: hotelCardInfo.progressValue, progressValue: $progressValue)
                            }
                            }
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            .listRowBackground(Color(hue: 0.677, saturation: 0.161, brightness: 0.834))
                            .sheet(item: $isSelectedCard) { isCardSelected in
                            HotelResidentDetailsInfoView()
                        }
                        .onTapGesture {
                            self.isSelectedCard = hotelCardInfo
                        }
                    
                }
                .onAppear{
                    UITableView.appearance().backgroundColor = UIColor(Color(hue: 0.677, saturation: 0.161, brightness: 0.834))
                    
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        
                        HStack {
                            Image(systemName: "tag.circle")
                                .foregroundColor(Color("vistaraYellow"))
                            
                            Text("Room Details")
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .font(Font.subheadline)
                        }
                    }
                }
        
}
}

struct ProgressBarForItems: View {
    var progress: Float
    var color: Color = Color.cyan
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 8)
                .opacity(0.2)
                .foregroundColor(Color.white)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 1), value: self.progress)
        }
    }
}

struct CardDataRoomInformation: View {
    var hotelInfoResponse: HotelInformation
    var body: some View {
        VStack(alignment: .leading, spacing: 28) {
            
            Text("Room no: \(hotelInfoResponse.residentRoomNo)")
                .padding(.bottom)
                .font(.custom("TitilliumWeb-Regular", size: 22))
                .foregroundColor(.white)

            VStack(alignment: .leading, spacing: 5) {
                Text(hotelInfoResponse.residentName)
                    .font(.custom("TitilliumWeb-Regular", size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                HStack(spacing: 5) {
                    Text("Checkout:")
                        .font(.custom("TitilliumWeb-Regular", size: 18))
                        
                        .foregroundColor(.white)
                    
                    Text(hotelInfoResponse.dateOfVacation)
                        .font(.custom("Actor-Regular", size: 18))
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct CardsDataItemsSection: View {
    var progressValueForTheCard: Float
    @Binding var progressValue: Float
    var body: some View {
            ProgressBarForItems(progress: progressValueForTheCard)
                .frame(width: 40, height: 60)
                .onAppear {
                    self.progressValue = progressValueForTheCard
                }
    }
}

struct HotelResidentDetailsInfoView1_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
