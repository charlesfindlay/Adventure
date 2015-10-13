//
//  Adventure.swift
//  Adventure
//
//  Created by Student on 10/12/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

class Adventure {
    
    var title: String!
    var start: StoryNode!
    var storyNodes: [String: StoryNode]!
    
    
    
    func createFirstAdventure() -> Adventure {
        let newAdventure = Adventure()
        newAdventure.title = "Amelia's Adventure"
        
        //Create Node 1
        let node1 = StoryNode()
        node1.storyText = "Ameila is one the beach one day when The Kraken bursts from the water and charges her. What does she do..."
        //Create node connections
        var connection11 = Connection()
        connection11.prompt = "She grabs her spear, turns with a roar, and charges to meet the vile beast"
        connection11.connectedToNode = "node2"
        var connection12 = Connection()
        connection12.prompt = "She drops everything, turns, and runs"
        connection12.connectedToNode = "node3"
        //Add connections to node
        node1.connections?.insert(connection11, atIndex: 0)
        node1.connections?.insert(connection12, atIndex: 1)
        //Add node to adventure
        print(node1.storyText)
        print(node1.connections?.count)
        //print(node1.connections
        //newAdventure.storyNodes["node1"] = node1
        
        
        
        newAdventure.start = node1
        return newAdventure
    }
    
    
    
    func createSecondAdventure() -> Adventure {
        let newAdventure = Adventure()
        newAdventure.title = "Joel's Haunting"
        
        return newAdventure
    }
}
