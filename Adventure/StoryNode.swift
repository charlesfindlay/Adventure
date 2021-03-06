//
//  StoryNode.swift
//  Adventure
//
//  Created by Student on 10/12/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

class StoryNode {
    var storyText: String!
    var connections: [Connection]!
    var result: String?
    
    init () {
        
        self.storyText = ""
        self.connections = []
        self.result = ""
    }
    
    func promptCount() -> Int {
        return connections.count
    }
    
}
