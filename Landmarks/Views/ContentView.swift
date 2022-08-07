//
//  ContentView.swift
//  Landmarks
//
//  Created by Tobias Ruano on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
			.environmentObject(ModelData())
    }
}
