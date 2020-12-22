//
//  CarView.swift
//  BMW
//
//  Created by Craig Clayton on 12/21/20.
//

import SwiftUI

struct CarView: View {
    @EnvironmentObject var model: CarViewModel
    
    let image: String
    let index: Int
    
    var body: some View {
        Image(image)
            .opacity(self.model.selectedCarColorIndex == index ? 1 : 0)
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(image: "white", index: 0)
    }
}
