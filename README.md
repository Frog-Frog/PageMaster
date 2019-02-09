# PageViewController

## Description
PageViewController is a wrapper class for easier use of UIPageViewController.

## Feature
- Easier than UIPageViewController
- Infinite paging

## Requirements
- iOS 8.0+
- Xcode 10.1+
- Swift 4.2+

## Demo
![pageviewcontroller](https://user-images.githubusercontent.com/20692907/52523149-86087900-2cd1-11e9-8acc-085115bef937.gif)

## Usage

### Setup
```swift
import PageViewController

private let pageViewController = PageViewController([])

private func setupPageViewController() {
    self.pageViewController.pageDelegate = self
    let vcList: [UIViewController] = [ /** Set your UIViewControllers */ ]
    self.pageViewController.setup(vcList)
    self.addChild(self.pageViewController)
    self.view.addSubview(self.pageViewController.view)
    self.pageViewController.view.frame = self.view.bounds
    self.pageViewController.didMove(toParent: self)
}
```

### PageDelegate
```swift
extension ViewController: PageViewControllerDelegate {
    func pageViewController(_ vc: PageViewController, didChangePage page: Int) {
	// Here you can create a process after changing the page.
    }
}
```

## Install

### CocoaPods  
Add this to your Podfile.

```PodFile
pod 'PageViewController'
```

### Carthage  
Add this to your Cartfile.

```Cartfile
github "PKPK-Carnage/PageViewController"
```

## Help

If you want to support this framework, you can do these things.

- Please let us know if you have any requests for me.

	I will do my best to live up to your expectations.

- You can make contribute code, issues and pull requests.
	
	I promise to confirm them.

## Licence

[MIT](https://github.com/PKPK-Carnage/PageViewController/blob/master/LICENSE)

## Author

[PKPK-Carnage🦎](https://github.com/PKPK-Carnage)
