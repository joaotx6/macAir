//
//  CategoryViewController.swift
//  Todoey
//
//  Created by Joao Teixeira on 17/11/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UITableViewController {

    var categoryArray = [Category]()
        
        
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "CategoryCell")
        
        let category = categoryArray[indexPath.row]
        
        cell.textLabel?.text = category.name
        
        // ternary operator:
        // value = condition ? valueIfTrue : valueIfFalse
//        cell.accessoryType = item.done == true ? .checkmark : .none
        //se for true faz .checkmark; caso contrário faz .none
        return cell
    }
    


    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {

        
    }
    
    
    //MARK: TableView Delegate Methods
    
    
    
    //MARK: DataManipulation Methods
}
