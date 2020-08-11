//
//  ViewController.swift
//  SampleCollectionView
//
//  Created by Karthik Rajan T  on 10/08/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let type = ["Bus", "Phone", "Plane", "Power", "Train", "Wallet"]
    
    let about = ["Booking available", "plan structure", "booking available", "pay the payment", "booking available", "savings"]
    
    let img: [UIImage] = [
    UIImage(named: "bus")!,UIImage(named: "phone")!,UIImage(named: "plane")!,UIImage(named: "power")!,UIImage(named: "train")!,UIImage(named: "wallet")!,
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return type.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.typeLabel.text = type[indexPath.item]
        cell.imageView.image = img[indexPath.item]
        cell.DescriptionLabel.text = about[indexPath.item]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
    
        return cell
    }

}

