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
        
    // usar como CRUD create, read, update & destroy data
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell =  tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        //cell.textLabel?.text = categoryArray[indexPath.row].name
    
        return cell
    }
    
    
    //MARK: DataManipulation Methods
    
    //saveData & loadData
    
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        //setup deste botao pra add newCategories
        let alert = UIAlertController(title: "Add new category", message: "", preferredStyle: .alert)
        
        var textField = UITextField()
        
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            
            let newCategory = Category(context: self.context)
            newCategory
            
        }
        
        alert.addAction(action)
        
        alert.addTextField { (field) in
            field.placeholder = "Add new category"
            textField = textField
        }
        
        present(alert, animated: true, completion: nil )
    }
    
    //MARK: TableView Delegate Methods

    //standBy
}
