//
//  ThirdViewController.swift
//  TabTesting
//
//  Created by Arianna Moreno on 3/21/17.
//  Copyright © 2017 Arianna's Apps. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // These strings will be the data for the table view cells
    let blankGraphImages = [#imageLiteral(resourceName: "Daily Goal Blank"), #imageLiteral(resourceName: "StepLength Average Blank"), #imageLiteral(resourceName: "Hourly Average Blank")]
    let titles = ["Daily Goals", "Daily Average", "Hourly Average"]
    let cellReuseIdentifier = "reportCell"
    
    @IBOutlet weak var reportTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reportTableView.delegate = self
        reportTableView.dataSource = self
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titles.count
    }

    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cell = reportTableView.dequeueReusableCell(withIdentifier: "reportCell", for: indexPath) as! CustomCell
        cell.clickButton.tag = indexPath.row
       // cell.clickButton.addTarget(self, #selector(clickButton(sender:)), for: UIControlEvents.touchUpInside)
        
        cell.graphImageView.image = blankGraphImages[indexPath.row]
        cell.clickButton.setTitle("Load \(titles[indexPath.row])", for: .normal)
      //  cell.clickButton.setTitle(titles[indexPath.row], for: .highlighted)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .clear
    }

}
