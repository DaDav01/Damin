//
//  ViewController.swift
//  Damin
//
//  Created by Davit Davtyan on 14.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initStackView()
        initLabel()
        activateLayout()
        currentHierrarchy()
       
    }


}

extension ViewController {
    
    private func initStackView() {
     stackView = UIStackView()
     stackView.axis = .vertical
     stackView.distribution = .fillEqually
    }

    private func initLabel() {
        label = UILabel()
        label.text = "Hello"
        label.textColor = .blue
        label.textAlignment = .center
    }

    
    private func currentHierrarchy() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(label)
    }
    
    private func activateLayout() {
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalToConstant: 50),
            stackView.heightAnchor.constraint(equalToConstant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
