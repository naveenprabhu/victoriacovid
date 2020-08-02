//
//  Boundary.swift
//  VictoriaCovid
//
//  Created by Naveenprabhu Arumugam on 2/8/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import Foundation

struct VicLgaBoundary: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case name
        case lgaBoundary = "boundaries"
        case lgaLabelPoint = "labelpoint"
        case lgaDetail = "data"
    }
    
    let lgaBoundary: [LatLng]
    let name: String
    let lgaLabelPoint: LatLng
    let lgaDetail: LgaDetail
}
