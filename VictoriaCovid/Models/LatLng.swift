//
//  LabelPoint.swift
//  VictoriaCovid
//
//  Created by Naveenprabhu Arumugam on 2/8/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import Foundation
struct LatLng: Decodable {
    let latitude: Double
    let longitude: Double
    
    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        latitude = try container.decode(Double.self)
        longitude = try container.decode(Double.self)
    }
}
