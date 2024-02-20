//
//  Xray_UIApp.swift
//  Xray-UI
//
//  Created by Simenons 张 on 2024/2/19.
//

import SwiftUI
import Greeter 
// can not simulate on device error?
// switch emb option to Do Not Embed help (do not know the meanings)

@main
struct Xray_UIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
	// why init here? check protocol App
	init() {
		// print(1)
		let printer = SwiftPrinter()
		let greeter = GreeterNewGreeter(printer)
		if let _ = greeter {
			greeter?.greet("Lumix")
		}
		else {
			print("init greeter failed!")
		}
	}
}
