//
//  ViewController.swift
//  StarWarsApp
//
//  Created by Gianmarco Cotellessa on 09/08/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let mainFacade = MainFacade()
    
    var planets: [Planet]?
    
    @IBOutlet weak var tableView: UITableView!
    
    let loaderView = UIView()
    let loader = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData(){
        mainFacade.planets { (planets, error) in
            guard let listOfPlanets = planets  else { return }
            self.planets = listOfPlanets
            self.tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let nextScene = segue.destination as? DetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            let selectedPlanets = planets?[indexPath?.row ?? 0]
            nextScene?.planet = selectedPlanets
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = planets?[indexPath.row].name
        return cell
    }

}

