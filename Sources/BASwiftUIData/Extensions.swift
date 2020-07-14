//
//  File.swift
//  
//
//  Created by Bryan on 7/13/20.
//

import Foundation
import SwiftUI

public extension View {
    func safeOnDrag(data: @escaping () -> NSItemProvider) -> AnyView {
        if ProcessInfo().isOperatingSystemAtLeast(OperatingSystemVersion(majorVersion: 13, minorVersion: 4, patchVersion: 0)) {
            print("13.4+")

            if #available(iOS 13.4, *) {
                
                return AnyView(self
                .onDrag(data))
            }
            else {
                return AnyView(self)
            }
        }
        else {
            print("<13.4")
            return AnyView(self)
        }
    }
}

