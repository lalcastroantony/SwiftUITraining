//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Lal Castro on 29/03/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                           Spacer()
                           EditButton()
                       }
            if editMode?.wrappedValue == .inactive {
                           ProfileSummary(profile: modelData.profile)
                       } else {
                           Text("Profile Editor")
                       }
               }
               .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
                   .environmentObject(ModelData())    }
}
