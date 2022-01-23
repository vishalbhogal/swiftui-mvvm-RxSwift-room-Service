//
//  WelcomeView.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 13/01/22.
//

import SwiftUI

struct WelcomeView: View {
    @State var isButtonTapped: Bool = false
    @StateObject var hotelCardViewModel = HotelCardViewModel(staysNearHotelService: HotelDetailsInformationService())
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(Color("vistaraPurple"))
    }
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.gray, Color("vistaraPurple")]),
                               startPoint: .top,
                               endPoint: .bottom)
                VStack {
                    MrRoomServiceView()
                    ContinueButtonView(isActive: self.$isButtonTapped, hotelCardViewModel: hotelCardViewModel)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "hare.fill")
                            .foregroundColor(Color("vistaraYellow"))
                        Text("Find Wonderland")
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                }
            }
            
        }
    }
}

struct ContinueButtonView: View {
    @Binding var isActive: Bool
    var hotelCardViewModel: HotelCardViewModel
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 15) {
                UserNameView()
                UserPasswordView()
            }.padding(.horizontal)
            NavigationLink(destination: HotelCardCell(hotelCardViewModel: hotelCardViewModel), isActive: $isActive) {
                HStack(spacing: 110) {
                    Text("Login and Continue")
                        .lineLimit(1)
                        .foregroundColor(.white)
                        .font(.custom("Actor-Regular", size: 25))
                        .padding(.trailing)
        
                    Image(systemName: "arrow.forward.circle")
                        .resizable()
                        .tint(Color("vistaraPurple"))
                        .frame(width: 35, height: 35)
                }
                .padding(14)
                .background(Color("vistaraYellow").cornerRadius(11))
                .onTapGesture {
                    self.isActive = true
                }
            }
            VStack(alignment: .leading, spacing: 40) {
                Text("This App is developed By Vishal Bhogal as his side gig to explore the worlds of iOS and Swift. Find me at github.com/vishalbhogal.")
                    .font(.custom("Actor-Regular", size: 17))
                    .padding([.top, .horizontal], 20)
                    .foregroundColor(.white)
                HStack {
                    Text("Last Updated on:")
                        .font(.custom("TitilliumWeb-Regular", size: 19))
                        .padding(.leading, 20)
                        .foregroundColor(.gray)
                    
                    Text("Jan 17, 2022")
                        .font(.custom("TitilliumWeb-Regular", size: 19))
                        .foregroundColor(.green)
                }
            }
        }.onAppear {
            hotelCardViewModel.getStaysNearHotelRatings()
        }
    }
}

struct GlobalmageView: View {
    var body: some View {
        Image(uiImage: UIImage(named: "landingPageIcon")!)
            .resizable()
            .frame(width: 150, height: 150)
            .foregroundColor(Color("vistaraYellow"))
    }
}

struct MrRoomServiceView: View {
    var body: some View {
        VStack {
            GlobalmageView()
            Text("Mr. Room Service")
                .font(.custom("Dancing Script", size: 50))
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
    }
}

struct UserPasswordView: View {
    @State var password = ""
    var body: some View  {
        VStack {
            HStack {
                Image(systemName: "eye.fill")
                    .resizable()
                    .frame(width: 35, height: 25)
                    .padding(.leading)
                    .foregroundColor(Color("vistaraYellow"))
                
                TextField("", text: $password)
                    .placeholder(when: password.isEmpty) {
                        Text("Password").foregroundColor(.gray)
                    }
                    .font(.custom("Actor-Regular", size: 25))
                    .padding(.leading, 14)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
            }
            
            Divider()
                .frame(width: 380, height: 1)
                .background(Color.gray)
                .padding(.bottom, 25)
        }
    }
}

struct UserNameView: View {
    @State var userName = ""
    var body: some View  {
        VStack {
            HStack {
                Image(systemName: "person.text.rectangle")
                    .resizable()
                    .frame(width: 35, height: 25)
                    .padding(.horizontal)
                    .foregroundColor(Color("vistaraYellow"))
                
                TextField("", text: $userName)
                    .placeholder(when: userName.isEmpty) {
                        Text("Manager Id").foregroundColor(.gray)
                    }
                    .font(.custom("Actor-Regular", size: 25))
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .onTapGesture {
                        
            }

                }
            
            Divider()
                .frame(width: 380, height: 1)
                .background(Color.gray)
        }
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
