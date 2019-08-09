//
//  PlanetList.swift
//  StarWarsApp
//
//  Created by Gianmarco Cotellessa on 10/08/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import Foundation

struct PlanetList: Decodable {
    var count: Int?
    var next: String?
    var previous: String?
    var results: [Planet]?
}
