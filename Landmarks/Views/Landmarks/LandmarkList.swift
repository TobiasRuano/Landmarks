//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tobias Ruano on 07/08/2022.
//

import SwiftUI

struct LandmarkList: View {

	@EnvironmentObject var modelData: ModelData
	@State var showFavoritesOnly = false

	var filteredLandmarks: [Landmark] {
		modelData.landmarks.filter { landmark in
			(!showFavoritesOnly || landmark.isFavorite)
		}
	}

    var body: some View {
		NavigationView {
			List {
				Toggle(isOn: $showFavoritesOnly) {
					Text("Favorites only")
				}

				ForEach(filteredLandmarks) { landmark in
					NavigationLink {
						LandmarkDetail(landmark: landmark)
					} label: {
						LandmarkRow(landmark: landmark)
					}
				}
			}
			.navigationTitle("Landmarks")
		}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
		LandmarkList()
			.environmentObject(ModelData())
    }
}
