//
//  CarViewModel.swift
//  BMW
//
//  Created by Craig Clayton on 12/21/20.
//

import Foundation
import SwiftUI

class CarViewModel: ObservableObject {
    let carColors = ["black", "grey", "red", "white"]
    
    @Published var selectedCarColorIndex = 0
    @Published var colors: [Color] = [
        .black,
        .baseDarkGrey,
        .baseRed,
        .white
    ]
    
}
