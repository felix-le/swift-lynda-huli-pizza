//
//  Photo.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/18/22.
//

import UIKit


class PhotoController:UIViewController{
    var imageName = "0_lg"
    override func viewDidLoad() {
        let image = UIImageView(image: UIImage(named: imageName))
        image.contentMode = .scaleAspectFit
        image.frame = view.bounds
        view.addSubview(image)
    }
}

