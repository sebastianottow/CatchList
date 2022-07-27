//
//  ViewController.swift
//  CatchList
//
//  Created by Sebastian Ottow on 18.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func startButtonTouchUpInside(_ sender: Any) {
        
        let catchListViewController = CatchListViewController(nibName: nil, bundle: nil)
        
        navigationController?.pushViewController(catchListViewController, animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

