//
//  HHStaticThumbSlider.swift
//  FitWork
//
//  Created by Hackintosh1 on 07/11/2020.
//

import UIKit

@IBDesignable public class HHStaticThumbSliderView: UIView {
    
    @IBInspectable public var numberOfThumbs: Int = 2
    @IBInspectable public var thumbSize: Int = 10
    @IBInspectable public var thumbRadius: CGFloat = 5
    @IBInspectable public var barHeight: Int = 2
    @IBInspectable public var unFilledBarColor: UIColor = UIColor.gray
    @IBInspectable public var filledBarColor: UIColor = UIColor.green
    @IBInspectable public var unFilledThumbColor: UIColor = UIColor.gray
    @IBInspectable public var filledThumbColor: UIColor = UIColor.green
    
    public var onSelect:  (_ value: Int) -> () = {_ in }
    
    private var viewWidth = 0
    private var viewHeight = 0
    private var distribution = 0
    private var bar = UIView()
    private var filledBar = UIView()
    private var thumbsCreated = false
    private var thumbs = [UIButton]()
    
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        self.viewWidth = Int(self.frame.width)
        self.viewHeight = Int(self.frame.height)
        distribution = (self.viewWidth - thumbSize) / Int(numberOfThumbs - 1)
        createUnfilledBar()
        createFilledBar()
        createThumbs()
    }
    
    func createThumbs() {
        if thumbsCreated {
            return;
        }
        self.backgroundColor = UIColor.clear
        switch numberOfThumbs {
        case 0:
            return;
        case 1:
            createButton(x: 0, tag: 0)
            break
        case 2:
            for i in 0..<2 {
                createButton(x: i == 0 ? 0 : Int(self.viewWidth) - thumbSize, tag: i)
            }
            break
        default:
            for i in 0..<numberOfThumbs {
                switch i {
                case 0:
                    createButton(x: 0, tag: i)
                    break
                case numberOfThumbs - 1:
                    createButton(x: Int(self.viewWidth) - thumbSize, tag: i)
                    break
                default:
                    createButton(x: distribution * i, tag: i)
                    break
                }
            }
            break
        }
        adjustThumbsColor(tag: 0)
        thumbsCreated = true
    }
    
    func createUnfilledBar() {
        if (!self.subviews.contains(bar)) {
            bar.frame = CGRect(x: 0, y: (thumbSize / 2) - (barHeight / 2), width: Int(self.viewWidth), height: barHeight)
            bar.backgroundColor = unFilledBarColor
            self.addSubview(bar)
        }
    }
    
    func createFilledBar() {
        if (!self.subviews.contains(filledBar)) {
            filledBar.frame = CGRect(x: 0, y: (thumbSize / 2) - (barHeight / 2), width: 0, height: barHeight)
            filledBar.backgroundColor = filledBarColor
            self.addSubview(filledBar)
        }
    }
    
    func resizeFilledBar(tag: Int) {
        UIView.animate(withDuration: 0.5) {
            let filledBarNewWidth = self.distribution * tag
            self.filledBar.frame = CGRect(x: 0, y: (self.thumbSize / 2) - (self.barHeight / 2), width: filledBarNewWidth, height: self.barHeight)
        }
    }
    
    func adjustThumbsColor(tag: Int) {
        thumbs[0].backgroundColor = filledThumbColor
        
        for i in 1..<numberOfThumbs {
            if (i <= tag) {
                UIView.animate(withDuration: 0.25) {
                    self.thumbs[i].backgroundColor = self.filledThumbColor
                }
            }
            else {
                UIView.animate(withDuration: 0.25) {
                    self.thumbs[i].backgroundColor = self.unFilledThumbColor
                }
            }
        }
    }
    
    func createButton(x: Int, tag: Int = 0) {
        
        let button = UIButton()
        button.frame = CGRect(x: x, y: 0, width: thumbSize, height: thumbSize)
        button.backgroundColor = unFilledThumbColor
        button.addTarget(self, action: #selector(onThumb), for: .touchUpInside)
        button.setTitle(nil, for: .normal)
        button.layer.cornerRadius = thumbRadius
        button.tag = tag
        thumbs.append(button)
        self.addSubview(button)
    }
    
    @objc func onThumb (_ sender: UIButton) {
        resizeFilledBar(tag: sender.tag)
        adjustThumbsColor(tag: sender.tag)
        onSelect(sender.tag)
    }
}
