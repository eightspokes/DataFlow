//
//  DataFlowApp.swift
//  DataFlow
//
//  Created by Roman on 10/17/22.
//

import SwiftUI

@main
struct DataFlowApp: App {
    var body: some Scene {
        WindowGroup {
            AccountView_Observing()
                .environmentObject(Profile_Observable())
        }
    }
}
