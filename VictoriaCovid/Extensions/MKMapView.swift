//
//  MKMapView.swift
//  VictoriaCovid
//
//  Created by Naveenprabhu Arumugam on 31/7/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import Foundation
import MapKit

internal extension MKMapView {
    func centerToLocation(location: CLLocation, regionRadius: CLLocationDistance)  {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: 10000)
         setRegion(coordinateRegion, animated: true)
    }
}
