# HHStaticThumbSliderView

[![CI Status](https://img.shields.io/travis/shamzahasan88/HHStaticThumbSliderView.svg?style=flat)](https://travis-ci.org/shamzahasan88/HHStaticThumbSliderView)
[![Version](https://img.shields.io/cocoapods/v/HHStaticThumbSliderView.svg?style=flat)](https://cocoapods.org/pods/HHStaticThumbSliderView)
[![License](https://img.shields.io/cocoapods/l/HHStaticThumbSliderView.svg?style=flat)](https://cocoapods.org/pods/HHStaticThumbSliderView)
[![Platform](https://img.shields.io/cocoapods/p/HHStaticThumbSliderView.svg?style=flat)](https://cocoapods.org/pods/HHStaticThumbSliderView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

HHStaticThumbSliderView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HHStaticThumbSliderView'
```

## Preview

![](http://appforshare.io/github-assets/sample.gif)

## How to use

- Drop a UIView in UIViewController

- Assign `HHStaticThumbSliderView` as Class to that view

![](http://appforshare.io/github-assets/AssignClassAndModule.jpg)

- Assign properties in `HHStaticThumbSliderView` inspector

![](http://appforshare.io/github-assets/inspector.png)

- To get tap on thumbs, first import  `HHStaticThumbSlider"` and assign outlet in your view controller's class

```
import HHStaticThumbSliderView

@IBOutlet weak var hhStaticSliderViewWithBlackThumb: HHStaticThumbSliderView!

```

- In `viewDidLoad` assign a method to "onSelect" property of `HHStaticThumbSliderView`

```
override func viewDidLoad() {
    super.viewDidLoad()
    hhStaticSliderViewWithBlackThumb.onSelect = onBlackThumbSelect
}

func onBlackThumbSelect(index: Int) {
    print("Black thumb tapped with index: \(index)")
}
```

## Author

Hamza Hasan, shamzahasan88, shamzahasan88@gmail.com

## License

HHStaticThumbSliderView is available under the MIT license. See the LICENSE file for more info.
