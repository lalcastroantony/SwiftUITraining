//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Lal Castro on 29/03/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                                   .resizable()
                                   .scaledToFill()
                                   .frame(height: 200)
                                   .clipped()
                                   .listRowInsets(EdgeInsets())

                            ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                                CategoryRow(categoryName: key, items: modelData.categories[key]!)
                            }
                            .listRowInsets(EdgeInsets())
                        }
            .listStyle(.inset)
                .navigationTitle("Featured")
                .toolbar {
                               Button {
                                   showingProfile.toggle()
                               } label: {
                                   Label("User Profile", systemImage: "person.crop.circle")
                               }
                           }
                           .sheet(isPresented: $showingProfile) {
                               ProfileHost()
                                   .environmentObject(modelData)
                           }
               }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
