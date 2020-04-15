//
//  TaskViewController.swift
//  labsAMO
//
//  Created by Viktory  on 17.02.2020.
//  Copyright © 2020 Viktory. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var labName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    

}
extension TaskViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if labName == "1" {
            return 3
        } else if labName == "2" {
            return 1
        } else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if labName == "1" {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "reuseID")
            let taskNames = ["Завдання 1", "Завдання 2", "Завдання 3"]
            cell.textLabel?.text = taskNames[indexPath.row]
            
            cell.accessoryType = .disclosureIndicator
            return cell
        } else if labName == "2" {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "reuseID")
            let taskNames = ["Порозрядне сортування"]
            cell.textLabel?.text = taskNames[indexPath.row]
            return cell
        } else {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "reuseID")
            let taskNames = ["Завдання 1", "Завдання 2", "Завдання 3", "Завдання 4"]
            cell.textLabel?.text = taskNames[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        if labName == "1" {
            if indexPath.row == 0 {
                guard let vc = mainStoryBoard.instantiateViewController(identifier: Lab1Task1ViewController.identifier) as? Lab1Task1ViewController else { return }
                self.navigationController?.pushViewController(vc, animated: true)
            } else if indexPath.row == 1 {
                guard let vc = mainStoryBoard.instantiateViewController(identifier: Lab1Task2ViewController.identifier) as? Lab1Task2ViewController else { return }
                self.navigationController?.pushViewController(vc, animated: true)
            } else if indexPath.row == 2{
                guard let vc = mainStoryBoard.instantiateViewController(identifier: Lab1Task3ViewController.identifier) as? Lab1Task3ViewController else { return }
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
            
            
        } else if labName == "2" {
                if indexPath.row == 0 {
                    guard let vc = mainStoryBoard.instantiateViewController(identifier: Lab2Task1ViewController.identifier) as? Lab2Task1ViewController else { return }
                    self.navigationController?.pushViewController(vc, animated: true)
                }
                
        
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
