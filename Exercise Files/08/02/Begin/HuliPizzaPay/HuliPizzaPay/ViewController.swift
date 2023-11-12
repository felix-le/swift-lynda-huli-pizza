//
//  ViewController.swift
//  HuliPizzaPay
//
//  Created by LinkedIn User on 11/18/22.
//

import UIKit
import SwiftUI
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBSegueAction func HuliPizzaMenu3(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: MenuView3(menu: MenuModel().menu) )
    }
}

