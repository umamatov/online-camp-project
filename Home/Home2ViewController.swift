//
//  Home2ViewController.swift
//  Home
//
//  Created by Umidjon Mamatov on 12/03/22.
//

import UIKit
import MapKit
class Home2ViewController: UIViewController {

    private var collectionView: UICollectionView?
    
    
    
    
    let mapView = MKMapView()
    
        let scrollView: UIScrollView = {
            var scrollView = UIScrollView()
            let screensize: CGRect = UIScreen.main.bounds
            let screenWidth = screensize.width
            let screenHeight = screensize.height
            scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeight))
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
        freebtn.backgroundColor = UIColor(rgb:  0x27AE60)
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
    
    var idbtn: UIButton = {
        let idbtn = UIButton()
        idbtn.translatesAutoresizingMaskIntoConstraints=false
        idbtn.backgroundColor = UIColor(rgb: 0x969696)
        idbtn.layer.cornerRadius = 8
        idbtn.setTitle("id-23423", for: .normal)
        return idbtn
    }()
    
    var trruebtn: UIButton = {
        let trruebtn = UIButton()
        trruebtn.translatesAutoresizingMaskIntoConstraints=false
        trruebtn.backgroundColor = UIColor(rgb: 0x969696)
        trruebtn.layer.cornerRadius = 8
        trruebtn.setTitle("1 to 8", for: .normal)
        return trruebtn
    }()
    
    var worklabel: UILabel = {
        let worklabel = UILabel()
        worklabel.translatesAutoresizingMaskIntoConstraints=false
        worklabel.backgroundColor = .clear
        worklabel.layer.cornerRadius = 8
        worklabel.textColor = .black
        worklabel.text="Elite dacha on Khadzhikent,                               near the Mosque"
        worklabel.numberOfLines=2
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
        daylabel.textColor = UIColor.black
        daylabel.text = "In weekdays"
        return daylabel
    }()
    
    var maneylabel: UILabel = {
        let maneylabel = UILabel()
        maneylabel.translatesAutoresizingMaskIntoConstraints=false
        maneylabel.font = UIFont.systemFont(ofSize: 30)
        maneylabel.textColor = UIColor.black
        maneylabel.text = "7 000 000 sum"
        return maneylabel
    }()
    
    var weekendlabel: UILabel = {
        let weekendlabel = UILabel()
        weekendlabel.translatesAutoresizingMaskIntoConstraints=false
        weekendlabel.font = UIFont.systemFont(ofSize: 14)
        weekendlabel.textColor = UIColor.black
        weekendlabel.text = "On the weekend"
        return weekendlabel
    }()
    
    var timebtn: UIButton = {
        let timebtn = UIButton()
        timebtn.translatesAutoresizingMaskIntoConstraints=false
        timebtn.titleLabel?.font=UIFont.systemFont(ofSize: 15)
        timebtn.setTitleColor(UIColor(rgb: 0x739FD9), for: .normal)
        timebtn.setTitle("Notify me if the price changes", for: .normal)
        timebtn.setImage(UIImage(named: "bell_image"), for: .normal)
        timebtn.titleEdgeInsets=UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 190)
        timebtn.imageEdgeInsets=UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 200)
        return timebtn
    }()
    
    var locationlabel: UILabel = {
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
//    var wightimage: UIImageView = {
//        let wightimage = UIImageView()
//        wightimage.translatesAutoresizingMaskIntoConstraints=false
//        wightimage.layer.masksToBounds = false
//        wightimage.layer.cornerRadius=10
//        wightimage.image=UIImage(named: "Rectangle_image")
//        return wightimage
//    }()
    
    
    var rightimage: UIImageView = {
        let rightimage = UIImageView()
        rightimage.translatesAutoresizingMaskIntoConstraints=false
        rightimage.layer.masksToBounds = false
        rightimage.layer.cornerRadius=10
        rightimage.image=UIImage(named: "Vector_image")
        return rightimage
    }()
    
    var bookbtn: UIButton = {
        let bookbtn = UIButton()
        bookbtn.backgroundColor = UIColor(rgb: 0x04A6FB)
        bookbtn.translatesAutoresizingMaskIntoConstraints=false
        bookbtn.layer.cornerRadius = 20
        bookbtn.setTitle("Book", for: .normal)
        return bookbtn
    }()
    
    
    var lineview: UIView = {
        let lineview = UIView()
        lineview.backgroundColor = UIColor.black
        lineview.translatesAutoresizingMaskIntoConstraints=false
        return lineview
    }()
       
   
    
    
    var linview: UIView = {
        let linview = UIView()
        linview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        linview.translatesAutoresizingMaskIntoConstraints=false
        return linview
    }()
    
    var cottagelabel: UILabel = {
        let cottagelabel = UILabel()
        cottagelabel.translatesAutoresizingMaskIntoConstraints=false
        cottagelabel.font = UIFont.systemFont(ofSize: 25)
        cottagelabel.textColor  = UIColor(rgb: 0xC4C4C4)
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
        arealabel.font = UIFont.systemFont(ofSize: 18)
        arealabel.textColor = UIColor.black
        arealabel.text = "Area"
        return arealabel
    }()

    var mlabel: UILabel = {
        let mlabel = UILabel()
        mlabel.translatesAutoresizingMaskIntoConstraints=false
        mlabel.font = UIFont.systemFont(ofSize: 25)
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
        roomlabel.font = UIFont.systemFont(ofSize: 25)
        roomlabel.textColor = UIColor.black
        roomlabel.text = "3"
        return roomlabel
    }()

    var wimage: UIImageView = {
        let wimage = UIImageView()
        wimage.translatesAutoresizingMaskIntoConstraints=false
        wimage.image = UIImage(named: "Ellipse_image")
        return wimage
    }()
    
    var billiardlabel: UILabel = {
        let billiardlabel = UILabel()
        billiardlabel.translatesAutoresizingMaskIntoConstraints=false
        billiardlabel.font = UIFont.systemFont(ofSize: 18)
        billiardlabel.textColor = UIColor.black
        billiardlabel.text = "Billiards"
        return billiardlabel
    }()
    
    var therelabel: UILabel = {
        let therelabel = UILabel()
        therelabel.translatesAutoresizingMaskIntoConstraints=false
        therelabel.font = UIFont.systemFont(ofSize: 25)
        therelabel.textColor = UIColor.black
        therelabel.text = "There is"
        return therelabel
    }()
    
    var eimage: UIImageView = {
        let eimage = UIImageView()
        eimage.translatesAutoresizingMaskIntoConstraints=false
        eimage.image = UIImage(named: "Ellipse_image")
        return eimage
    }()
    
    var garagelabel: UILabel = {
        let garagelabel = UILabel()
        garagelabel.translatesAutoresizingMaskIntoConstraints=false
        garagelabel.font = UIFont.systemFont(ofSize: 18)
        garagelabel.textColor = UIColor.black
        garagelabel.text = "Garage"
        return garagelabel
    }()
    
    var placelabel: UILabel = {
        let placelabel = UILabel()
        placelabel.translatesAutoresizingMaskIntoConstraints=false
        placelabel.font = UIFont.systemFont(ofSize: 25)
        placelabel.textColor = UIColor.black
        placelabel.text = "3 Places"
        return placelabel
    }()
    
    var textbtn: UILabel = {
        let textbtn = UILabel()
        textbtn.translatesAutoresizingMaskIntoConstraints=false
       textbtn.text="⚪️Hot water There is ⚪️Shower / bath There is ⚪️Winter pool There is ⚪️Internet There is ⚪️Air conditioner There is ⚪️Summer pool There is ⚪️Summer cuisine There is ⚪️Brazier There is ⚪️Toilet in the house There is ⚪️Sauna There is ⚪️Tapchan There is ⚪️Television There is ⚪️Fridge There is"
        textbtn.font = UIFont.systemFont(ofSize: 18)
        return textbtn
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
        rentlabel.text="Rent"
        rentlabel.textColor = UIColor(rgb: 0xC4C4C4)
        rentlabel.font=UIFont.systemFont(ofSize: 25)
        return rentlabel
    }()
    
    var nowlabel: UILabel = {
        let nowlabel = UILabel()
        nowlabel.translatesAutoresizingMaskIntoConstraints=false
        nowlabel.font = UIFont.systemFont(ofSize: 14)
        nowlabel.textColor = UIColor(rgb: 0xC4C4C4)
        nowlabel.text = "Now"
        return nowlabel
    }()
    
    var booklabel: UILabel = {
        let booklabel = UILabel()
        booklabel.translatesAutoresizingMaskIntoConstraints=false
        booklabel.font = UIFont.systemFont(ofSize: 14)
        booklabel.textColor = UIColor(rgb: 0xC4C4C4)
        booklabel.text = "Booking"
        return booklabel
    }()
    
    var freelabel: UILabel = {
        let freelabel = UILabel()
        freelabel.translatesAutoresizingMaskIntoConstraints=false
        freelabel.font = UIFont.systemFont(ofSize: 18)
        freelabel.textColor = UIColor(rgb: 0x27AE60)
        freelabel.text = "Free" 
        return freelabel
    }()
    
    var notlabel: UILabel = {
        let notlabel = UILabel()
        notlabel.translatesAutoresizingMaskIntoConstraints=false
        notlabel.font = UIFont.systemFont(ofSize: 14)
        notlabel.textColor = UIColor(rgb: 0xC4C4C4)
        notlabel.text = "There is not"
        return notlabel
    }()
    
    var chizview: UIView = {
        let chizview = UIView()
        chizview.translatesAutoresizingMaskIntoConstraints=false
        chizview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return chizview
    }()
    
    var review: UILabel = {
        let review = UILabel()
        review.translatesAutoresizingMaskIntoConstraints=false
        review.font = UIFont.systemFont(ofSize: 25)
        review.textColor = UIColor(rgb: 0xC4C4C4)
        review.text = "Reviews"
        return review
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
    
    var toshtxtlabel: UILabel = {
        let toshtxtlabel = UILabel()
        toshtxtlabel.translatesAutoresizingMaskIntoConstraints=false
        toshtxtlabel.font = UIFont.systemFont(ofSize: 18)
        toshtxtlabel.textColor = UIColor.black
        toshtxtlabel.text = "In the Tashkent region, about 70 km from the capital, is Khodjikent, a village in the Bostanlyk district."
        return toshtxtlabel
    }()
    
    var cizview: UIView = {
        let cizview = UIView()
        cizview.translatesAutoresizingMaskIntoConstraints=false
        cizview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return cizview
    }()
    
    var optionlabel: UILabel = {
        let optionlabel = UILabel()
        optionlabel.translatesAutoresizingMaskIntoConstraints=false
        optionlabel.font = UIFont.systemFont(ofSize: 25)
        optionlabel.textColor = UIColor(rgb: 0xC4C4C4)
        optionlabel.text = "Options nearby"
        return optionlabel
    }()
    
    var firstimage: UIImageView = {
        let firstimage = UIImageView()
        firstimage.translatesAutoresizingMaskIntoConstraints=false
        firstimage.image = UIImage(named: "home_imge")
        firstimage.layer.cornerRadius = 30
        firstimage.layer.masksToBounds=false
        return firstimage
    }()
    
    var frrebtn: UIButton = {
        let frrebtn = UIButton()
        frrebtn.translatesAutoresizingMaskIntoConstraints=false
        frrebtn.backgroundColor = UIColor(rgb: 0x27AE60)
        frrebtn.layer.cornerRadius = 8
        frrebtn.setTitle("Free", for: .normal)
        return frrebtn
    }()
    
    var allertbtn: UIButton = {
        let allertbtn = UIButton()
        allertbtn.translatesAutoresizingMaskIntoConstraints=false
        allertbtn.backgroundColor = UIColor(rgb: 0xFF8A00)
        allertbtn.layer.cornerRadius = 8
        allertbtn.setTitle("Recommended", for: .normal)
        return allertbtn
    }()
    
    var iidbtn: UIButton = {
        let iidbtn = UIButton()
        iidbtn.translatesAutoresizingMaskIntoConstraints=false
        iidbtn.backgroundColor = UIColor(rgb: 0x969696)
        iidbtn.layer.cornerRadius = 8
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
    
    var dachlabel: UILabel = {
        let dachlabel = UILabel()
        dachlabel.translatesAutoresizingMaskIntoConstraints=false
        dachlabel.font = UIFont.systemFont(ofSize: 18)
        dachlabel.textColor = UIColor.black
        dachlabel.text = "Elite dacha on Khadzhikent,                       near the Mosque"
        dachlabel.numberOfLines=2
        return dachlabel
    }()
    
    var tashlabel: UILabel = {
        let tashlabel = UILabel()
        tashlabel.translatesAutoresizingMaskIntoConstraints=false
        tashlabel.font = UIFont.systemFont(ofSize: 18)
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
        secondimage.layer.masksToBounds=false
        secondimage.layer.cornerRadius = 30
        return secondimage
    }()
    
    var ffrebtn: UIButton = {
        let ffrebtn = UIButton()
        ffrebtn.translatesAutoresizingMaskIntoConstraints=false
        ffrebtn.backgroundColor = UIColor(rgb: 0x27AE60)
        ffrebtn.layer.cornerRadius = 8
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
        iddbtn.backgroundColor = UIColor(rgb: 0x969696)
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
        mosquelabel.text = "Elite dacha on Khadzhikent,                                                  near the Mosque"
        return mosquelabel
    }()
    
    var regionlabel: UILabel = {
        let regionlabel = UILabel()
        regionlabel.translatesAutoresizingMaskIntoConstraints=false
        regionlabel.font = UIFont.systemFont(ofSize: 18)
        regionlabel.textColor = UIColor(rgb: 0xC4C4C4)
        regionlabel.text = "Tashkent region, Bostanlyk district"
        return regionlabel
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

        
        settingAnchors()
        
//        homeView.addSubview(rentlabel)
        
        
        
    }
    
    
    @objc func addTapped(){}
    
    @objc func backToLeft(){
        navigationController?.popViewController(animated: true)
    }
    }
    

