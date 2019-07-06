//
//  ViewController.swift
//  
//  
//  Created by maeda.tasuku on 2019/07/06
//  Copyright © 2019 Classmethod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapShowMenuButton() {
        let storyboad = UIStoryboard(name: "SettingsViewController", bundle: nil)
        let settingsNavi = storyboad.instantiateInitialViewController() as! UINavigationController
        // 表示開始はモーダルと同じく present
        present(settingsNavi, animated: true, completion: nil)
    }
}

