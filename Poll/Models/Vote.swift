//
//  Poll.swift
//  Poll
//
//  Created by Spencer Curtis on 7/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Vote {
    let name: String
    let response: String
    let timestamp: Date
    
    init(name: String, response: String, timestamp: Date = Date()) {
        self.name = name
        self.response = response
        self.timestamp = timestamp
    }
}
