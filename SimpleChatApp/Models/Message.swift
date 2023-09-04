//
//  Message.swift
//  SimpleChatApp
//
//  Created by Maliks.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
