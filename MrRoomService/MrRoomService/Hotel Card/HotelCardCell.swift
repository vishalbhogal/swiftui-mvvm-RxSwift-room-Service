//
//  HotelCardCell.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 15/01/22.
//

import SwiftUI

struct HotelCardCell: View {
    @State var progressValue: Float = 0.0
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.black, Color("pinkWhite")]),
                           startPoint: .leading,
                           endPoint: .trailing)
                .frame(width: 420, height: 35)
            
            HStack(spacing: 90) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Room No. 201")
                        .font(.system(size: 30, weight: .bold, design: .serif))
                        .padding(.bottom)
                    
                    Text("Vishal Bhogal")
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                    HStack {
                        Text("Vacating on:")
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .padding(.bottom, 4)
                        Text("Sunday (29/12)")
                            .font(.system(size: 18, weight: .semibold, design: .default))
                            .foregroundColor(.green)
                            .padding(.bottom, 4)
                    }
                }
                VStack(alignment: .center) {
                    Text("Items")
                        .font(.system(size: 30, weight: .bold, design: .serif))
                        .padding(.bottom)
                    ProgressBarForItems(progress: self.$progressValue)
                        .frame(width: 60, height: 60)
                        .onAppear {
                            self.progressValue = 0.4
                        }
                        .padding(.bottom)
                }
            }
            
        }
        .border(.black, width: 1)
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

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        HotelCardCell(progressValue: 0.0)
    }
}
