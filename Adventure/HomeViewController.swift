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
    
    
    @IBOutlet weak var adventureListTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let kraken = Adventure().createKrakenAdventure()
        adventures.append(kraken)
        
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
        
        return cell!
    }

}

