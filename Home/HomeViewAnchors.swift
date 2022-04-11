//
//  HomeViewAnchors.swift
//  Home
//
//  Created by Umidjon Mamatov on 13/03/22.
//

import Foundation
import UIKit
import MapKit


extension Home2ViewController{
    func settingAnchors(){
        
        homeView.addSubview(image)
        image.topAnchor.constraint(equalTo: homeView.topAnchor, constant: 0).isActive=true
        image.leftAnchor.constraint(equalTo: homeView.leftAnchor, constant: 0).isActive=true
        image.rightAnchor.constraint(equalTo: homeView.rightAnchor, constant: 0).isActive=true
        image.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/3).isActive=true
        
        homeView.addSubview(freebtn)
        freebtn.topAnchor.constraint(equalTo: image.topAnchor, constant: 10).isActive=true
        freebtn.leftAnchor.constraint(equalTo: image.leftAnchor, constant: 10).isActive=true
        freebtn.widthAnchor.constraint(equalToConstant: 100).isActive=true
        freebtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        homeView.addSubview(alertbtn)
        alertbtn.bottomAnchor.constraint(equalTo: image.bottomAnchor,constant: -15).isActive=true
        alertbtn.leftAnchor.constraint(equalTo: image.leftAnchor,constant: 10).isActive=true
        alertbtn.widthAnchor.constraint(equalToConstant: 150).isActive=true
        alertbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        homeView.addSubview(idbtn)
        idbtn.topAnchor.constraint(equalTo: image.topAnchor,constant: 10).isActive=true
        idbtn.widthAnchor.constraint(equalToConstant: 100).isActive=true
        idbtn.rightAnchor.constraint(equalTo: image.rightAnchor,constant: -15).isActive=true
        idbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
       
        homeView.addSubview(trruebtn)
        trruebtn.rightAnchor.constraint(equalTo: image.rightAnchor,constant: -20).isActive=true
        trruebtn.bottomAnchor.constraint(equalTo: image.bottomAnchor, constant: -15).isActive=true
        trruebtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        trruebtn.widthAnchor.constraint(equalToConstant: 70).isActive=true
        
