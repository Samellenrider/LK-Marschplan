//
//  SamstagViewController.swift
//  LK Marschplan
//
//  Created by Sam Ellenrieder on 25/04/2019.
//  Copyright © 2019 Sam. All rights reserved.
//

import UIKit

class SamstagViewController: UITableViewController {

    var tableData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Adressen", ofType: "plist")!
        let dict = NSDictionary(contentsOfFile: path)
        
        tableData = dict!.object(forKey: "Samstag") as! [String]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return tableData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        
        // Configure the cell...
        cell.textLabel!.text = tableData[indexPath.row]
        
        return cell
    }
}
