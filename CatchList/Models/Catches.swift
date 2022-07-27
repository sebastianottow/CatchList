//
//  Catches.swift
//  CatchList
//
//  Created by Sebastian Ottow on 19.07.22.
//

import Foundation

struct Catches {
    
    var species: String
    var length: Double
    var weight: Double
    
}

class ViewControllerViewModel {
    
    var catches: [Catches]?
    
    init( model: [Catches]?){
        let defaultModel = [
            Catches(species: "Regenbogenforell", length: 30.20, weight: 0.8)
        ]
        
        catches = defaultModel
        
        
    }
}
