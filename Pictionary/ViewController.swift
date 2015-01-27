//
//  ViewController.swift
//  Pictionary
//
//  Created by Tong Li on 27/01/2015.
//  Copyright (c) 2015 Tong Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        // This is for resigning first responder when click on empty area on the screen
        self.view.endEditing(true)
    }


    /*
        Functions for UISearchBarDelegate
    */
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        println("Text changed to \(searchText)")
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        println("Search button clicked and resign first responder")
        
        searchBar.resignFirstResponder()
    }
    
    /*
        Functions for UITableViewDataSource
    */
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = "test cell"
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    /*
        Functions for UITableViewDataDelegate
    */
}

