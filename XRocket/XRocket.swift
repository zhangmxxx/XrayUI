//
//  Xray_UIApp.swift
//  Xray-UI
//
//  Created by Simenons 张 on 2024/2/19.
//

import SwiftUI
import Greeter
import XrayCore
import NetworkExtension
// can not simulate on device error?
// switch emb option to Do Not Embed help (do not know the meanings)
// 其实不用解析config,直接传给core

@main
struct XRocketApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
	// why overriding init here? check protocol App
	init() {
		EntryRunMain()
	}
}
