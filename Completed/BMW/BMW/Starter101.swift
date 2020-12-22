//
//  Starter101.swift
//  BMW
//
//  Created by Craig Clayton on 12/21/20.
//

import SwiftUI

struct Starter101: View {
    var body: some View {
        HStack {
            Text("Craig")
                .custom(font: .bold, size: 24)
            Spacer()
            Text("Clayton")
        }.padding(.horizontal, 10)
    }
}

struct Starter101_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Group {
                Starter101()
                    .previewLayout(.fixed(width: 600, height: 100))
                
                Starter101()
                    .previewLayout(.fixed(width: 300, height: 100))
            }
            .preferredColorScheme(.light)
            
            Group {
                Starter101()
                    .previewLayout(.fixed(width: 600, height: 100))
                
                Starter101()
            }
            .preferredColorScheme(.dark)
        }
    }
}
