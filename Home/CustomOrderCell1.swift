//
//  CustomOrderCell1.swift
//  Home
//
//  Created by Umidjon Mamatov on 10/03/22.
//

import UIKit

class CustomOrderCell1: UITableViewCell{

    
    var image:UIImageView = {
        let image = UIImageView()
        image.layer.masksToBounds = false
        image.layer.cornerRadius=10
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image=UIImage(named: "home_imge")
        return image
    }()
    
    var numberlabel: UILabel = {
        let numberlabel = UILabel()
        numberlabel.translatesAutoresizingMaskIntoConstraints=false
        numberlabel.font = UIFont.systemFont(ofSize: 22)
        numberlabel.textColor = UIColor.black
        numberlabel.text = "from 6,000,000 soums"
        return numberlabel
    }()
    
    var imagelabel: UIImageView = {
        let imagelabel = UIImageView()
        imagelabel.translatesAutoresizingMaskIntoConstraints=false
        imagelabel.layer.masksToBounds = false
        imagelabel.layer.cornerRadius = 10
        imagelabel.image=UIImage(named: "love_image")
        return imagelabel
    }()
    
    var wolflabel: UILabel = {
        let wolflabel = UILabel()
        wolflabel.translatesAutoresizingMaskIntoConstraints=false
        wolflabel.font = UIFont.systemFont(ofSize: 17)
        wolflabel.textColor = UIColor.black
        wolflabel.text = "Elite dacha on Khadzhikent"
        return wolflabel
    }()
    
    var addlabel: UILabel = {
        let addlabel = UILabel()
        addlabel.translatesAutoresizingMaskIntoConstraints=false
        addlabel.font = UIFont.systemFont(ofSize: 17)
        addlabel.textColor = UIColor.black
        addlabel.text = "near the Mosque"
        return addlabel
    }()
    
    var maplabel: UILabel = {
        let maplabel = UILabel()
        maplabel.translatesAutoresizingMaskIntoConstraints=false
        maplabel.font = UIFont.systemFont(ofSize: 15)
        maplabel.textColor = UIColor.black
        maplabel.text = "Tashkent region, Bostanlyk district"
        return maplabel
    }()
    
    var freebtn: UIButton = {
        let frebtn = UIButton()
        frebtn.translatesAutoresizingMaskIntoConstraints=false
        frebtn.backgroundColor = UIColor(rgb: 0x27AE60)
        frebtn.layer.cornerRadius = 8
        frebtn.setTitle("Free", for: .normal)
        return frebtn
    }()
    
    var aleertbtn: UIButton = {
        let aleertbtn = UIButton()
        aleertbtn.translatesAutoresizingMaskIntoConstraints=false
        aleertbtn.backgroundColor = UIColor(rgb: 0xFF8A00)
        aleertbtn.layer.cornerRadius = 8
        aleertbtn.setTitle("Recommended", for: .normal)
        return aleertbtn
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

        contentView.addSubview(numberlabel)
        numberlabel.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 5).isActive=true
        numberlabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 8).isActive=true
        numberlabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: 8).isActive=true
    
        contentView.addSubview(imagelabel)
        imagelabel.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 10).isActive=true
        imagelabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
        
        contentView.addSubview(wolflabel)
        wolflabel.topAnchor.constraint(equalTo: numberlabel.bottomAnchor,constant: 2).isActive=true
        wolflabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 8).isActive=true
        
        contentView.addSubview(addlabel)
        addlabel.topAnchor.constraint(equalTo: wolflabel.bottomAnchor,constant: 2).isActive=true
        addlabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 8).isActive=true
        
        contentView.addSubview(maplabel)
        maplabel.topAnchor.constraint(equalTo: addlabel.bottomAnchor,constant: 5).isActive=true
        maplabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 8).isActive=true
    
        contentView.addSubview(freebtn)
        freebtn.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        freebtn.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        freebtn.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -250).isActive=true
        freebtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        contentView.addSubview(aleertbtn)
        aleertbtn.centerYAnchor.constraint(equalTo: image.bottomAnchor,constant:-40).isActive=true
        aleertbtn.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        aleertbtn.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -225).isActive=true
        aleertbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        contentView.addSubview(iDbtn)
        iDbtn.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 15).isActive=true
        iDbtn.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 250).isActive=true
        iDbtn.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -15).isActive=true
        iDbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        
    
    
}
   required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
   }

}
