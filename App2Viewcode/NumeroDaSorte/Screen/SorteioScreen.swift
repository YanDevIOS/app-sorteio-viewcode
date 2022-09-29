//
//  Sorteio.swift
//  App2Viewcode
//
//  Created by Yan Alejandro on 28/09/22.
//

import UIKit

class SorteioScreen: UIView {
    
    lazy var tituloImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var sorteioButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaogerar"), for: .normal)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(self.tappedSorteioButton), for: .touchUpInside)
        return button
    }()
    
    lazy var numeroLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 100)
        label.text = "??"
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 245/255.0, green: 109/255.0, blue: 68/255.0, alpha: 1.0)
        self.addSubview(self.tituloImageView)
        self.addSubview(self.sorteioButton)
        self.addSubview(self.numeroLabel)
        self.setUpContraints()
    }
    
    @objc private func tappedSorteioButton() {
        let resultado = arc4random_uniform(11)
        self.numeroLabel.text = String(resultado)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpContraints() {
        NSLayoutConstraint.activate([
            self.tituloImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.tituloImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            self.tituloImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.tituloImageView.heightAnchor.constraint(equalToConstant: 150),
            
            self.sorteioButton.topAnchor.constraint(equalTo: self.tituloImageView.bottomAnchor, constant: 40),
            self.sorteioButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            self.sorteioButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -0),
            self.sorteioButton.heightAnchor.constraint(equalToConstant: 300),
            
            self.numeroLabel.topAnchor.constraint(equalTo: self.sorteioButton.bottomAnchor, constant: 10),
            self.numeroLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 115),
            self.numeroLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -115),
            self.numeroLabel.heightAnchor.constraint(equalToConstant: 200),
        ])
    }
}
