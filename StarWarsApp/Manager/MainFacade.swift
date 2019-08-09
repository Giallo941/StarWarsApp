//
//  MainFacade.swift
//  StarWarsApp
//
//  Created by Gianmarco Cotellessa on 10/08/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import Foundation

class MainFacade {
    
    private let networkClient = NetworkClient()
    
    func planets(completion: @escaping ([Planet]?, Error?) -> Void) {
        networkClient.planets(completion: completion)
    }
}
