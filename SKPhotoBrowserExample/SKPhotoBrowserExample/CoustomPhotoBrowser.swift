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

//        self.isAutoHideControls = false
    }
    
    override func createPaginationView() -> SKPaginationView {
        let sk = SKPaginationView(frame: view.frame, browser: self)
        sk.backgroundColor = UIColor.init(white: 1, alpha: 0.6)
        sk.direction = .NavigationBar
        sk.margin = 0
//        sk.paginationButtonHidden = true
        sk.height = 64
        return sk
    }
    
    override var prefersStatusBarHidden: Bool {
        return areControlsHidden()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
