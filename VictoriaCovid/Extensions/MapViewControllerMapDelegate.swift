//
//  MapViewController.swift
//  VictoriaCovid
//
//  Created by Naveenprabhu Arumugam on 3/8/20.
//  Copyright © 2020 Naveenprabhu Arumugam. All rights reserved.
//

import Foundation
import MapKit
extension MapViewController: MKMapViewDelegate{
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKPolygon {
            let polygonView = MKPolygonRenderer(overlay: overlay)
            polygonView.fillColor = UIColor(red: 0, green: 0, blue: 255, alpha: 0.5)
            polygonView.strokeColor = .red
            return polygonView
        }
        return MKPolygonRenderer()
    }

    
}
