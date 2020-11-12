# HHStaticThumbSliderView

[![CI Status](https://img.shields.io/travis/shamzahasan88/HHStaticThumbSliderView.svg?style=for-the-badge)](https://travis-ci.org/shamzahasan88/HHStaticThumbSliderView)
[![Version](https://img.shields.io/cocoapods/v/HHStaticThumbSliderView.svg?style=for-the-badge)](https://cocoapods.org/pods/HHStaticThumbSliderView)
[![License](https://img.shields.io/cocoapods/l/HHStaticThumbSliderView.svg?style=for-the-badge)](https://cocoapods.org/pods/HHStaticThumbSliderView)
[![Platform](https://img.shields.io/cocoapods/p/HHStaticThumbSliderView.svg?style=for-the-badge)](https://cocoapods.org/pods/HHStaticThumbSliderView)
[![](https://img.shields.io/badge/Language-%20Swift-DB4E02.svg?style=for-the-badge&logo=swift)](https://developer.apple.com/swift)
[![](https://img.shields.io/badge/Usage-%20Easy-00BF00.svg?style=for-the-badge)](https://cocoapods.org/pods/HHStaticThumbSliderView)

![](http://appforshare.io/github-assets/Logo__.png)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

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

- To get tap on thumbs, first import  `HHStaticThumbSlider` and assign outlet in your view controller's class

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
