//
//  AdventureViewController.swift
//  Adventure
//
//  Created by Student on 10/13/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class AdventureViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var storyDisplayArea: UILabel!
    @IBOutlet weak var promptTable: UITableView!
    @IBOutlet weak var restartButtonOutlet: UIButton!
    
    var currentAdventure: Adventure!
    var currentStoryNode: StoryNode!
    
    
    override func viewDidLoad() {
        storyDisplayArea.text = currentStoryNode.storyText
        restartButtonOutlet.hidden = currentStoryNode.promptCount() > 0
        
    }
    
    @IBAction func restartStory(sender: AnyObject) {
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentStoryNode.connections!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("promptCell") as UITableViewCell!
        
        
        cell.textLabel!.text = currentStoryNode.connections![indexPath.row].prompt
        cell.textLabel!.numberOfLines = 0
        
        return cell!
    }
    
}
