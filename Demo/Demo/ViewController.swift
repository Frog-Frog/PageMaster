//
//  ViewController.swift
//  Demo
//
//  Created by Tomosuke Okada on 2019/02/09.
//  Copyright © 2019 TomosukeOkada. All rights reserved.
//

import UIKit
import PageViewController

class ViewController: UIViewController {

    @IBOutlet private weak var pageFrameView: UIView! {
        willSet {
            self.addChild(self.pageViewController)
            newValue.addSubview(self.pageViewController.view)
            newValue.fitToSelf(childView: self.pageViewController.view)
            self.pageViewController.didMove(toParent: self)
        }
    }
    @IBOutlet private weak var pageControl: UIPageControl!
    
    @IBOutlet private weak var switchInfiniteButton: UIButton!
    
    private let pageViewController = PageViewController([])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupPageViewController()
    }
    
    @IBAction private func didTapInfiniteButton(_ sender: UIButton) {
        sender.isSelected.toggle()
        self.pageViewController.isInfinite.toggle()
    }
}

// MARK: - Setup
extension ViewController {
    
    private func setupPageViewController() {
        self.pageViewController.pageDelegate = self
        let vcList = [self.generateViewController(color: .red),
                      self.generateViewController(color: .blue),
                      self.generateViewController(color: .green)]
        self.pageControl.numberOfPages = vcList.count
        self.pageViewController.setup(vcList)
    }
    
    private func generateViewController(color: UIColor) -> UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = color
        return vc
    }
}

extension ViewController: PageViewControllerDelegate {
    
    func pageViewController(_ vc: PageViewController, didChangePage page: Int) {
        self.pageControl.currentPage = page
    }
}

