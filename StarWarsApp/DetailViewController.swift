//
//  DetailViewController.swift
//  StarWarsApp
//
//  Created by Gianmarco Cotellessa on 10/08/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = planet?.name
    }

}
