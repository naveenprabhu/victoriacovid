//
//  MapViewModel.swift
//  VictoriaCovid
//
//  Created by Naveenprabhu Arumugam on 1/8/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import Foundation


class MapViewModel {
    
    func getBoundaries()  {
        AFNetworkClient.shared.get("/fetchcoviddata", parameters: nil, headers: nil, progress: nil, success: { (operation: URLSessionTask!, responseObject: Any?) in
            
            if let responseObject = responseObject {
                let responseData = try! JSONSerialization.data(withJSONObject: responseObject, options: JSONSerialization.WritingOptions.prettyPrinted)
                let boundary: [VicLgaBoundary] = try! JSONDecoder().decode([VicLgaBoundary].self, from: responseData)
                        // print(boundary)
            }

        
     
            
        }) { (operation: URLSessionTask!, error: Error?) in
            print(error)
        }
    }
    
}
