//
//  home1.swift
//  Home
//
//  Created by Umidjon Mamatov on 12/03/22.
//
//
//import UIKit
//
//class Home1: UIViewController {
//
//    
//    let scrollView: UIScrollView = {
//        var scrollView = UIScrollView()
//        let screensize: CGRect = UIScreen.main.bounds
//        let screenWidth = screensize.width
//        let screenHeight = screensize.height
//        scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeight))
//        scrollView.contentSize = CGSize(width: screenWidth, height: 5000)
//        return scrollView
//    }()
//    
//    let homeView:UIView = {
//        let homeView = UIView()
//        return homeView
//    }()
//    
//    let imageView:UIView = {
//        let imageView = UIView()
//        imageView.translatesAutoresizingMaskIntoConstraints=false
//        imageView.backgroundColor=UIColor.white
//        return imageView
//    }()
//    
//    let image:UIImageView = {
//        let image = UIImageView()
//        image.image = UIImage(named: "basen_image")
//        image.translatesAutoresizingMaskIntoConstraints=false
//        return image
//    }()
//    var freebtn: UIButton = {
//        let freebtn = UIButton()
//        freebtn.translatesAutoresizingMaskIntoConstraints=false
//        freebtn.backgroundColor = UIColor(rgb:  0x27AE60)
//        freebtn.layer.cornerRadius = 8
//        freebtn.setTitle("Free", for: .normal)
//        return freebtn
//    }()
//    
//    var alertbtn: UIButton = {
//        let alertbtn = UIButton()
//        alertbtn.translatesAutoresizingMaskIntoConstraints=false
//        alertbtn.backgroundColor = UIColor(rgb: 0xFF8A00)
//        alertbtn.layer.cornerRadius = 8
//        alertbtn.setTitle("Recommended", for: .normal)
//        return alertbtn
//    }()
//    
//    var idbtn: UIButton = {
//        let idbtn = UIButton()
//        idbtn.translatesAutoresizingMaskIntoConstraints=false
//        idbtn.backgroundColor = UIColor(rgb: 0x969696)
//        idbtn.layer.cornerRadius = 8
//        idbtn.setTitle("id-23423", for: .normal)
//        return idbtn
//    }()
//    
//    var truebtn: UIButton = {
//        let truebtn = UIButton()
//        truebtn.translatesAutoresizingMaskIntoConstraints=false
//        truebtn.backgroundColor = UIColor(rgb: 0x969696)
//        truebtn.layer.cornerRadius = 8
//        truebtn.setTitle("1 to 8", for: .normal)
//        return truebtn
//    }()
//    
//    var
//    
//    
//    
//    
//
//     override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor=UIColor.white
//        let myRightImage = UIImage(named: "right_image")?.withRenderingMode(.alwaysOriginal)
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRightImage, style: .plain, target: self, action: #selector(addTapped))
//        
//        let myLeftImage = UIImage(named: "left_Icon")?.withRenderingMode(.alwaysOriginal)
//        navigationItem.leftBarButtonItem = UIBarButtonItem(image: myLeftImage, style: .plain, target: self, action: #selector(backToLeft))
//        settingAnchors()
//    }
//    
//    @objc func addTapped(){}
//    @objc func backToLeft(){
//        navigationController?.popViewController(animated: true)
//    }
//    }
//
//extension Home1{
//    func settingAnchors(){
//        view.addSubview(scrollView)
//        scrollView.frame = view.bounds
//        scrollView.addSubview(homeView)
//        homeView.frame = scrollView.bounds
//    
//        
//        homeView.addSubview(imageView)
//        imageView.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 10).isActive=true
//        imageView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 0).isActive=true
//        imageView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -0).isActive=true
//        imageView.centerXAnchor.constraint(equalTo: homeView.centerXAnchor).isActive=true
//        imageView.widthAnchor.constraint(equalToConstant: 100).isActive=true
//        imageView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*1).isActive=true
//        
//        imageView.addSubview(image)
//        image.topAnchor.constraint(equalTo: imageView.topAnchor,constant: 0).isActive=true
//        image.leftAnchor.constraint(equalTo: imageView.leftAnchor,constant: 0).isActive=true
//        image.rightAnchor.constraint(equalTo: imageView.rightAnchor,constant: -0).isActive=true
//        image.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive=true
//        image.heightAnchor.constraint(equalToConstant: 300).isActive=true
//        
//        imageView.addSubview(freebtn)
//        freebtn.centerYAnchor.constraint(equalTo: imageView.topAnchor,constant: 10).isActive=true
//        freebtn.leftAnchor.constraint(equalTo: imageView.leftAnchor,constant: 10).isActive=true
//        freebtn.rightAnchor.constraint(equalTo: imageView.rightAnchor,constant: -255).isActive=true
//        freebtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
//        
//        imageView.addSubview(alertbtn)
//        alertbtn.centerYAnchor.constraint(equalTo: image.bottomAnchor,constant: -40).isActive=true
//        alertbtn.leftAnchor.constraint(equalTo: imageView.leftAnchor,constant: 10).isActive=true
//        alertbtn.rightAnchor.constraint(equalTo: imageView.rightAnchor,constant: -230).isActive=true
//        alertbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
//        
//        imageView.addSubview(idbtn)
//        idbtn.centerYAnchor.constraint(equalTo: imageView.topAnchor,constant: 20).isActive=true
//        idbtn.leftAnchor.constraint(equalTo: imageView.leftAnchor,constant: 250).isActive=true
//        idbtn.rightAnchor.constraint(equalTo: imageView.rightAnchor,constant: -15).isActive=true
//        idbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
//        
//        imageView.addSubview(truebtn)
//        truebtn.rightAnchor.constraint(equalTo: imageView.rightAnchor,constant: -20).isActive=true
//        truebtn.centerYAnchor.constraint(equalTo: image.bottomAnchor, constant: -40).isActive=true
//        truebtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
//        truebtn.leftAnchor.constraint(equalTo: alertbtn.leftAnchor,constant: 270).isActive=true
//        
//    }
//}
