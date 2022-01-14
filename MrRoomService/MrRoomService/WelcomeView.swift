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
            // To Do
        })
        {   ZStack{
            HStack {
                Text("Continue")
                    .foregroundColor(.purple)
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Image(systemName: "arrow.forward.circle")
                    .resizable()
                    .tint(.purple)
                    .frame(width: 40, height: 40)
            }
            .frame(width: 400, height: 50)
            .background(Color("pinkWhite"))
        }
            
        }
    }
}

struct DesignerNoteView: View {
    var body: some View {
        Text("designed by Vishal Bhogal")
            .frame(width: 425, height: 40, alignment: .center)
            .background(.blue)
            .foregroundColor(.white)
    }
}

struct MrRoomServiceView: View {
    var body: some View {
        Text("Mr. Room Service")
            .frame(width: 400, height: 400, alignment: .top)
            .foregroundColor(.white)
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
