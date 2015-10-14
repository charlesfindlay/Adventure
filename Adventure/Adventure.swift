//
//  Adventure.swift
//  Adventure
//
//  Created by Student on 10/12/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class Adventure {
    
    var title: String!
    var start: StoryNode!
    var storyNodes: [String: StoryNode]!
    var author: String
    var picture: UIImage!
    
    init() {
        self.title = ""
        self.storyNodes = [:]
        self.author = "by Charles Findlay"
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
        newAdventure.storyNodes["node1"] = node1
        
        
        //Create Node 2
        let node2 = StoryNode()
        node2.storyText = "The Kraken returns to the ocean satisified with its snack. Poor Amelia. She'll be remembered in song and ballad."
        //Create node result
        node2.result = "You Lose!"
        //Add node to adventure
        newAdventure.storyNodes["node2"] = node2
        
        
        //Create Node 3
        let node3 = StoryNode()
        node3.storyText = "Ameila scrambles up a hill where she meets two great warriors of legend: Achilles and She-Ra. Who becomes her champion?"
        //Create node connections
        var connection31 = Connection()
        connection31.prompt = "She-Ra: Princess of Power and ???"
        connection31.connectedToNode = "node4"
        var connection32 = Connection()
        connection32.prompt = "Achilles and his Myrmidons"
        connection32.connectedToNode = "node5"
        //Add connections to node
        node3.connections?.insert(connection31, atIndex: 0)
        node3.connections?.insert(connection32, atIndex: 1)
        //Add node to adventure
        newAdventure.storyNodes["node3"] = node3
        
        
        //Create Node 4
        let node4 = StoryNode()
        node4.storyText = "Kowl distracts the Kraken while She-Ra slices off a leg. Kraken limps back to the ocean defeated."
        //Create node result
        node4.result = "You Win!"
        //Add node to adventure
        newAdventure.storyNodes["node4"] = node4
        
        
        //Create Node 5
        let node5 = StoryNode()
        node5.storyText = "The Kraken stomps Achilles and eats his Myrmidons for dinner. Meanwhile, Hector lives a long life as King of Troy."
        //Create node result
        node5.result = "You Lose!"
        //Add node to adventure
        newAdventure.storyNodes["node5"] = node5
        
        
        
        newAdventure.start = node1
        return newAdventure
    }
    
    
    
    func createSecondAdventure() -> Adventure {
        let newAdventure = Adventure()
        newAdventure.title = "Joel's Haunting"
        
        
        //Create Node 1
        let node1 = StoryNode()
        node1.storyText = "Joel walks in the Lotus Casino and sees Lionel Ritchie. What does he do?"
        //Create node connections
        var connection11 = Connection()
        connection11.prompt = "He turns to leave"
        connection11.connectedToNode = "node2"
        var connection12 = Connection()
        connection12.prompt = "He goes up to talk to Lionel"
        connection12.connectedToNode = "node3"
        //Add connections to node
        node1.connections?.insert(connection11, atIndex: 0)
        node1.connections?.insert(connection12, atIndex: 1)
        //Add node to adventure
        newAdventure.storyNodes["node1"] = node1
        
        
        //Create Node 2
        let node2 = StoryNode()
        node2.storyText = "Joel wanders the casino forever looking for an exit. You Lose."
        //Create node result
        node2.result = "You Lose!"
        //Add node to adventure
        newAdventure.storyNodes["node2"] = node2
        
        
        //Create Node 3
        let node3 = StoryNode()
        node3.storyText = "Lionel holds out his cell phone. Hey, take a look at these Justin Bieber photos on my phone. He's amazing"
        //Create node connections
        var connection31 = Connection()
        connection31.prompt = "You're a Belieber, stay and look at the photos"
        connection31.connectedToNode = "node4"
        var connection32 = Connection()
        connection32.prompt = "Turn and walk away"
        connection32.connectedToNode = "node2"
        //Add connections to node
        node3.connections?.insert(connection31, atIndex: 0)
        node3.connections?.insert(connection32, atIndex: 1)
        //Add node to adventure
        newAdventure.storyNodes["node3"] = node3
        
        
        //Create Node 4
        let node4 = StoryNode()
        node4.storyText = "Joel spends the next 100 years looking at Bieber photos before Lionel switches to photos of Lindsay Lohan. You Lose."
        //Create node result
        node4.result = "You Lose!"
        //Add node to adventure
        newAdventure.storyNodes["node4"] = node4
        
        
        newAdventure.start = node1
        return newAdventure
    }
}
