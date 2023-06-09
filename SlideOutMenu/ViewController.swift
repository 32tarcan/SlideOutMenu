//
//  ViewController.swift
//  SlideOutMenu
//
//  Created by Bahadır Tarcan on 2.06.2023.
//

import UIKit

class ViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .red
        setupNavigationItems()
        view.backgroundColor = .blue

    }
    
    @objc func handleOpen() {
        print("Opening menu...")
        
        let vc = MenuController()
//vc.view.backgroundColor = .blue
        
        
        vc.view.frame = CGRect(x: 0, y: 0, width: 300, height: self.view.frame.height)

        let mainWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        mainWindow?.addSubview(vc.view)
        
        
       
//view.addSubview(vc.view)
        
        
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
//        blueView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        view.addSubview(blueView)
       
        
    }
    
    @objc func handleHide() {
        print("Hiding menu...")
        
    }
    
    fileprivate func setupNavigationItems() {
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(handleOpen))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(handleHide))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        
        cell.textLabel?.text = "Row \(indexPath.row)"
        
        return cell
    }


}

