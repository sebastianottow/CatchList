//
//  CatchListViewController.swift
//  CatchList
//
//  Created by Sebastian Ottow on 19.07.22.
//

import Foundation
import UIKit


class CatchListViewController: UIViewController {
    
    //imports the Model "Catches" from the Modelfolder
    private var _viewModel: ViewControllerViewModel?
    
    @IBOutlet weak var catchListTableView: UITableView?
    @IBOutlet weak var textField: UITextField?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        catchListTableView?.register(SingleCatchCell.self, forCellReuseIdentifier: "SingleCatchCell")
        
        _viewModel = ViewControllerViewModel(model: nil)
        
        textField?.placeholder = "neuen Fang eintragen..."
//        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addNewCatchTouchUpInside(_ sender: UIButton) {

        guard let inputSpecies = textField?.text else { return }
        
        _viewModel?.catches?.append(Catches.init(species: inputSpecies, length: 10.50 , weight: 10.50))
        
       // print(_viewModel?.catches)
        
        self.catchListTableView?.reloadData()
        
    }
    
    
}


extension CatchListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

extension CatchListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Meine Catch-List"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SingleCatchCell", for: indexPath) as? SingleCatchCell else { return UITableViewCell() }
          
        let caughtSpecies = _viewModel?.catches?[indexPath.row]
        
        cell.viewModel = caughtSpecies
        cell.customCell()
        
          return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return _viewModel?.catches?.count ?? 0
        
    }
    
    
    
}
