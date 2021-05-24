//
//  ViewController.swift
//  trialViewControll
//
//  Created by user194465 on 5/23/21.
//  Copyright © 2021 ruggedgreen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    @IBOutlet var btn:UIButton!
//    @IBOutlet var lbl:UILabel!
//
    @IBOutlet var collectionView :UICollectionView!
    
    let cellID = "CollectionViewCell"
    var persons = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
        }
        
let nibCell = UINib(nibName: cellID, bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: cellID)

   
        for _ in 1...25 {
            let person = Person()
            person?.name = "James"
            person?.imageName="rose"
            persons.append(person!)
         }
        collectionView.reloadData()
        
    }
    
    
//
//    @IBAction func btnClick()
//    {
//        print("clicked")
//        btn.backgroundColor = .red
//        lbl.text = "clicked"
////        let vc=HomeViewController(data: lbl.text!)
////        present(vc,animated:true)
//
//
//        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        if let vc = mainStoryBoard.instantiateViewController(withIdentifier: "Controller2") as? Controller2
//        {
//            vc.temp = "asdads"
//        vc.modalPresentationStyle = .overCurrentContext
//       present(vc,animated:true,completion: nil)
//        }
//    }

    @objc func myFunc() {
        print("Button CLicked:")
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return persons.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset:CGFloat = 10
        return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.bounds.width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CollectionViewCell
        let person = persons[indexPath.row]
        cell.img.image = UIImage(named: person.imageName!)
        cell.lbl.text = person.name!
        
        cell.buttonAction = { sender in
            print("Button Clicked \(indexPath.row)")
        }
         
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        print("\(indexPath.row) - \(person.name!)" )
        
    }
}


