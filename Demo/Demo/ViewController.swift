//
//  ViewController.swift
//  Demo
//
//  Created by Tomosuke Okada on 2019/02/09.
//  Copyright © 2019 TomosukeOkada. All rights reserved.
//

import UIKit
import PageMaster

class ViewController: UIViewController {

    @IBOutlet private weak var pageFrameView: UIView! {
        willSet {
            self.addChild(self.pageMaster)
            newValue.addSubview(self.pageMaster.view)
            newValue.fitToSelf(childView: self.pageMaster.view)
            self.pageMaster.didMove(toParent: self)
        }
    }
    
    @IBOutlet private weak var pageControl: UIPageControl!
    
    @IBOutlet private weak var switchInfiniteButton: UIButton!
    
    private let pageMaster = PageMaster([])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupPageViewController()
    }
    
    @IBAction private func didTapInfiniteButton(_ sender: UIButton) {
        sender.isSelected.toggle()
        self.pageMaster.isInfinite.toggle()
    }
}

// MARK: - Setup
extension ViewController {
    
    private func setupPageViewController() {
        self.pageMaster.pageDelegate = self
        let vcList = [self.generateViewController(color: .red),
                      self.generateViewController(color: .blue),
                      self.generateViewController(color: .green)]
        self.pageControl.numberOfPages = vcList.count
        self.pageMaster.setup(vcList)
    }
    
    private func generateViewController(color: UIColor) -> UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = color
        return vc
    }
}

// MARK: - PageMasterDelegate
extension ViewController: PageMasterDelegate {    
    
    func pageMaster(_ master: PageMaster, didChangePage page: Int) {
        self.pageControl.currentPage = page
    }
}

