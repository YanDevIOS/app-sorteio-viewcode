//
//  ViewController.swift
//  App2Viewcode
//
//  Created by Yan Alejandro on 28/09/22.
//

import UIKit

class ViewController: UIViewController {

    var sorteioScreen: SorteioScreen?
    
    override func loadView() {
        self.sorteioScreen = SorteioScreen()
        self.view = self.sorteioScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

