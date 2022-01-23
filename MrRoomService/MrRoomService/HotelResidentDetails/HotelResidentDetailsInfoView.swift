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
        VStack(spacing: 0) {
            Image(uiImage: UIImage(named: "hotelResidentDetailsHeader")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .contrast(1.4)
                .saturation(0.3)
            Color.black
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
