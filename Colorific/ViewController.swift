//
//  ViewController.swift
//  Colorific
//
//  Created by Mirko Cukich on 9/7/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var tableView: UITableView!
    
    // used with passing color to next view controller
    var selectedColor : UIColor?
    
    // array of colors displayed
    // pink added custom color
    let colors : [UIColor] = [UIColor.redColor(), UIColor.blueColor(),UIColor.greenColor(),UIColor.purpleColor(), UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1.0),UIColor.yellowColor()]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    // reloads table color data so it doesn't stay selected when coming back from full screen color view
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // how many rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count // auto adds number of rows of color
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // make a cell to put in table view
        let cell = UITableViewCell()
        cell.backgroundColor = self.colors[indexPath.row]
        
        return cell
    }
    
    // for segue to color screen
    // this one below was deselect and the firt chosen wouldnt work but all the rest after did
//    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
//        // debuging
//        print("Table Row Selected")
//        
//        self.performSegueWithIdentifier("toColorScreen", sender: self)
//    }
    
    // this one works for selecting the color then to the next screen
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // debuging
        //print("Table Row Selected")
        
        self.selectedColor = self.colors[indexPath.row]
        
        self.performSegueWithIdentifier("toColorScreen", sender: self)

    }
    
    // passing the color to the next view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toColorScreen" {
            segue.destinationViewController.view.backgroundColor = self.selectedColor
        }
    }

}

