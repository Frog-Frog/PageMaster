# PageMaster

## Description
PageMaster is a wrapper class for easier use of UIPageViewController.

## Feature
- Easier than UIPageViewController
- Infinite paging

## Requirements
- iOS 8.0+
- Xcode 10.1+
- Swift 4.2+

## Demo
![PageMaster](https://user-images.githubusercontent.com/20692907/52523149-86087900-2cd1-11e9-8acc-085115bef937.gif)

## Usage

### Setup
```swift
import PageMaster

private let pageMaster = PageMaster([])

private func setupPageMaster() {
    self.pageMaster.pageDelegate = self
    let vcList: [UIViewController] = [ /** Set your UIViewControllers */ ]
    self.pageMaster.setup(vcList)
    self.addChild(self.pageMaster)
    self.view.addSubview(self.pageMaster.view)
    self.pageMaster.view.frame = self.view.bounds
    self.pageMaster.didMove(toParent: self)
}
```

### PageDelegate
```swift
extension ViewController: PageMasterDelegate {

    func pageMaster(_ master: PageMaster, didChangePage page: Int) {
	// Here you can create a process after changing the page.
    }
}
```

## Install

### CocoaPods  
Add this to your Podfile.

```PodFile
pod 'PageMaster'
```

### Carthage  
Add this to your Cartfile.

```Cartfile
github "PKPK-Carnage/PageMaster"
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
