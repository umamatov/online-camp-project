//
//  RegisterViewController.swift
//  Home
//
//  Created by Umidjon Mamatov on 11/03/22.
//

import UIKit


class Register: UIViewController {
   
    
    var namelabel: UILabel = {
        let namelabel = UILabel()
        namelabel.translatesAutoresizingMaskIntoConstraints=false
        namelabel.font = UIFont.systemFont(ofSize: 25)
        namelabel.textColor = UIColor.black
        namelabel.text = "To come in"
        return namelabel
    }()
    
    var phonelabel: UILabel = {
        let phonelabel = UILabel()
        phonelabel.translatesAutoresizingMaskIntoConstraints=false
        phonelabel.font = UIFont.systemFont(ofSize: 18)
        phonelabel.textColor = UIColor.black
        phonelabel.text = "Phone number"
        return phonelabel
    }()
    
    var phonenumber: UITextField = {
        let phonenumber = UITextField()
        phonenumber.backgroundColor = .white
        phonenumber.keyboardAppearance = .dark
        phonenumber.translatesAutoresizingMaskIntoConstraints=false
        phonenumber.keyboardType = .default
        phonenumber.textColor = UIColor.black
        phonenumber.font = UIFont.systemFont(ofSize: 20)
        phonenumber.layer.cornerRadius = 5
        phonenumber.layer.borderColor=UIColor.black.cgColor
        phonenumber.layer.borderWidth = 1
        return phonenumber
    }()
    var smslabel: UILabel = {
        let smslabel = UILabel()
        smslabel.translatesAutoresizingMaskIntoConstraints=false
        smslabel.font = UIFont.systemFont(ofSize: 18)
        smslabel.textColor = UIColor.black
        smslabel.text = "Code from SMS"
        return smslabel
    }()
    
    var smscode: UITextField = {
        let smscode = UITextField()
        smscode.backgroundColor = .white
        smscode.keyboardAppearance = .dark
        smscode.translatesAutoresizingMaskIntoConstraints=false
        smscode.keyboardType = .default
        smscode.textColor = UIColor.black
        smscode.font = UIFont.systemFont(ofSize: 20)
        smscode.layer.cornerRadius = 5
        smscode.layer.borderColor = UIColor.black.cgColor
        smscode.layer.borderWidth = 1
        return smscode
    }()
    
    var alertbtn: UIButton = {
        let alertbtn = UIButton()
        alertbtn.backgroundColor = UIColor(rgb: 0x04A6FB)
        alertbtn.translatesAutoresizingMaskIntoConstraints=false
        alertbtn.layer.cornerRadius = 25
        alertbtn.setTitle("To come in", for: .normal)
        return alertbtn
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white

        let myRightImage = UIImage(named: "settings")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRightImage, style: .plain, target: self, action: #selector(addTapped))
        
        let myLeftImage = UIImage(named: "left_Icon")?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: myLeftImage, style: .plain, target: self, action: #selector(backToLeft))


       setViewAnchors()
    }
    
    @objc func addTapped(){}
    @objc func backToLeft(){
        navigationController?.popViewController(animated: true)
    }
    
        func setViewAnchors(){
            self.view.addSubview(namelabel)
        
            
            namelabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 150).isActive=true
            namelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true

            view.addSubview(phonelabel)
            phonelabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor,constant: 20).isActive=true
            phonelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
            
            view.addSubview(phonenumber)
            phonenumber.topAnchor.constraint(equalTo: phonelabel.bottomAnchor,constant: 20).isActive=true
            phonenumber.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30).isActive=true
            phonenumber.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -30).isActive=true
            phonenumber.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
            phonenumber.heightAnchor.constraint(equalToConstant: 60).isActive=true
            
            view.addSubview(smslabel)
            smslabel.topAnchor.constraint(equalTo: phonenumber.bottomAnchor,constant: 10).isActive=true
            smslabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
            
            view.addSubview(smscode)
            smscode.topAnchor.constraint(equalTo: smslabel.bottomAnchor,constant: 10).isActive=true
            smscode.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30).isActive=true
            smscode.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -30).isActive=true
            smscode.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
            smscode.heightAnchor.constraint(equalToConstant: 60).isActive=true
            
            view.addSubview(alertbtn)
            alertbtn.topAnchor.constraint(equalTo: smscode.bottomAnchor,constant: 30).isActive=true
            alertbtn.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 80).isActive=true
            alertbtn.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -80).isActive=true
            alertbtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
            alertbtn.heightAnchor.constraint(equalToConstant: 50).isActive=true
            
        
            
    }

    }

