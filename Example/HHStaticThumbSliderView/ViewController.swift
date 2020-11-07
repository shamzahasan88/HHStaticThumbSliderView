//
//  ViewController.swift
//  HHStaticThumbSliderView
//
//  Created by shamzahasan88 on 11/07/2020.
//  Copyright (c) 2020 shamzahasan88. All rights reserved.
//

import UIKit
import HHStaticThumbSliderView

class ViewController: UIViewController {

    @IBOutlet weak var hhStaticSliderViewWithBlackThumb: HHStaticThumbSliderView!
    @IBOutlet weak var hhStaticSliderViewWithGreenThumb: HHStaticThumbSliderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hhStaticSliderViewWithBlackThumb.onSelect = onBlackThumbSelect
        hhStaticSliderViewWithGreenThumb.onSelect = onGreenThumbSelect
    }
    
    func onBlackThumbSelect(index: Int) {
        print("Black thumb tapped with index: \(index)")
    }
    
    func onGreenThumbSelect(index: Int) {
        print("Green thumb tapped with index: \(index)")
    }
}

