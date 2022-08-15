//
//  Catches.swift
//  CatchList
//
//  Created by Sebastian Ottow on 19.07.22.
//

import Foundation
import UIKit

struct Catches: Codable {
    
    var species: String
    var length: Double
    var weight: Double
    
}

class ViewControllerViewModel {
    
    var catches: [Catches]?
    
    init( model: [Catches]?){
        let defaultModel = [
            Catches(species: "Regenbogenforelle", length: 30.20, weight: 0.8)
        ]
        
        catches = defaultModel
        
        
    }
}
