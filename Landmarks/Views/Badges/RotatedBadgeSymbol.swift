//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Lal Castro on 29/03/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol()
                   .padding(-60)
                   .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
