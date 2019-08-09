//
//  Planet.swift
//  StarWarsApp
//
//  Created by Gianmarco Cotellessa on 09/08/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import Foundation

struct Planet: Decodable {
    var name: String?
    var rotation_period: String?
    var orbital_period: String?
    var diameter: String?
}
