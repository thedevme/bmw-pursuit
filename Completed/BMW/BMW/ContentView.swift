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
                
                HStack {
                    rating
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 600)
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
            Text("card")
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
