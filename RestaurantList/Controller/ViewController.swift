//
//  ViewController.swift
//  RestaurantList
//
//  Created by Alice on 10/8/2019.
//  Copyright © 2019 Alice. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var restaurants = Restaurant.createMockData()
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = UIColor.white
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
        
    }
    
    //MARK:setUp
    func setUpTableView() {
        tableView.register(UINib(nibName: "RestaurantCell", bundle: nil), forCellReuseIdentifier: "RestaurantCellId")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
            ])
        
    }
    
    //MARK:tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCellId") as? RestaurantCell {
            cell.setCell(restaurant:restaurants[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
}

