//
//  PlayerDataSource.swift
//  SwiftUI_Integration
//
//  Created by Tarun M Krishna on 21/11/22.
//

import Foundation

struct Player: Hashable {
    var name: String
    var runs: String
    var image: String
    var countryImage: String
}

class PlayerDataSource {
    var players: [Player] {
        [
            Player(name: "Virat Kohli", runs: "3,958", image: "Virat_Kohli", countryImage: "india"),
            Player(name: "Rohit Sharma", runs: "3,826", image: "Rohit_Sharma", countryImage: "india"),
            Player(name: "Martin Guptil", runs: "3,531", image: "Martin_Guptil", countryImage: "newzealand"),
            Player(name: "Paul Stirling", runs: "3,323", image: "Paul_Stirling", countryImage: "ireland"),
            Player(name: "Babar Azam", runs: "2,939", image: "Babar_Azam", countryImage: "pak")
        ]
    }
}
