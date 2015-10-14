//
//  HomeViewController.swift
//  Adventure
//
//  Created by Student on 10/12/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var adventures: [Adventure] = []
    var selectedAdventure = Adventure()
    
    
    @IBOutlet weak var adventureListTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let story1 = Adventure().createFirstAdventure()
        let story2 = Adventure().createSecondAdventure()
        adventures.append(story1)
        adventures.append(story2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adventures.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("adventureListCell")
        cell?.textLabel?.text = adventures[indexPath.row].title
        cell?.detailTextLabel?.text = adventures[indexPath.row].author
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedAdventure = adventures[indexPath.row]
        self.performSegueWithIdentifier("myAdventure", sender: indexPath.row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "myAdventure" {
            let vc = segue.destinationViewController as! AdventureViewController
            vc.currentAdventure = selectedAdventure
            vc.currentStoryNode = selectedAdventure.start
        }
    }

}

