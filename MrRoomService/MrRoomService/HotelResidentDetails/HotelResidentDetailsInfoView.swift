//
//  HotelResidentDetailsInfoView.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 23/01/22.
//

import SwiftUI

struct HotelResidentDetailsInfoView: View {
    var colorOFItemsList: Color = Color(hue: 0.555, saturation: 0.773, brightness: 0.1)
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
                VStack {
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
                }.padding([.top, .leading, .trailing])
                VStack {
                    HStack(spacing: 135) {
                    VStack(alignment: .leading) {
                            Text("Items already taken")
                            .foregroundColor(.white)
                            .font(.custom("Dancing Script", size: 22))
                            .padding(.bottom, 1)
                        HStack(spacing: 13) {
                            Image(systemName: "circle.inset.filled")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(hue: 0.636, saturation: 0.722, brightness: 0.46))
                            
                            Text("Plates")
                                .font(.custom("TitilliumWeb-Regular", size: 18))
                                .foregroundColor(.black)
                        }
                        HStack(spacing: 13) {
                            Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(hue: 0.636, saturation: 0.722, brightness: 0.46))
                            
                            Text("Water Bottles")
                                .font(.custom("TitilliumWeb-Regular", size: 18))
                                .foregroundColor(.black)
                        }
                        HStack(spacing: 13) {
                            Image(systemName: "cup.and.saucer.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(hue: 0.636, saturation: 0.722, brightness: 0.46))
                            
                            Text("Cups")
                                .font(.custom("TitilliumWeb-Regular", size: 18))
                                .foregroundColor(.black)
                        }

                        HStack(spacing: 13) {
                            Image(systemName: "flame.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(hue: 0.636, saturation: 0.722, brightness: 0.46))
                            
                            Text("Ash Tray")
                                .font(.custom("TitilliumWeb-Regular", size: 18))
                                .foregroundColor(.black)
                        }
                        HStack(spacing: 13) {
                            Image(systemName: "bed.double.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(hue: 0.636, saturation: 0.722, brightness: 0.46))
                            
                            Text("Extra Mattress")
                                .font(.custom("TitilliumWeb-Regular", size: 18))
                                .foregroundColor(.black)
                        }
                        HStack(spacing: 13) {
                            Image(systemName: "fork.knife")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(hue: 0.636, saturation: 0.722, brightness: 0.46))
                            
                            Text("Spoons & Forks")
                                .font(.custom("TitilliumWeb-Regular", size: 18))
                                .foregroundColor(.black)
                        }
                    }
                    
                    VStack(alignment: .center, spacing: 3) {
                        Text("Quantity")
                            .foregroundColor(.white)
                            .font(.custom("Dancing Script", size: 22))
                            .padding(.bottom, 16)
                        VStack(spacing: 21) {
                        Text("4")
                            .font(.custom("Actor-Regular", size: 20))
                            .foregroundColor(.black)
                        
                        Text("6")
                            .font(.custom("Actor-Regular", size: 20))
                            .foregroundColor(.black)
                        
                        Text("2")
                            .font(.custom("Actor-Regular", size: 20))
                            .foregroundColor(.black)
                        
                        Text("1")
                            .font(.custom("Actor-Regular", size: 20))
                            .foregroundColor(.black)
                        
                        Text("3")
                            .font(.custom("Actor-Regular", size: 20))
                            .foregroundColor(.black)
                        
                        Text("7")
                            .font(.custom("Actor-Regular", size: 20))
                            .foregroundColor(.black)
                        
                    }
                    }
                }
                    Button("Add More Items") {
                        //
                    }
                    .foregroundColor(.black)
                    .font(.custom("TitilliumWeb-Regular", size: 25))
                    .frame(width: 350, height: 50, alignment: .center)
                    .background(Color(hue: 0.199, saturation: 0.681, brightness: 0.894))
                    .cornerRadius(11)
                    .padding(.vertical, 25)
                    
                    
                }.padding(.top, 3)
                }
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
