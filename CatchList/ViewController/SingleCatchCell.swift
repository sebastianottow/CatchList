//
//  SingleCatchCell.swift
//  CatchList
//
//  Created by Sebastian Ottow on 19.07.22.
//

import Foundation
import UIKit


class  SingleCatchCell: UITableViewCell {
    
    var viewModel: Catches?
    
    func customCell() {
        
        textLabel?.text = viewModel?.species
        backgroundColor = UIColor.red

        
    }
    
    
}
