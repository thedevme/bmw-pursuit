//
//  ColorView.swift
//  BMW
//
//  Created by Craig Clayton on 12/21/20.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: 28, height: 28)
            
            Circle()
                .stroke(lineWidth: 1)
                .frame(width: 28, height: 28)
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .blue)
    }
}
