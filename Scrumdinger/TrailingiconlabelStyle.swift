//
//  TrailingiconlabelStyle.swift
//  Scrumdinger
//
//  Created by Elibo on 6/9/24.
//

import SwiftUI

struct TrailingiconlabelStyle: LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self ==TrailingiconlabelStyle{
    static var trailingIcon:Self {Self()}
}
