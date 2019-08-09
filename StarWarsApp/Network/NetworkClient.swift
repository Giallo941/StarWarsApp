//
//  NetworkClient.swift
//  StarWarsApp
//
//  Created by Gianmarco Cotellessa on 09/08/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import Foundation
import Alamofire

class NetworkClient {
    
    struct Const {
        static let basePath = "https://swapi.co/api/"
        static let planetsEndPoint = "planets/"
    }
    
    func planets(completion: @escaping ([Planet]?, Error?) -> Void) {
        AF.request(Const.basePath + Const.planetsEndPoint).responseJSON { response in
            switch response.result {
            case .success(_):
                guard let data = response.data else { return }
                let planetList = try? JSONDecoder().decode(PlanetList.self, from: data)
                completion(planetList?.results, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }

}
