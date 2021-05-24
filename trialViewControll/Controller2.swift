//
//  Controller2.swift
//  trialViewControll
//
//  Created by user194465 on 5/24/21.
//  Copyright © 2021 ruggedgreen. All rights reserved.
//

import UIKit


class Controller2: UIViewController {
    
    @IBOutlet var lbl:UILabel?
    public var temp: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        print("value received ")
        
        guard let cc = temp else{
            return
        }
        print(temp)
        lbl?.text = cc
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
