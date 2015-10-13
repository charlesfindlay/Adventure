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
        
        return newAdventure
    }
    
    
    
    func createSecondAdventure() -> Adventure {
        let newAdventure = Adventure()
        newAdventure.title = "Joy's Journey"
        
        return newAdventure
    }
}
