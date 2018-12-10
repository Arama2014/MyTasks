//
//  ViewController.swift
//  MyTasks
//
//  Created by arama brown on 11/29/18.
//  Copyright © 2018 arama brown. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

     let itemArray = ["read", "pray", "sleep", "dream"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        
        
        return itemArray.count
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
            cell.textLabel?.text = itemArray[indexPath.row]
      return cell
        
    }
    
    
    
 // override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
 //   if let cell = tableView.cellForRow(at: indexPath){
  //      cell.accessoryType = .none
  //  }
   // }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // if let cell = tableView.cellForRow(at: indexPath){
           // print(itemArray[indexPath.row])
        
        if   tableView.cellForRow(at:indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at:indexPath)?.accessoryType = .none
            
        }else {
            tableView.cellForRow(at:indexPath)?.accessoryType = .checkmark
        }
            tableView.deselectRow(at: indexPath, animated: true)
       // }
    }
    
}


