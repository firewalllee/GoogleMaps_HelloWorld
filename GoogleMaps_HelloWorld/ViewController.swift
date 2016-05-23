//
//  ViewController.swift
//  GoogleMaps_HelloWorld
//
//  Created by Lee Nguyen on 5/22/16.
//  Copyright © 2016 Lee Nguyen. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up coordinates map will show on screen.
        mapView.camera = GMSCameraPosition.cameraWithLatitude(10.8, longitude: 106.63, zoom: 7)
        
        // Build and return frame map view with location (0,0), and width and height of 0.
        let mapViewControl = GMSMapView.mapWithFrame(CGRectZero, camera: mapView.camera)
        
        // Set up a marker show "Hello, World!" when click on it.
        let marker = GMSMarker()
        marker.position = mapView.camera.target
        marker.snippet = "Hello, World!"
        marker.appearAnimation = kGMSMarkerAnimationPop
        marker.map = mapView
        
        mapView = mapViewControl
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

