//  ViewController.swift
//  reordertableview
//  Created by mohamed on 5/9/18.
//  Copyright © 2018 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
var numbers=["one","two","three","four","five","six"]
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var editoutlet: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text=numbers[indexPath.row]
        return cell
    }
    //how to reorder cells
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = numbers[sourceIndexPath.row]
        numbers.remove(at: sourceIndexPath.row)
        numbers.insert(item, at: destinationIndexPath.row)
    }

    @IBAction func editaction(_ sender: Any) {
        tableview.isEditing = !tableview.isEditing
        switch tableview.isEditing {
        case true:
            editoutlet.title="done"
        case false:
            editoutlet.title="edit"
      
        
        }
    }
    
}

