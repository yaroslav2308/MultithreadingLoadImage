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
        view.addSubview(randomImageView)
        view.addSubview(randomButton)
        view.addSubview(slider)
        setupLayout()
        let data = fetchImage()
        randomImageView.image = UIImage(data: data)
    }
    
    let randomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame.size.height = 200
        imageView.frame.size.width = 200
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let randomButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("RANDOM", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(changeImage), for: .touchUpInside)
        return button
    }()
    
    @objc private func changeImage() {
        let data = fetchImage()
        randomImageView.image = UIImage(data: data)
    }
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.value = 0
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private func setupLayout() {
        
        
        randomImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        randomImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        randomImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        randomImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        randomButton.topAnchor.constraint(equalTo: randomImageView.bottomAnchor, constant: 30).isActive = true
        randomButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.03).isActive = true
        randomButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        randomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        slider.topAnchor.constraint(equalTo: randomButton.bottomAnchor, constant: 50).isActive = true
        slider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        slider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        
        
    }
    
    private func fetchImage() -> Data {
        let url = URL(string: "https://loremflickr.com/2000/2000")!
        
        let data = try! Data(contentsOf: url)
        return data
    }


}

