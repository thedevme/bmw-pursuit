//
//  Palette+Color.swift
//  Financial App
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    static let baseMedGrey = Color("Mako")
    static let baseDarkGrey = Color("MineShaft")
    static let baseBlue = Color("Pacific Blue")
    static let baseYellow = Color("Selective Yellow")
    static let baseRed = Color("Tamarillo")
    static let baseBackground = Color("Background")
}

extension UIColor {
    static let baseMedGrey = Color(named: "Mako")
    static let baseDarkGrey = Color(named: "Mine Shaft")
    static let baseBlue = Color(named: "Pacific Blue")
    static let baseYellow = Color(named: "Selective Yellow")
    static let baseRed = Color(named: "Tamarillo")
    static let baseBackground = Color(named: "Background")


    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}
