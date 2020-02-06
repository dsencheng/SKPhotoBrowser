//
//  CoustomPhotoBrowser.swift
//  SKPhotoBrowserExample
//
//  Created by dsen on 2020/2/6.
//  Copyright © 2020 suzuki_keishi. All rights reserved.
//

import UIKit
import SKPhotoBrowser

class CoustomPhotoBrowser: SKPhotoBrowser {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func createPaginationView() -> SKPaginationView {
        let sk = SKPaginationView(frame: view.frame, browser: self)
//        sk.backgroundColor = UIColor.init(white: 0, alpha: 0.6)
        sk.direction = .Up
        sk.margin = 20
        sk.paginationButtonHidden = true
        return sk
    }
    
    override var prefersStatusBarHidden: Bool {
        return areControlsHidden()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
