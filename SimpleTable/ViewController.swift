//
//  ViewController.swift
//  SimpleTable
//
//  Created by Xiulan Shi on 1/21/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return restaurantNames.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        // dequeueReusableCellWithIdentifier method is used to retrieving a reusable table cell from the queue with the specified cell identifier
        // Configure the cell...
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: "restaurant")
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/*
You want your table-based app to be fast and responsive even when handling thousands of rows of data. If you allocate a new cell for each row of data instead of reusing one, your app will use excess memory and may result in a sluggish performance when user scrolls the table view. Remember every cell allocation has a performance cost, especially when the allocation happens over a short period of time.
The screen real estate of iPhone is limited. Even if your app needs to display 1,000 records, the screen may only be able to fit 10 table cells at most. Therefore, why on earth would the app allocate a thousand table view cells instead of creating 10 table cells and reuse them? This would save tons of memory and make table view work more efficiently. For performance reasons, you should reuse table view cells instead of creating new ones.
*/

