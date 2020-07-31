//
//  ViewController.swift
//  VictoriaCovid
//
//  Created by Naveenprabhu Arumugam on 30/7/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet private var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let intialLocation: CLLocation = CLLocation(latitude: -37.8136, longitude: 144.964600)
        mapView.centerToLocation(location: intialLocation, regionRadius: 100000)
        
    }


}

