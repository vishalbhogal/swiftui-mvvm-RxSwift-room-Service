//
//  HotelResidentDetailsInfoView.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 23/01/22.
//

import SwiftUI

struct HotelResidentDetailsInfoView: View {
    var body: some View {
        ZStack(alignment: .top) {
        VStack(spacing: 4) {
            Image(uiImage: UIImage(named: "hotelResidentDetailsHeader")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .contrast(1.4)
                .saturation(0.3)
            ZStack {
                LinearGradient(gradient: Gradient(colors:  [Color(hue: 0.626, saturation: 0.42, brightness: 0.684), .gray]),
                                   startPoint: .topLeading,
                                   endPoint: .bottom)
                VStack(alignment: .leading, spacing: 5) {
                    HStack(spacing: 70) {
                        Text("Vishal Bhogal")
                            .foregroundColor(.black)
                            .font(.custom("TitilliumWeb-Regular", size: 40))
                            .padding(.top,23)
                            .multilineTextAlignment(.leading)
                            .shadow(color: .white, radius: 3)
                        ZStack {
                            Circle()
                                .frame(width: 90, height: 90)
                                .foregroundColor(.white)
                            Circle()
                                .frame(width: 90, height: 80)
                                .foregroundColor(Color(hue: 0.626, saturation: 0.42, brightness: 0.684))
                            
                            Text("101")
                                .font(.custom("TitilliumWeb-Regular", size: 35))
                                .padding(.top, 1)
                                .foregroundColor(.white)
                        }
                        
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "tray.circle.fill")
                            .resizable()
                            .foregroundColor(Color(hue: 0.636, saturation: 0.722, brightness: 0.46))
                            .frame(width: 27, height: 27)
                        
                        Text("vishalBhogal/ Yopmail.com")
                            .foregroundColor(Color(hue: 0.555, saturation: 0.773, brightness: 0.1))
                            .underline(true, color: .black)
                            .font(.custom("Actor-Regular", size: 18))
                            .padding(.bottom, 5.0)
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "phone.circle.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(hue: 0.636, saturation: 0.722, brightness: 0.46))
                        
                        Text("9736769042")
                            .font(.custom("TitilliumWeb-Regular", size: 18))
                            .foregroundColor(Color(hue: 0.555, saturation: 0.773, brightness: 0.1))
                    }
                    Color.clear
                }.padding()
            }
        }
        .background(Color.white)
            Image(uiImage: UIImage(named: "humanFaceOne")!)
                .resizable()
                .overlay(Circle()
                            .stroke(Color(hue: 0.566, saturation: 0.099, brightness: 0.835), lineWidth: 4))
                .shadow(radius: 10)
                .frame(width: 150, height: 150)
                .offset(y: 135)
                .contrast(1.2)
                .saturation(1.4)
    }
    }
}

struct HotelResidentDetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        HotelResidentDetailsInfoView()
    }
}
