//
//  ColorButtonMenu.swift
//  BMW
//
//  Created by Craig Clayton on 12/21/20.
//

import SwiftUI

struct ColorButtonMenu: View {
    
    @EnvironmentObject var model: CarViewModel
    
    var body: some View {
        HStack {
            ForEach(0..<model.colors.count) { index in
                Button(action: { self.model.selectedCarColorIndex = index }) {
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                        ColorView(color: self.model.colors[index])
                        Image("color-checkmark")
                            .offset(x: 3, y: -3)
                            .opacity( self.model.selectedCarColorIndex == index ? 1 : 0)
                    }
                }.buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct ColorButtonMenu_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonMenu()
            .environmentObject(CarViewModel())
    }
}
