//
//  Enums.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import Foundation

enum MMObjectPosition {
    case center, topCenter, bottomCenter, topLeft, topRight, centerTopSquare, centerBottomSquare
}

enum MMDependObjectSize{
    case oneToOne, oneTenth, twoTenth, threeTenth, fourTenth, fiveTenth, sixTenth, sevenTenth, eightTenth, nineTenth, twoTwentieth, threeTwentieth
}

enum MMDependPosition{
    case top, bottom, left, right, bottomCenter
}

enum MMFixedObjectSize{
    case w12_h6_46,
         w20_h20,
         w25_h25,
         w30_h30,
         w35_h35,
         w40_h40,
         w45_h45,
         w50_h50
    
    case w20_h30,
         w20_h40,
         w30_h40,
         w30_h50,
         w40_h50,
         w40_h60,
         w50_h60,
         w50_h70
}
