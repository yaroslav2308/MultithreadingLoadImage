//
//  ViewController.swift
//  MultithreadingLoadImage
//
//  Created by Yaroslav Monastyrev on 03.08.2022.
//

import UIKit

class LoadImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }
    
    let randomImageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    let randomButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("RANDOM", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.value = 0
        
        return slider
    }()
    
//    private func setupLayout() {
//        
//    }


}

