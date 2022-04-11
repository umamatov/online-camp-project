//
//  HomeElemants3.swift
//  Home
//
//  Created by Umidjon Mamatov on 13/03/22.
//

import UIKit

class HomeElemants3: UICollectionViewCell {

    
    var customView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.systemGray5
        view.layer.cornerRadius = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    

var qimage: UIImageView = {
    let qimage = UIImageView()
    qimage.translatesAutoresizingMaskIntoConstraints=false
    qimage.image = UIImage(named: "Ellipse_image")
    return qimage
}()

    
    static let indentifier = "collectioViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: indentifier,
                     bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .link
        
        
        contentView.addSubview(customView)
        customView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive=true
        customView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15).isActive=true
        customView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15).isActive=true
        customView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15).isActive=true
        customView.layer.cornerRadius=15
        
        contentView.addSubview(qimage)
        qimage.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 20).isActive=true
        qimage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 19).isActive=true
    }

}
