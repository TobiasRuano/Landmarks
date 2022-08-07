//
//  Landmark.swift
//  Landmarks
//
//  Created by Tobias Ruano on 07/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
	var id: Int
	var name: String
	var park: String
	var state: String
	var description: String

	private var imageName: String
	var image: Image {
		Image(imageName)
	}

	private var coordinates: Coordinates
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordinates.latitude,
			longitude: coordinates.longitude)
	}

	struct Coordinates: Hashable, Codable {
		var longitude: Double
		var latitude: Double
	}
}