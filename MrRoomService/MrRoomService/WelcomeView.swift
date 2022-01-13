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
            Image(uiImage: UIImage(named: "landingPage")!)
                .resizable()
                .scaledToFit()
                .overlay(MrRoomServiceView(), alignment: .top)
                .overlay(ContinueButtonView(), alignment: .bottom)
        }
    }
}

struct ContinueButtonView: View {
    var body: some View {
        ZStack {
            Text("Continue>>>")
                .fontWeight(.heavy)
                .foregroundColor(.green)
                .font(.largeTitle)
                .padding()
        }
    }
}

struct MrRoomServiceView: View {
    var body: some View {
        ZStack {
            Text("Mr. Room Service")
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(.top, 80.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
