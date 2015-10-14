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
    
    init() {
        self.title = ""
        self.storyNodes = [:]
    }
    
    
    
    func createFirstAdventure() -> Adventure {
        let newAdventure = Adventure()
        newAdventure.title = "Amelia's Adventure"
        
        //Create Node 1
        let node1 = StoryNode()
        node1.storyText = "Ameila is one the beach one day when The Kraken bursts from the water and attacks her. What does she do..."
        //Create node connections
        var connection11 = Connection()
        connection11.prompt = "She grabs her spear, turns with a roar, and charges the vile beast"
        connection11.connectedToNode = "node2"
        var connection12 = Connection()
        connection12.prompt = "She drops everything, turns, and runs"
        connection12.connectedToNode = "node3"
        //Add connections to node
        node1.connections?.insert(connection11, atIndex: 0)
        node1.connections?.insert(connection12, atIndex: 1)
        //Add node to adventure
        var myNodes = newAdventure.storyNodes
        myNodes["node1"] = node1
        
        
        //Create Node 2
        let node2 = StoryNode()
        node2.storyText = "The Kraken returns to the ocean satisified with its snack. Poor Amelia. She'll be remembered in song and ballad."
        //Create node result
        node2.result = "You Lose!"
        //Add node to adventure
        myNodes["node2"] = node2
        
        
        //Create Node 3
        let node3 = StoryNode()
        node3.storyText = "Ameila scrambles up a hill where she meets two great warriors of legend and their followers: Achilles and She-Ra. Who does she ask to be her champion?"
        //Create node connections
        var connection31 = Connection()
        connection31.prompt = "She-Ra: Princess of Power and ???"
        connection31.connectedToNode = "node4"
        var connection32 = Connection()
        connection32.prompt = "Achilles and his Myrmydons"
        connection32.connectedToNode = "node5"
        //Add connections to node
        node3.connections?.insert(connection31, atIndex: 0)
        node3.connections?.insert(connection32, atIndex: 1)
        //Add node to adventure
        myNodes["node3"] = node3
        
        
        
        
        
        
        newAdventure.start = node1
        return newAdventure
    }
    
    
    
    func createSecondAdventure() -> Adventure {
        let newAdventure = Adventure()
        newAdventure.title = "Joel's Haunting"
        
        return newAdventure
    }
}
