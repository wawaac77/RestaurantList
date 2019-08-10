//
//  RestaurantModel.swift
//  RestaurantList
//
//  Created by Alice on 10/8/2019.
//  Copyright © 2019 Alice. All rights reserved.
//

import Foundation

struct Restaurant {
    let name: String
    let distance: String
    let detail: String
    let isLike : Bool
    let imageName : String
}

extension Restaurant {
    
    static func createMockData() -> [Restaurant] {
        return [
            Restaurant(name: "KOKIDO The Chicken Connoisseur", distance: "5km", detail: "Australian, Brunch, Breakfast, Cafe", isLike: false, imageName: "restaurant1"),
            Restaurant(name: "New & Then Cafe", distance: "1km", detail: "Australian, Brunch, Breakfast, Cafe", isLike: false, imageName: "restaurant2"),
            Restaurant(name: "Dood328", distance: "1.5km", detail: "Australian, Brunch, Breakfast, Cafe", isLike: false, imageName: "restaurant3"),
            Restaurant(name: "Pop Me Fatale", distance: "1.2km", detail: "Australian, Brunch, Breakfast, Cafe", isLike: false, imageName: "restaurant4"),
            Restaurant(name: "Warung", distance: "1.1km", detail: "Australian, Brunch, Breakfast, Cafe", isLike: false, imageName: "restaurant5"),
            Restaurant(name: "Sauced Pasta Bar", distance: "1.3km", detail: "Italian", isLike: false, imageName: "restaurant6"),
        ]
        
    }
    
}
