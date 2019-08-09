//
//  ViewController.swift
//  StarWarsApp
//
//  Created by Gianmarco Cotellessa on 09/08/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainFacade = MainFacade()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainFacade.planets { (planets, error) in
            guard let listOfPlanets = planets  else { return }
            for planet in listOfPlanets {
                guard let name = planet.name else { return }
                print(name)
            }
        }
    }

}

