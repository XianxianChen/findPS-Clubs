//
//  PageSevenViewController.swift
//  findPSFit
//
//  Created by C4Q on 4/17/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class PageSevenViewController: UIViewController {

    let images: [UIImage] = [#imageLiteral(resourceName: "studentpics"),  #imageLiteral(resourceName: "getInvolved"), #imageLiteral(resourceName: "getInvolved")]
    let details = ["Swings for Soldiers Penn State", "Penn State Science Fair", "How to get involved?"]
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    self.collectionView.dataSource = self
        self.collectionView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
extension PageSevenViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "studentCell", for: indexPath) as! StudentCell
       cell.imageView.image = images[indexPath.row]
        cell.detailLabel.text = details[indexPath.row]
        return cell
    }
}
extension PageSevenViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
