//
//  ViewController.swift
//  Project12
//
//  Created by Илья Лехов on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let defaults = UserDefaults.standard
        
        defaults.set(25, forKey: "age")
        defaults.set(true, forKey: "UserFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set("Ilya Lekhov", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "NewArray")
        
        let savedInt = defaults.integer(forKey: "age")
        let savedArray = defaults.object(forKey: "NewArray") as? [String] ?? [String]()
        print(savedInt)
        print(savedArray)
    }


}

