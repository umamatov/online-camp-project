//
//  ProfileViewController.swift
//  Home
//
//  Created by Umidjon Mamatov on 09/03/22.
//

import UIKit

class ProfileViewController: UIViewController {
    

    
    let nameLbl: UILabel = {
        let nameLbl = UILabel()
        nameLbl.translatesAutoresizingMaskIntoConstraints=false
        nameLbl.font = UIFont.systemFont(ofSize: 25)
        nameLbl.textColor = UIColor.black
        nameLbl.text = "To come in"
        return nameLbl
    }()
    
    var phonelabel: UILabel = {
        let phonelabel = UILabel()
        phonelabel.translatesAutoresizingMaskIntoConstraints=false
        phonelabel.font = UIFont.systemFont(ofSize: 18)
        phonelabel.textColor = UIColor.black
        phonelabel.text = "Phone number"
        return phonelabel
    }()
    
    var text: UITextField = {
        let text = UITextField()
        text.backgroundColor = .white
        text.keyboardAppearance = .dark
        text.translatesAutoresizingMaskIntoConstraints=false
        text.keyboardType = .default
        text.textColor = UIColor.black
        text.font = UIFont.systemFont(ofSize: 20)
        text.layer.cornerRadius = 5
        text.layer.borderColor = UIColor.black.cgColor
        text.layer.borderWidth=1.0
        return text
    }()
    
    var alertbtn: UIButton = {
        let alertbtn = UIButton()
        alertbtn.backgroundColor = UIColor(rgb: 0x04A6FB)
        alertbtn.translatesAutoresizingMaskIntoConstraints=false
        alertbtn.layer.cornerRadius = 25
        alertbtn.setTitle("Further", for: .normal)
        return alertbtn
    }()
    
    var acountlabel: UILabel = {
        let acountlabel = UILabel()
        acountlabel.translatesAutoresizingMaskIntoConstraints=false
        acountlabel.font = UIFont.systemFont(ofSize: 18)
        acountlabel.textColor = UIColor.black
        acountlabel.text = "No account yet"
        return acountlabel
    }()
    
    var tuptxt: UITextField = {
        let tuptxt = UITextField()
        tuptxt.backgroundColor = .white
        tuptxt.translatesAutoresizingMaskIntoConstraints=false
        tuptxt.textColor = UIColor(rgb: 0x739FD9)
        tuptxt.font = UIFont.systemFont(ofSize: 20)
        tuptxt.text = "Register"
        return tuptxt
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.white
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white

        setViewAnchors()

    }
    
    @objc func pushshingRegisterPage(){
        let controller = Register()
        navigationController?.pushViewController(controller, animated: true)
    }

    func setViewAnchors(){
        self.view.addSubview(nameLbl)
        
        
        nameLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive=true
        nameLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        
        view.addSubview(phonelabel)
        phonelabel.topAnchor.constraint(equalTo: nameLbl.bottomAnchor,constant: 20).isActive=true
        phonelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        
        view.addSubview(text)
        text.topAnchor.constraint(equalTo: phonelabel.bottomAnchor,constant: 20).isActive=true
        text.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30).isActive=true
        text.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -30).isActive=true
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        text.heightAnchor.constraint(equalToConstant: 60).isActive=true
        
        view.addSubview(alertbtn)
        alertbtn.topAnchor.constraint(equalTo: text.bottomAnchor,constant: 30).isActive=true
        alertbtn.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 80).isActive=true
        alertbtn.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -80).isActive=true
        alertbtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        alertbtn.heightAnchor.constraint(equalToConstant: 50).isActive=true
        alertbtn.addTarget(self, action: #selector(pushshingRegisterPage), for: .touchUpInside)
        
        view.addSubview(acountlabel)
        acountlabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive=true
        acountlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        

        view.addSubview(tuptxt)
        tuptxt.topAnchor.constraint(equalTo: acountlabel.bottomAnchor, constant: 20).isActive=true
        tuptxt.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        
        
}

}





