//
//  PageTwelveViewController.swift
//  findPSFit
//
//  Created by C4Q on 4/17/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class PageTwelveViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    let clubImages: [UIImage] = [#imageLiteral(resourceName: "32261523936238_.pic_hd"), #imageLiteral(resourceName: "32351523936466_.pic_hd"),  #imageLiteral(resourceName: "32391523936599_.pic_hd"), #imageLiteral(resourceName: "32281523936354_.pic_hd"), #imageLiteral(resourceName: "32321523936403_.pic_hd"), #imageLiteral(resourceName: "32331523936420_.pic_hd"), #imageLiteral(resourceName: "32361523936481_.pic_hd"), #imageLiteral(resourceName: "32381523936592_.pic_hd"), #imageLiteral(resourceName: "32371523936504_.pic_hd"), #imageLiteral(resourceName: "32231523936185_.pic_hd"), #imageLiteral(resourceName: "32401523936625_.pic_hd"), #imageLiteral(resourceName: "32221523936169_.pic_hd"), #imageLiteral(resourceName: "32261523936238_.pic_hd-1"), #imageLiteral(resourceName: "32291523936371_.pic_hd"), #imageLiteral(resourceName: "32341523936457_.pic_hd")]
    let clubNames = ["Golf Club", "Cruquet Club", "Bitcoin Club", "Thon Club", "Model Railroad Club", "Coffee Club", "Twirling Club","Karate Club", "Cross Country", "Baseball Club", "Outling Club", "Roller Hockey", "Golf Club", "Sport Business", "Fun Club"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        // Do any additional setup after loading the view.
    }

}
extension PageTwelveViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "clubCell", for: indexPath) as! ClubCell
        
        cell.imageView.image = clubImages[indexPath.row]
        cell.nameLabel.text = clubNames[indexPath.row]
        return cell
    }
}
extension PageTwelveViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
