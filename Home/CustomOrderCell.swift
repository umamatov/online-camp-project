//
//  CustomOrderCell.swift
//  Home
//
//  Created by Umidjon Mamatov on 09/03/22.
//
import UIKit

class CustomOrderCell: UITableViewCell{
    
    var image:UIImageView = {
        let image = UIImageView()
        image.layer.masksToBounds = false
        image.layer.cornerRadius=10
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image=UIImage(named: "home_imge")
        return image
    }()
    
    var manylabel: UILabel = {
        let manylabel = UILabel()
        manylabel.translatesAutoresizingMaskIntoConstraints=false
        manylabel.font = UIFont.systemFont(ofSize: 20)
        manylabel.textColor = UIColor.black
        manylabel.text = "from 6,000,000 soums"
        return manylabel
    }()
//
    var imagelabel: UIImageView = {
        let imagelabel = UIImageView()
        imagelabel.translatesAutoresizingMaskIntoConstraints=false
        imagelabel.layer.masksToBounds = false
        imagelabel.layer.cornerRadius=10
        imagelabel.image=UIImage(named: "favorites_image")
        return imagelabel
    }()
    var worklabel: UILabel = {
        let worklabel = UILabel()
        worklabel.translatesAutoresizingMaskIntoConstraints=false
        worklabel.font = UIFont.systemFont(ofSize: 16)
        worklabel.textColor = UIColor.black
        worklabel.text = "Elite dacha on Khadzhikent,"
        return worklabel
    }()
    
    var addlabel: UILabel = {
        let addlabel = UILabel()
        addlabel.translatesAutoresizingMaskIntoConstraints=false
        addlabel.font = UIFont.systemFont(ofSize: 16)
        addlabel.textColor = UIColor.black
        addlabel.text = "near the Mosque"
        return addlabel
    }()
    
    var maplabel: UILabel = {
        let maplabel = UILabel()
        maplabel.translatesAutoresizingMaskIntoConstraints=false
        maplabel.font = UIFont.systemFont(ofSize: 13)
        maplabel.textColor = UIColor.black
        maplabel.text = "Tashkent region, Bostanlyk district"
        return maplabel
    }()
    
    var freebtn: UIButton = {
        let freebtn = UIButton()
        freebtn.backgroundColor = UIColor(rgb: 0x27AE60)
        freebtn.translatesAutoresizingMaskIntoConstraints=false
        freebtn.layer.cornerRadius = 8
        freebtn.setTitle("Free", for: .normal)
        
        return freebtn
    }()
    
    var alertbtn: UIButton = {
        let alertbtn = UIButton()
        alertbtn.translatesAutoresizingMaskIntoConstraints=false
        alertbtn.backgroundColor = UIColor(rgb: 0xFF8A00)
        alertbtn.layer.cornerRadius = 8
        alertbtn.setTitle("Recommended", for: .normal)
        return alertbtn
    }()
    
    var iDbtn: UIButton = {
        let iDbtn = UIButton()
        iDbtn.translatesAutoresizingMaskIntoConstraints=false
        iDbtn.backgroundColor = UIColor(rgb: 0x969696)
        iDbtn.layer.cornerRadius = 8
        iDbtn.setTitle("id-23423", for: .normal)
        return iDbtn
    }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        contentView.addSubview(image)
        image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 1).isActive=true
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 1).isActive=true
        image.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant:-10).isActive=true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant:-120).isActive=true
        self.image.layer.masksToBounds = true
        self.image.layer.cornerRadius = 10

        
        contentView.addSubview(manylabel)
        manylabel.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 10).isActive=true
        manylabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 8).isActive=true
        manylabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: 8).isActive=true
        
        contentView.addSubview(imagelabel)
        imagelabel.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 10).isActive=true
        imagelabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
        
        
        contentView.addSubview(worklabel)
        worklabel.topAnchor.constraint(equalTo: manylabel.bottomAnchor,constant: 5).isActive=true
        worklabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 8).isActive=true
        
        
        contentView.addSubview(addlabel)
        addlabel.topAnchor.constraint(equalTo: worklabel.bottomAnchor,constant: 5).isActive=true
        addlabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 8).isActive=true
        
        contentView.addSubview(maplabel)
        maplabel.topAnchor.constraint(equalTo: addlabel.bottomAnchor,constant: 5).isActive=true
        maplabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 8).isActive=true
        
        contentView.addSubview(freebtn)
        freebtn.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        freebtn.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        freebtn.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -250).isActive=true
        freebtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
      
        contentView.addSubview(alertbtn)
        alertbtn.centerYAnchor.constraint(equalTo: image.bottomAnchor,constant:-40).isActive=true
        alertbtn.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        alertbtn.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -225).isActive=true
        alertbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        contentView.addSubview(iDbtn)
        iDbtn.centerYAnchor.constraint(equalTo: contentView.topAnchor,constant: 20).isActive=true
        iDbtn.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 250).isActive=true
        iDbtn.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant:-15).isActive=true
        iDbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
