//
//  SwiftPrinter.swift
//  Xray-UI
//
//  Created by Simenons 张 on 2024/2/20.
//

import UIKit
import Greeter

class SwiftPrinter: NSObject, GreeterPrinterProtocol {
	public func printSomething(_ s: String?) {
		let content = s ?? "empty"
		print("This just in:", content)
	}
}
