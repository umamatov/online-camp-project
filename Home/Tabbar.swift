//
//  Tabar.swift
//  Home
//
//  Created by Umidjon Mamatov on 09/03/22.
//

import Foundation
import UIKit

extension UIViewController{
   
    func navigationBar(){
//
//        let leftBtn = UIButton()
//        leftBtn.backgroundColor = .clear
//        leftBtn.setTitleColor(.blue, for: .normal)
//        leftBtn.setImage(UIImage(named: "menu"), for: .normal)
//        leftBtn.sizeToFit()
//
//        let rightBtn = UIButton()
//        rightBtn.translatesAutoresizingMaskIntoConstraints=false
//        rightBtn.backgroundColor = .clear
//        rightBtn.setTitle("", for: .normal)
//        rightBtn.setImage(UIImage(named: "bell"), for: .normal)
//        rightBtn.setTitleColor(.blue, for: .normal)
//        rightBtn.sizeToFit()
//
        let badgeCount = UILabel(frame: CGRect(x: 22, y: -05, width: 20, height: 20))
        badgeCount.layer.borderColor = UIColor.clear.cgColor
        badgeCount.layer.borderWidth = 2
        badgeCount.layer.cornerRadius = badgeCount.bounds.size.height / 2
        badgeCount.textAlignment = .center
        badgeCount.layer.masksToBounds = true
        badgeCount.textColor = .white
        badgeCount.font = badgeCount.font.withSize(12)
        badgeCount.backgroundColor = .red
        badgeCount.layer.borderWidth=2
        badgeCount.layer.borderColor=UIColor.white.cgColor
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor=UIColor.red
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance=appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
//
//        let leftBarBtn = UIBarButtonItem(customView: leftBtn)
//        navigationItem.leftBarButtonItem = leftBarBtn
//
//        let rightBarBtn = UIBarButtonItem(customView: rightBtn)
//        navigationItem.rightBarButtonItem = rightBarBtn
//        rightBtn.heightAnchor.constraint(equalToConstant: 40).isActive=true
//        rightBtn.widthAnchor.constraint(equalToConstant: 40).isActive=true
//        rightBtn.layer.cornerRadius=20
//        rightBtn.backgroundColor=UIColor.black
 //       rightBtn.addSubview(badgeCount)
    }

}
