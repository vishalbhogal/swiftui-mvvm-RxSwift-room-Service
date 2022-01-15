//
//  WelcomeView.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 13/01/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(uiImage: UIImage(named: "LandingPage")!)
                .resizable()
                .scaledToFit()
                .overlay(DesignerNoteView(), alignment: .bottom)
            VStack {
                MrRoomServiceView()
                ContinueButtonView()
                
            }
        }
    }
}

struct ContinueButtonView: View {
    var body: some View {
        Button(action:{
            // To Connect with HotelCardCell
        })
        {
            HStack(spacing: 180) {
                Text("Continue")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.trailing)
                Image(systemName: "arrow.forward.circle")
                    .resizable()
                    .tint(.black)
                    .frame(width: 40, height: 40)
            }
        }
        .padding()
        .frame(width: 400, height: 60)
        .background(LinearGradient(gradient: Gradient(colors: [.black, Color("pinkWhite")]),
                                   startPoint: .leading,
                                   endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct DesignerNoteView: View {
    var body: some View {
        Text("designed by Vishal Bhogal")
            .fontWeight(.heavy)
            .frame(width: 425, height: 40, alignment: .center)
            .background(Color("pinkWhite"))
            .foregroundColor(.black)
    }
}

struct MrRoomServiceView: View {
    var body: some View {
        Text("Mr. Room Service")
            .frame(width: 400, height: 400, alignment: .top)
            .foregroundColor(Color("yellowWhite"))
            .font(.system(size: 40, weight: .heavy, design: .rounded))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
