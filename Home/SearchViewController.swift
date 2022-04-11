//
//  SearchViewController.swift
//  Home
//
//  Created by Umidjon Mamatov on 09/03/22.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView: UITableView = {
        let table = UITableView()
        table.register(CustomOrderCell.self,
                       forCellReuseIdentifier: "cell")
        return table
    }()
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(rgb: 0xffEEF0F5)
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        view.addSubview(tableView)
        tableView.frame = view.bounds
        
        tableView.separatorColor = .clear
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 50, right: 0)
        

    }
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! CustomOrderCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height/2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller =  Home2ViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}



    
    



