//
//  ShlashController.swift
//  Predictor
//
//  Created by 侯天阔 on 2023/4/1.
//

import UIKit

class ShlashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            
            SceneDelegate.starter.next()
        }

    }
    

}