        homeView.addSubview(worklabel)
        worklabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10).isActive=true
        worklabel.leftAnchor.constraint(equalTo: homeView.leftAnchor, constant: 10).isActive=true
        worklabel.rightAnchor.constraint(equalTo: homeView.rightAnchor, constant: -5).isActive=true
        
        homeView.addSubview(moneylabel)
        moneylabel.topAnchor.constraint(equalTo: worklabel.bottomAnchor,constant: 10).isActive=true
        moneylabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
 
        homeView.addSubview(daylabel)
        daylabel.topAnchor.constraint(equalTo: moneylabel.bottomAnchor,constant: 5).isActive=true
        daylabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
      
        homeView.addSubview(maneylabel)
        maneylabel.topAnchor.constraint(equalTo: daylabel.bottomAnchor,constant: 10).isActive=true
        maneylabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(weekendlabel)
        weekendlabel.topAnchor.constraint(equalTo: maneylabel.bottomAnchor,constant: 5).isActive=true
        weekendlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(timebtn)
        timebtn.topAnchor.constraint(equalTo: weekendlabel.bottomAnchor,constant: 10).isActive=true
        timebtn.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 0).isActive=true
        timebtn.widthAnchor.constraint(equalToConstant: 445).isActive=true
        
        homeView.addSubview(textView)
        textView.topAnchor.constraint(equalTo: timebtn.bottomAnchor,constant: 25).isActive=true
        textView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        textView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        textView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        homeView.addSubview(locationlabel)
        locationlabel.topAnchor.constraint(equalTo: textView.bottomAnchor,constant: 10).isActive=true
        locationlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true

        homeView.addSubview(maplabel)
        maplabel.topAnchor.constraint(equalTo: locationlabel.bottomAnchor,constant: 5).isActive=true
        maplabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true

        view.addSubview(rightimage)
        rightimage.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -75).isActive=true
        rightimage.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -15).isActive=true

        view.addSubview(bookbtn)
        bookbtn.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -60).isActive=true
        bookbtn.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 20).isActive=true
        bookbtn.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -50).isActive=true
        bookbtn.heightAnchor.constraint(equalToConstant: 50).isActive=true

    
        mapView.translatesAutoresizingMaskIntoConstraints=false
        mapView.mapType = MKMapType.standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        
        homeView.addSubview(mapView)
        mapView.leftAnchor.constraint(equalTo: homeView.leftAnchor, constant: 10).isActive=true
        mapView.topAnchor.constraint(equalTo: maplabel.bottomAnchor, constant: 30).isActive=true
        mapView.rightAnchor.constraint(equalTo: homeView.rightAnchor, constant: -10).isActive=true
        mapView.heightAnchor.constraint(equalToConstant: 200).isActive=true
        
        homeView.addSubview(linview)
        linview.topAnchor.constraint(equalTo: mapView.bottomAnchor,constant: 20).isActive=true
        linview.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        linview.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        linview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        homeView.addSubview(cottagelabel)
        cottagelabel.topAnchor.constraint(equalTo: linview.bottomAnchor,constant: 15).isActive=true
        cottagelabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(textlabel)
        textlabel.topAnchor.constraint(equalTo: cottagelabel.bottomAnchor,constant: 10).isActive=true
        textlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        textlabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
 
        homeView.addSubview(readlabel)
        readlabel.topAnchor.constraint(equalTo: textlabel.bottomAnchor,constant: 10).isActive=true
        readlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        
        
        
  
        homeView.addSubview(qimage)
        qimage.topAnchor.constraint(equalTo: readlabel.bottomAnchor,constant: 20).isActive=true
        qimage.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true

        homeView.addSubview(arealabel)
        arealabel.topAnchor.constraint(equalTo: readlabel.bottomAnchor,constant: 18).isActive=true
        arealabel.leftAnchor.constraint(equalTo: qimage.rightAnchor,constant: 5).isActive=true

        homeView.addSubview(mlabel)
        mlabel.topAnchor.constraint(equalTo: arealabel.bottomAnchor, constant: 1).isActive=true
        mlabel.leftAnchor.constraint(equalTo: qimage.rightAnchor,constant: 5).isActive=true

        homeView.addSubview(rimage)
        rimage.centerYAnchor.constraint(equalTo: qimage.centerYAnchor, constant: 0).isActive=true
        rimage.leftAnchor.constraint(equalTo: homeView.centerXAnchor, constant: 10).isActive=true
        
        homeView.addSubview(bedroomlabel)
        bedroomlabel.topAnchor.constraint(equalTo: readlabel.bottomAnchor,constant: 18).isActive=true
        bedroomlabel.leftAnchor.constraint(equalTo: rimage.rightAnchor,constant: 0).isActive=true

        homeView.addSubview(roomlabel)
        roomlabel.topAnchor.constraint(equalTo: bedroomlabel.bottomAnchor, constant: 1).isActive=true
        roomlabel.leftAnchor.constraint(equalTo: rimage.rightAnchor,constant: 5).isActive=true
        
        
        
        
        homeView.addSubview(wimage)
        wimage.topAnchor.constraint(equalTo: roomlabel.bottomAnchor, constant: 10).isActive=true
        wimage.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
 
        homeView.addSubview(billiardlabel)
        billiardlabel.topAnchor.constraint(equalTo: roomlabel.bottomAnchor,constant: 8).isActive=true
        billiardlabel.leftAnchor.constraint(equalTo: wimage.rightAnchor,constant: 5).isActive=true
    
        homeView.addSubview(therelabel)
        therelabel.topAnchor.constraint(equalTo: billiardlabel.bottomAnchor,constant: 0).isActive=true
        therelabel.leftAnchor.constraint(equalTo: wimage.rightAnchor,constant: 5).isActive=true
    
        
        
        
        homeView.addSubview(eimage)
        eimage.centerYAnchor.constraint(equalTo: wimage.centerYAnchor,constant: 0).isActive=true
        eimage.leftAnchor.constraint(equalTo: homeView.centerXAnchor,constant: 10).isActive=true
    
        homeView.addSubview(garagelabel)
        garagelabel.topAnchor.constraint(equalTo: roomlabel.bottomAnchor,constant: 8).isActive=true
        garagelabel.leftAnchor.constraint(equalTo: eimage.rightAnchor,constant: 5).isActive=true
        
        homeView.addSubview(placelabel)
        placelabel.topAnchor.constraint(equalTo: garagelabel.bottomAnchor,constant: 0).isActive=true
        placelabel.leftAnchor.constraint(equalTo: eimage.rightAnchor,constant: 5).isActive=true
        
        
        homeView.addSubview(textbtn)
        textbtn.topAnchor.constraint(equalTo: therelabel.bottomAnchor,constant: 10).isActive=true
        textbtn.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        textbtn.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        textbtn.numberOfLines=20

        homeView.addSubview(lneview)
        lneview.topAnchor.constraint(equalTo: textbtn.bottomAnchor,constant: 10).isActive=true
        lneview.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        lneview.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        lneview.heightAnchor.constraint(equalToConstant: 1).isActive=true

        homeView.addSubview(rentlabel)
        rentlabel.topAnchor.constraint(equalTo: lneview.bottomAnchor,constant: 10).isActive=true
        rentlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        rentlabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
 
        homeView.addSubview(nowlabel)
        nowlabel.topAnchor.constraint(equalTo: rentlabel.bottomAnchor,constant: 10).isActive=true
        nowlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true

        homeView.addSubview(booklabel)
        booklabel.centerYAnchor.constraint(equalTo: nowlabel.centerYAnchor,constant: 0).isActive=true
        booklabel.leftAnchor.constraint(equalTo: homeView.centerXAnchor,constant: 10).isActive=true
        
        homeView.addSubview(freelabel)
        freelabel.topAnchor.constraint(equalTo: nowlabel.bottomAnchor,constant: 5).isActive=true
        freelabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(notlabel)
        notlabel.centerYAnchor.constraint(equalTo: freelabel.centerYAnchor,constant: 0).isActive=true
        notlabel.leftAnchor.constraint(equalTo: homeView.centerXAnchor,constant: 10).isActive=true
        
        homeView.addSubview(chizview)
        chizview.topAnchor.constraint(equalTo: freelabel.bottomAnchor,constant: 20).isActive=true
        chizview.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        chizview.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        chizview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        homeView.addSubview(review)
        review.topAnchor.constraint(equalTo: chizview.bottomAnchor,constant: 10).isActive=true
        review.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(alllabel)
        alllabel.centerYAnchor.constraint(equalTo: review.centerYAnchor,constant: 0).isActive=true
        alllabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        
        homeView.addSubview(starlabel)
        starlabel.topAnchor.constraint(equalTo: alllabel.bottomAnchor,constant: 10).isActive=true
        starlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(tttview)
        tttview.topAnchor.constraint(equalTo: starlabel.bottomAnchor,constant: 15).isActive=true
        tttview.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 20).isActive=true
        tttview.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -20).isActive=true
        tttview.heightAnchor.constraint(equalToConstant: 100).isActive=true
        
        tttview.addSubview(toshtxtlabel)
        toshtxtlabel.topAnchor.constraint(equalTo: tttview.topAnchor,constant: 10).isActive=true
        toshtxtlabel.leftAnchor.constraint(equalTo: tttview.leftAnchor,constant: 10).isActive=true
        toshtxtlabel.rightAnchor.constraint(equalTo: tttview.rightAnchor,constant: -10).isActive=true
        toshtxtlabel.numberOfLines=4
        
        homeView.addSubview(cizview)
        cizview.topAnchor.constraint(equalTo: tttview.bottomAnchor,constant: 25).isActive=true
        cizview.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        cizview.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        cizview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        homeView.addSubview(optionlabel)
        optionlabel.topAnchor.constraint(equalTo: cizview.bottomAnchor,constant: 20).isActive=true
        optionlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(firstimage)
        firstimage.topAnchor.constraint(equalTo: optionlabel.bottomAnchor,constant: 10).isActive=true
        firstimage.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        firstimage.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        firstimage.heightAnchor.constraint(equalToConstant: 200).isActive=true
        self.firstimage.layer.masksToBounds=true
        self.firstimage.layer.cornerRadius=10
        
        firstimage.addSubview(frrebtn)
        frrebtn.topAnchor.constraint(equalTo: firstimage.topAnchor,constant: 10).isActive=true
        frrebtn.leftAnchor.constraint(equalTo: firstimage.leftAnchor,constant: 10).isActive=true
        frrebtn.widthAnchor.constraint(equalToConstant: 100).isActive=true
        frrebtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        firstimage.addSubview(allertbtn)
        allertbtn.bottomAnchor.constraint(equalTo: firstimage.bottomAnchor,constant: -15).isActive=true
        allertbtn.leftAnchor.constraint(equalTo: firstimage.leftAnchor,constant: 10).isActive=true
        allertbtn.widthAnchor.constraint(equalToConstant: 135).isActive=true
        allertbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        firstimage.addSubview(iidbtn)
        iidbtn.topAnchor.constraint(equalTo: firstimage.topAnchor,constant: 10).isActive=true
        iidbtn.widthAnchor.constraint(equalToConstant: 100).isActive=true
        iidbtn.rightAnchor.constraint(equalTo: firstimage.rightAnchor,constant: -15).isActive=true
        iidbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        homeView.addSubview(fromlabel)
        fromlabel.topAnchor.constraint(equalTo: firstimage.bottomAnchor,constant: 10).isActive=true
        fromlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(dachlabel)
        dachlabel.topAnchor.constraint(equalTo: fromlabel.bottomAnchor,constant: 10).isActive=true
        dachlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        dachlabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        
        homeView.addSubview(tashlabel)
        tashlabel.topAnchor.constraint(equalTo: dachlabel.bottomAnchor,constant: 10).isActive=true
        tashlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(fuview)
        fuview.topAnchor.constraint(equalTo: tashlabel.bottomAnchor,constant: 20).isActive=true
        fuview.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        fuview.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        fuview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        homeView.addSubview(similarlabel)
        similarlabel.topAnchor.constraint(equalTo: fuview.bottomAnchor,constant: 15).isActive=true
        similarlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(secondimage)
        secondimage.topAnchor.constraint(equalTo: similarlabel.bottomAnchor,constant: 10).isActive=true
        secondimage.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        secondimage.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        secondimage.heightAnchor.constraint(equalToConstant: 200).isActive=true
        self.secondimage.layer.masksToBounds=true
        self.secondimage.layer.cornerRadius=10
        
        secondimage.addSubview(ffrebtn)
        ffrebtn.topAnchor.constraint(equalTo: secondimage.topAnchor,constant: 10).isActive=true
        ffrebtn.leftAnchor.constraint(equalTo: secondimage.leftAnchor,constant: 10).isActive=true
        ffrebtn.widthAnchor.constraint(equalToConstant: 100).isActive=true
        ffrebtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        secondimage.addSubview(recombtn)
        recombtn.bottomAnchor.constraint(equalTo: secondimage.bottomAnchor,constant: -15).isActive=true
        recombtn.leftAnchor.constraint(equalTo: secondimage.leftAnchor,constant: 10).isActive=true
        recombtn.widthAnchor.constraint(equalToConstant: 135).isActive=true
        recombtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        secondimage.addSubview(iddbtn)
        iddbtn.topAnchor.constraint(equalTo: secondimage.topAnchor,constant: 10).isActive=true
        iddbtn.rightAnchor.constraint(equalTo: secondimage.rightAnchor,constant: -15).isActive=true
        iddbtn.widthAnchor.constraint(equalToConstant: 100).isActive=true
        iddbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        homeView.addSubview(soumlabel)
        soumlabel.topAnchor.constraint(equalTo: secondimage.bottomAnchor,constant: 10).isActive=true
        soumlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(mosquelabel)
        mosquelabel.topAnchor.constraint(equalTo: soumlabel.bottomAnchor,constant: 10).isActive=true
        mosquelabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        mosquelabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        mosquelabel.numberOfLines = 2
        
        homeView.addSubview(regionlabel)
        regionlabel.topAnchor.constraint(equalTo: mosquelabel.bottomAnchor,constant: 10).isActive=true
        regionlabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        
    }
}




////        textView.addSubview(wightimage)
////        wightimage.topAnchor.constraint(equalTo: textView.bottomAnchor,constant: 42).isActive=true
////        wightimage.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -30).isActive=true
////




////        homeView.addSubview(collectionView!)
////        collectionView?.topAnchor.constraint(equalTo: readlabel.bottomAnchor,constant: 10).isActive=true
////        collectionView?.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 0).isActive=true
////        collectionView?.rightAnchor.constraint(equalTo: readlabel.rightAnchor,constant: 0).isActive=true
////        collectionView?.heightAnchor.constraint(equalToConstant: 100).isActive=true
//

