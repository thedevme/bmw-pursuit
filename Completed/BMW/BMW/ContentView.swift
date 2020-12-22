//
//  ContentView.swift
//  BMW
//
//  Created by Craig Clayton on 12/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.baseBackground).edgesIgnoringSafeArea(.all)
            
            VStack {
                header
                
                VStack {
                    rating
                    HStack {
                        Spacer()
                        CarContentView()
                    }
                    
                    ColorButtonMenu()
                    VStack(spacing: 20) {
                        HStack {
                            HStack(alignment: .center) {
                                Image("icon-mpg")
                                Text("MPG")
                                    .custom(font: .bold, size: 24)
                            }
                            Spacer()
                            Text("19/24")
                                .custom(font: .bold, size: 40)
                        }
                        
                        HStack(alignment: .center) {
                            HStack {
                                Image("icon-hp")
                                Text("HP")
                                    .custom(font: .bold, size: 24)
                            }
                            
                            Spacer()
                            
                            Text("443")
                                .custom(font: .bold, size: 40)
                                
                        }
                        
                        HStack(alignment: .center) {
                            HStack(alignment: .bottom) {
                                Image("icon-gas")
                                Text("0-60")
                                    .custom(font: .bold, size: 24)
                            }
                            
                            Spacer()
                            
                            Text("3.2")
                                .custom(font: .bold, size: 40)
                                
                        }
                    }.padding(.horizontal, 20)
                    
                    Button(action: {}) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(height: 48)
                            Text("REQUEST A TEST DRIVE")
                                .foregroundColor(.white)
                                .custom(font: .bold, size: 24)
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.bottom, 15)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.top, 15)
                .background(Color.white)
                .cornerRadius(8.0)
                .padding(.horizontal, 8)
                
            }
        }
    }
    
    var header: some View {
        ZStack {
            Image("bmw-logo").offset(y: -28)
            VStack {
                HStack(spacing: 0) {
                    Text("BMW")
                        .custom(font: .bold, size: 65)
                    Text("SERIES")
                        .custom(font: .ultralight, size: 65)
                }.foregroundColor(.white)
            }
        }
    }
    
    var rating: some View {
        HStack {
            Text("330i xDrive Sedan").custom(font: .bold, size: 18)
            Spacer()
            HStack {
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.lefthalf.fill")
            }.foregroundColor(.baseYellow)
        }.padding(.horizontal, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
