//
//  VpnSetup.swift
//  Xray-UI
//
//  Created by Simenons 张 on 2024/2/22.
//

// func {lambda} : func has 1 arg, lambda is taken as the only arg

// https://developer.apple.com/documentation/networkextension/routing_your_vpn_network_traffic
// Do not need to implement another vpn protocol here
// but the problem is how to implement the server in XRocket

import Foundation
import NetworkExtension

func setupVPN() {
	let vpnManager = NEVPNManager.shared()
	// loadFromPreferences is stopped due to lack of capability(even won't call the handler)
	// however network extension capability can't be accessed by personal team.
	// cnm
	vpnManager.loadFromPreferences { (error) in
		print("sb")
	}
	vpnManager.loadFromPreferences { (error) in
		if let error = error {
			print("Failed to load VPN preferences: \(error.localizedDescription)")
			return
		}
		else {
			print("sb")
		}
		
		let vpnProtocol = NEVPNProtocolIKEv2()
		vpnProtocol.username = "your_username"
		// vpnProtocol.passwordReference = try! KeychainPasswordItem(service: "VPN", account: "your_username").readPassword()
		vpnProtocol.serverAddress = "127.0.0.1"
		vpnProtocol.authenticationMethod = .none
		
		vpnManager.protocolConfiguration = vpnProtocol
		vpnManager.localizedDescription = "Your VPN"
		vpnManager.isEnabled = true
		
		vpnManager.saveToPreferences { (error) in
			if let error = error {
				print("Failed to save VPN preferences: \(error.localizedDescription)")
				return
			}
			
			do {
				try vpnManager.connection.startVPNTunnel()
				print("VPN connection started successfully.")
			} catch {
				print("Failed to start VPN connection: \(error.localizedDescription)")
			}
		}
	}
}
