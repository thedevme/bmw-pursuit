//
//  CarContentView.swift
//  BMW
//-
//  Created by Craig Clayton on 12/21/20.
//

import SwiftUI

struct CarContentView: View {
    @EnvironmentObject var model: CarViewModel
    
    var body: some View {
        VStack {
            
            
            ZStack {
                HStack(spacing: 0) {
                    Text("3").custom(font: .bold, size: 100)
                    Text("SERIES").custom(font: .ultralight, size: 100)
                }
                .opacity(0.12)
                .offset(x: -60, y: -60)
                
                ForEach(0..<model.carColors.count) { index in
                    CarView(image: model.carColors[index], index: index)
                }
            }
            
        }
    }
}

struct CarContentView_Previews: PreviewProvider {
    static var previews: some View {
        CarContentView()
            .environmentObject(CarViewModel())
    }
}
