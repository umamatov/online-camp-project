//
//  Home3ViewController.swift
//  Home
//
//  Created by Umidjon Mamatov on 15/03/22.
//

import UIKit
import MapKit

class Home4ViewController: UIViewController {

    let mapView = MKMapView()
    
    let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeigth = screensize.height
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeigth))
        scrollView.contentSize = CGSize(width: screenWidth, height: 5000)
        return scrollView
    }()
    
    let homeView:UIView = {
        let homeView = UIView()
        return homeView
    }()
    
    
    let imageView:UIView = {
        let imageView = UIView()
        imageView.translatesAutoresizingMaskIntoConstraints=false
        imageView.backgroundColor=UIColor.white
        return imageView
    }()
    
    var textView: UIView = {
        let textView = UIView()
        textView.backgroundColor = UIColor(rgb: 0xC4C4C4)
        textView.translatesAutoresizingMaskIntoConstraints=false
        return textView
    }()
    
    var chidoView: UIView = {
        let chidoView = UIView()
        chidoView.backgroundColor = UIColor(rgb: 0xC4C4C4)
        chidoView.translatesAutoresizingMaskIntoConstraints=false
        return chidoView
    }()


    let image:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "basen_image")
        image.translatesAutoresizingMaskIntoConstraints=false
        return image
    }()
    
    var freebtn: UIButton = {
        let freebtn = UIButton()
        freebtn.translatesAutoresizingMaskIntoConstraints=false
        freebtn.layer.cornerRadius = 8
        freebtn.backgroundColor = UIColor(rgb: 0xEB5757)
        freebtn.setTitle("Busy until 03/12/20", for: .normal)
        return freebtn
    }()
    
    var idbtn: UIButton = {
        let idbtn = UIButton()
        idbtn.translatesAutoresizingMaskIntoConstraints=false
        idbtn.layer.cornerRadius = 8
        idbtn.backgroundColor = UIColor(rgb: 0x969696)
        idbtn.setTitle("id-23423", for: .normal)
        return idbtn
    }()
    
    var alertbtn: UIButton = {
        let alertbtn = UIButton()
        alertbtn.translatesAutoresizingMaskIntoConstraints=false
        alertbtn.backgroundColor = UIColor(rgb: 0x969696)
        alertbtn.layer.cornerRadius = 8
        alertbtn.setTitle("1 of 8", for: .normal)
        return alertbtn
    }()
    
    var worklabel: UILabel = {
        let worklabel = UILabel()
        worklabel.translatesAutoresizingMaskIntoConstraints=false
        worklabel.font = UIFont.systemFont(ofSize: 18)
        worklabel.textColor = UIColor.black
        worklabel.text = "Elite dacha on Khadzhikent,                                               near the Mosque"
        worklabel.numberOfLines = 2
        return worklabel
    }()
    
    var moneylabel: UILabel = {
        let moneylabel = UILabel()
        moneylabel.translatesAutoresizingMaskIntoConstraints=false
        moneylabel.font = UIFont.systemFont(ofSize: 30)
        moneylabel.textColor = UIColor.black
        moneylabel.text = "6 000 000 sum"
        return moneylabel
    }()
    
    var daylabel: UILabel = {
        let daylabel = UILabel()
        daylabel.translatesAutoresizingMaskIntoConstraints=false
        daylabel.font = UIFont.systemFont(ofSize: 14)
        daylabel.textColor = UIColor(rgb: 0xC4C4C4)
        daylabel.text = "In weekdays"
        return daylabel
    }()
    
    var manyelabel: UILabel = {
        let manyelabel = UILabel()
        manyelabel.translatesAutoresizingMaskIntoConstraints=false
        manyelabel.font = UIFont.systemFont(ofSize: 30)
        manyelabel.textColor = UIColor.black
        manyelabel.text = "7 000 000 sum"
        return manyelabel
    }()
    
    var weekendlabel: UILabel = {
        let weekendlabel = UILabel()
        weekendlabel.translatesAutoresizingMaskIntoConstraints=false
        weekendlabel.font = UIFont.systemFont(ofSize: 14)
        weekendlabel.textColor = UIColor(rgb: 0xC4C4C4)
        weekendlabel.text = "On the weekend"
        return weekendlabel
    }()
    
    var historybtn: UIButton = {
        let historybtn = UIButton ()
        historybtn.translatesAutoresizingMaskIntoConstraints=false
        historybtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        historybtn.layer.cornerRadius = 8
        historybtn.backgroundColor = UIColor(rgb: 0x27AE60)
        historybtn.setTitle("▼ -200 000", for: .normal)
        return historybtn
    }()
    
    var princelabel: UILabel = {
        let princelabel = UILabel()
        princelabel.translatesAutoresizingMaskIntoConstraints=false
        princelabel.font = UIFont.systemFont(ofSize: 18)
        princelabel.textColor = UIColor(rgb: 0x739FD9)
        princelabel.text = "Price history"
        return princelabel
    }()
    
    var linebtn: UIButton = {
        let linebtn = UIButton()
        linebtn.translatesAutoresizingMaskIntoConstraints=false
        linebtn.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return linebtn
    }()
    
    var  locationlabel: UILabel = {
        let locationlabel = UILabel()
        locationlabel.translatesAutoresizingMaskIntoConstraints=false
        locationlabel.font = UIFont.systemFont(ofSize: 25)
        locationlabel.textColor = UIColor(rgb: 0xC4C4C4)
        locationlabel.text = "Location"
        return locationlabel
    }()
    
    var maplabel: UILabel = {
        let maplabel = UILabel()
        maplabel.translatesAutoresizingMaskIntoConstraints=false
        maplabel.font = UIFont.systemFont(ofSize: 20)
        maplabel.textColor = UIColor.black
        maplabel.text = "Tashkent region, Bostanlyk district"
        return maplabel
    }()
    
    var rightimage: UIImageView = {
        let rightimage = UIImageView()
        rightimage.translatesAutoresizingMaskIntoConstraints=false
        rightimage.layer.masksToBounds = false
        rightimage.layer.cornerRadius = 10
        rightimage.image = UIImage(named: "love_image")
        return rightimage
    }()
    
    var bookbtn: UIButton = {
        let bookbtn = UIButton()
        bookbtn.translatesAutoresizingMaskIntoConstraints=false
        bookbtn.backgroundColor = UIColor(rgb: 0x739FD9)
        bookbtn.layer.cornerRadius = 20
        bookbtn.setTitle("Book", for: .normal)
        return bookbtn
    }()
    
    var lineview: UIView = {
        let linview = UIView()
        linview.translatesAutoresizingMaskIntoConstraints=false
        linview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return linview
    }()
    
    var cottagelabel: UILabel = {
        let cottagelabel = UILabel()
        cottagelabel.translatesAutoresizingMaskIntoConstraints=false
        cottagelabel.font = UIFont.systemFont(ofSize: 25)
        cottagelabel.textColor = UIColor(rgb: 0xC4C4C4)
        cottagelabel.text = "About the cottage"
        return cottagelabel
    }()
    
    var textlabel: UILabel = {
        let textlabel = UILabel()
        textlabel.translatesAutoresizingMaskIntoConstraints=false
        textlabel.textColor = UIColor(rgb: 0xC4C4C4)
        textlabel.layer.cornerRadius = 8
        textlabel.text = "In the Tashkent region, about 70 km from the capital, is Khodjikent, a village in the Bostanlyk district. The sun-warmed area gives a wide variety of vegetation, and the highest mountains and a reservoir create the purest air and a uniform climate"
        textlabel.numberOfLines = 10
        return textlabel
    }()
    
    var readlabel: UILabel = {
        let readlabel = UILabel()
        readlabel.translatesAutoresizingMaskIntoConstraints=false
        readlabel.font = UIFont.systemFont(ofSize: 18)
        readlabel.textColor = UIColor(rgb: 0x04A6FB)
        readlabel.text = "Read more"
        return readlabel
    }()
    
    var qimage: UIImageView = {
        let qimage = UIImageView()
        qimage.translatesAutoresizingMaskIntoConstraints=false
        qimage.image = UIImage(named: "Ellipse_image")
        return qimage
    }()
    
    var arealabel: UILabel = {
        let arealabel = UILabel()
        arealabel.translatesAutoresizingMaskIntoConstraints=false
        arealabel.font = UIFont.systemFont(ofSize: 20)
        arealabel.textColor = UIColor.black
        arealabel.text = "Area"
        return arealabel
    }()
    
    var mlabel: UILabel = {
        let mlabel = UILabel()
        mlabel.translatesAutoresizingMaskIntoConstraints=false
        mlabel.font = UIFont.systemFont(ofSize: 20)
        mlabel.textColor = UIColor.black
        mlabel.text = "120 M²"
        return mlabel
    }()
    
    var rimage: UIImageView = {
        let rimage = UIImageView()
        rimage.translatesAutoresizingMaskIntoConstraints=false
        rimage.image = UIImage(named: "Ellipse_image")
        return rimage
    }()
    
    
    var bedroomlabel: UILabel = {
        let bedroomlabel = UILabel()
        bedroomlabel.translatesAutoresizingMaskIntoConstraints=false
        bedroomlabel.font = UIFont.systemFont(ofSize: 18)
        bedroomlabel.textColor = UIColor.black
        bedroomlabel.text = "Number of bedrooms"
        return bedroomlabel
    }()
    
    var roomlabel: UILabel = {
        let roomlabel = UILabel()
        roomlabel.translatesAutoresizingMaskIntoConstraints=false
        roomlabel.font = UIFont.systemFont(ofSize: 18)
        roomlabel.textColor = UIColor.black
        roomlabel.text = "3"
        return roomlabel
    }()
    
    var elemantslabel: UILabel = {
        let elemantslabel = UILabel()
        elemantslabel.translatesAutoresizingMaskIntoConstraints=false
        elemantslabel.font = UIFont.systemFont(ofSize: 18)
        elemantslabel.textColor = UIColor.black
        elemantslabel.text = "⚪️Billiards ⚪️There is ⚪️Garage ⚪️3 Places ⚪️Hot water There is ⚪️Shower / bath There is ⚪️Winter pool There is ⚪️Internet There is ⚪️Air conditioner There is ⚪️Summer pool There is ⚪️Summer cuisine There is ⚪️Brazier There is ⚪️Toilet in the house There is ⚪️Sauna There is ⚪️Tapchan There is ⚪️Television There is ⚪️Fridge There is"
        elemantslabel.numberOfLines = 10
        return elemantslabel
    }()
    
    var lneview: UIView = {
        let lneview = UIView()
        lneview.translatesAutoresizingMaskIntoConstraints=false
        lneview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return lneview
    }()
    
    var rentlabel: UILabel = {
        let rentlabel = UILabel()
        rentlabel.translatesAutoresizingMaskIntoConstraints=false
        rentlabel.font = UIFont.systemFont(ofSize: 25)
        rentlabel.textColor = UIColor(rgb: 0xC4C4C4)
        rentlabel.text = "Rent"
        return rentlabel
    }()
    
    var nowlabel: UILabel = {
        let nowlabel = UILabel()
        nowlabel.translatesAutoresizingMaskIntoConstraints=false
        nowlabel.font = UIFont.systemFont(ofSize: 15)
        nowlabel.textColor = UIColor(rgb: 0xC4C4C4)
        nowlabel.text = "Now"
        return nowlabel
    }()
    
    var booklabel: UILabel = {
        let booklabel = UILabel()
        booklabel.translatesAutoresizingMaskIntoConstraints=false
        booklabel.font = UIFont.systemFont(ofSize: 15)
        booklabel.textColor = UIColor(rgb: 0xC4C4C4)
        booklabel.text = "Booking"
        return booklabel
    }()
    
    var busylabel: UILabel = {
        let busylabel = UILabel()
        busylabel.translatesAutoresizingMaskIntoConstraints=false
        busylabel.font = UIFont.systemFont(ofSize: 20)
        busylabel.textColor = UIColor(rgb: 0xEB5757)
        busylabel.text = "Busy"
        return busylabel
    }()
    
    var therelabel: UILabel = {
        let therelabel = UILabel()
        therelabel.translatesAutoresizingMaskIntoConstraints=false
        therelabel.font = UIFont.systemFont(ofSize: 20)
        therelabel.textColor = UIColor.black
        therelabel.text = "There is"
        return therelabel
    }()
    
    var clarifybtn: UIButton = {
        let clarifybtn = UIButton()
        clarifybtn.translatesAutoresizingMaskIntoConstraints=false
        clarifybtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        clarifybtn.backgroundColor = .white
        clarifybtn.setTitleColor(UIColor(rgb: 0x739FD9), for: .normal)
        clarifybtn.layer.borderColor = UIColor.blue .cgColor
        clarifybtn.setImage(UIImage(named: "calendar_image"), for: .normal)
        clarifybtn.setTitle("Clarify", for: .normal)
        clarifybtn.layer.cornerRadius = 15
        clarifybtn.layer.borderWidth=2
        clarifybtn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        clarifybtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        return clarifybtn
    }()
    
    var beforelabel: UILabel = {
        let beforelabel = UILabel ()
        beforelabel.translatesAutoresizingMaskIntoConstraints=false
        beforelabel.font = UIFont.systemFont(ofSize: 15)
        beforelabel.textColor = UIColor.black
        beforelabel.text = "Before 23.03.2022"
        return beforelabel
    }()
    
    var chizview: UIView = {
        let chizview = UIView()
        chizview.translatesAutoresizingMaskIntoConstraints=false
        chizview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return chizview
    }()
    
    
    var revlabel: UILabel = {
        let revlabel = UILabel()
        revlabel.translatesAutoresizingMaskIntoConstraints=false
        revlabel.font = UIFont.systemFont(ofSize: 20)
        revlabel.textColor = UIColor(rgb: 0xC4C4C4)
        revlabel.text = "Reviews"
        return revlabel
    }()
    
    var alllabel: UILabel = {
        let alllabel = UILabel()
        alllabel.translatesAutoresizingMaskIntoConstraints=false
        alllabel.font = UIFont.systemFont(ofSize: 18)
        alllabel.textColor = UIColor(rgb: 0x739FD9)
        alllabel.text = "All reviews"
        return alllabel
    }()
    
    var starlabel: UILabel = {
        let starlabel = UILabel()
        starlabel.translatesAutoresizingMaskIntoConstraints=false
        starlabel.font = UIFont.systemFont(ofSize: 20)
        starlabel.textColor = UIColor.black
        starlabel.text = "⭐️⭐️⭐️⭐️⭐︎   4.8"
        return starlabel
    }()
    
    var tttview: UIView = {
        let tttview = UIView()
        tttview.translatesAutoresizingMaskIntoConstraints=false
        tttview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        tttview.layer.cornerRadius = 8
        return tttview
    }()
    
    var toshlabel: UILabel = {
        let toshlabel = UILabel()
        toshlabel.translatesAutoresizingMaskIntoConstraints=false
        toshlabel.font = UIFont.systemFont(ofSize: 18)
        toshlabel.textColor = UIColor.black
        toshlabel.text = "In the Tashkent region, about 70 km from the capital, is Khodjikent, a village in the Bostanlyk district."
        return toshlabel
    }()
    
    var cizview: UIView = {
        let cizview = UIView()
        cizview.translatesAutoresizingMaskIntoConstraints=false
        cizview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return cizview
    }()
    
    var optionlabel: UILabel = {
        let optinlabel = UILabel()
        optinlabel.translatesAutoresizingMaskIntoConstraints=false
        optinlabel.font = UIFont.systemFont(ofSize: 25)
        optinlabel.textColor = UIColor(rgb: 0xC4C4C4)
        optinlabel.text = "Options nearby"
        return optinlabel
    }()
    
    var firstimage: UIImageView = {
        let firstimage = UIImageView()
        firstimage.translatesAutoresizingMaskIntoConstraints=false
        firstimage.layer.cornerRadius = 30
        firstimage.image = UIImage(named: "home_imge")
        firstimage.layer.masksToBounds = false
        return firstimage
    }()
    
    var frrebtn: UIButton = {
        let frrebtn = UIButton()
        frrebtn.translatesAutoresizingMaskIntoConstraints=false
        frrebtn.layer.cornerRadius = 8
        frrebtn.backgroundColor = UIColor(rgb: 0x27AE60)
        frrebtn.setTitle("Free", for: .normal)
        return frrebtn
    }()
    
    var allertbtn: UIButton = {
        let allertbtn = UIButton()
        allertbtn.translatesAutoresizingMaskIntoConstraints=false
        allertbtn.layer.cornerRadius = 8
        allertbtn.backgroundColor = UIColor(rgb: 0xFF8A00)
        allertbtn.setTitle("Recommended", for: .normal)
        return allertbtn
    }()
    
    var iidbtn: UIButton = {
        let iidbtn = UIButton()
        iidbtn.translatesAutoresizingMaskIntoConstraints=false
        iidbtn.layer.cornerRadius = 8
        iidbtn.backgroundColor = UIColor(rgb: 0x969696)
        iidbtn.setTitle("id-23423", for: .normal)
        return iidbtn
    }()
    
    var fromlabel: UILabel = {
        let fromlabel = UILabel()
        fromlabel.translatesAutoresizingMaskIntoConstraints=false
        fromlabel.font = UIFont.systemFont(ofSize: 25)
        fromlabel.textColor = UIColor.black
        fromlabel.text = "from 6,000,000 soums"
        return fromlabel
    }()
    
    var dachalabel: UILabel = {
        let dachalabel = UILabel()
        dachalabel.translatesAutoresizingMaskIntoConstraints=false
        dachalabel.font = UIFont.systemFont(ofSize: 18)
        dachalabel.textColor = UIColor.black
        dachalabel.numberOfLines = 2
        dachalabel.text = "Elite dacha on Khadzhikent,                                                      near the Mosque"
        return dachalabel
    }()
    
    var tashlabel: UILabel = {
        let tashlabel = UILabel()
        tashlabel.translatesAutoresizingMaskIntoConstraints=false
        tashlabel.font = UIFont.systemFont(ofSize: 15)
        tashlabel.textColor = UIColor(rgb: 0xC4C4C4)
        tashlabel.text = "Tashkent region, Bostanlyk district"
        return tashlabel
    }()
    
    var fuview: UIView = {
        let fuview = UIView()
        fuview.translatesAutoresizingMaskIntoConstraints=false
        fuview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return fuview
    }()
    
    var similarlabel: UILabel = {
        let similarlabel = UILabel()
        similarlabel.translatesAutoresizingMaskIntoConstraints=false
        similarlabel.font = UIFont.systemFont(ofSize: 25)
        similarlabel.textColor = UIColor(rgb: 0xC4C4C4)
        similarlabel.text = "Similar price"
        return similarlabel
    }()
    
    var secondimage: UIImageView = {
        let secondimage = UIImageView()
        secondimage.translatesAutoresizingMaskIntoConstraints=false
        secondimage.image = UIImage(named: "home_imge")
        secondimage.layer.masksToBounds = false
        secondimage.layer.cornerRadius = 30
        return secondimage
    }()
    
    var ffrebtn: UIButton = {
        let ffrebtn = UIButton()
        ffrebtn.translatesAutoresizingMaskIntoConstraints=false
        ffrebtn.layer.cornerRadius = 8
        ffrebtn.backgroundColor = UIColor(rgb: 0x27AE60)
        ffrebtn.setTitle("Free", for: .normal)
        return ffrebtn
    }()
    
    var recombtn: UIButton = {
        let recombtn = UIButton()
        recombtn.translatesAutoresizingMaskIntoConstraints=false
        recombtn.backgroundColor = UIColor(rgb: 0xFF8A00)
        recombtn.layer.cornerRadius = 8
        recombtn.setTitle("Recommended", for: .normal)
        return recombtn
    }()
    
    var iddbtn: UIButton = {
        let iddbtn = UIButton()
        iddbtn.translatesAutoresizingMaskIntoConstraints=false
        iddbtn.backgroundColor = UIColor(rgb: 0xC4C4C4)
        iddbtn.layer.cornerRadius = 8
        iddbtn.setTitle("id-23423", for: .normal)
        return iddbtn
    }()
    
    var soumlabel: UILabel = {
        let soumlabel = UILabel()
        soumlabel.translatesAutoresizingMaskIntoConstraints=false
        soumlabel.font = UIFont.systemFont(ofSize: 25)
        soumlabel.textColor = UIColor.black
        soumlabel.text = "from 6,000,000 soums"
        return soumlabel
    }()
    
    var mosquelabel: UILabel = {
        let mosquelabel = UILabel()
        mosquelabel.translatesAutoresizingMaskIntoConstraints=false
        mosquelabel.font = UIFont.systemFont(ofSize: 18)
        mosquelabel.textColor = UIColor.black
        mosquelabel.text =  "Elite dacha on Khadzhikent,                                                          near the Mosque"
        return mosquelabel
    }()
    
    var regionlabel: UILabel = {
        let regionlabel = UILabel()
        regionlabel.translatesAutoresizingMaskIntoConstraints=false
        regionlabel.font = UIFont.systemFont(ofSize: 15)
        regionlabel.textColor = UIColor(rgb: 0xC4C4C4)
        regionlabel.text = "Tashkent region, Bostanlyk district"
        return regionlabel
    }()
    
    var chizzview: UIView = {
        let chizzview = UIView()
        chizzview.translatesAutoresizingMaskIntoConstraints=false
        chizzview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return chizzview
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor=UIColor.white
        let myRightImage = UIImage(named: "right_image")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRightImage, style: .plain, target: self, action: #selector(addTapped))
        
        let myLeftImage = UIImage(named: "left_Icon")?.withRenderingMode(.alwaysOriginal)
         navigationItem.leftBarButtonItem = UIBarButtonItem(image: myLeftImage, style: .plain, target: self, action: #selector(backToLeft))
        
        
        view.addSubview(scrollView)
//        scrollView.frame = view.bounds
        scrollView.addSubview(homeView)
        homeView.frame = scrollView.bounds
        homeView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4).isActive=true

        
        settingAnchor()
        
        
    }
    
    
    
    @objc func addTapped(){}
    
    @objc func backToLeft(){
        navigationController?.popViewController(animated: true)
    }


}
    


  


