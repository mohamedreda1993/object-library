//  ViewController.swift
//  Created by mohamed reda on 2/9/18.
//  Copyright © 2018 mohamed reda. All rights reserved.

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet weak var collectioview: UICollectionView!
    var animals=["1","2","3","4","5","6","1","2","3","4","5","6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //adjust size of each view
        let itemsize=UIScreen.main.bounds.width/3 - 3
        let layout=UICollectionViewFlowLayout()
        layout.sectionInset=UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        layout.itemSize=CGSize(width: itemsize, height: itemsize)
        layout.minimumLineSpacing=3
        layout.minimumInteritemSpacing=3
        collectioview.collectionViewLayout=layout
       
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animals.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! animal_cell
        cell.img.image=UIImage(named: animals[indexPath.row])
        return cell
        
        
    }


}
