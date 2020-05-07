//
//  MyTabBarController.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.delegate = self
        //self.selectedIndex = 1
        
        if !UDManager.getFirst() {
            self.selectedIndex = 1
            UDManager.setTrue()
        }
            
        else {
            self.selectedIndex = UDManager.getIndex()
        }
        
    }
    
    

}

extension MyTabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print(#function)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        print(fromVC)
        print(toVC)
        
        return nil
    }
    
}



