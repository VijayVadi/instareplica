//
//  ScrollVC.swift
//  SnapChatCL
//
//  Created by Morshed Alam on 14/9/18.
//  Copyright © 2018 Morshed Alam. All rights reserved.
//
import UIKit

protocol ScrollViewControllerDelegate {
    var viewControllers: [UIViewController?] { get }
    var initialViewController: UIViewController { get }
    func scrollViewDidScroll()
}

class ScrollVC: UIViewController {
    
    // MARK: - Properties
    var scrollView: UIScrollView {
        return view as! UIScrollView
    }
    
    var pageSize: CGSize {
        return scrollView.frame.size
    }
    
    var viewControllers: [UIViewController?]!
    var delegate: ScrollViewControllerDelegate?
    
    
    // MARK: - View Life Cycle
    override func loadView() {
        
        if let vc = delegate?.viewControllers, vc.count != 0
        {
            self.viewControllers = vc
        }
        
        let scrollView = UIScrollView(frame: UIScreen.main.bounds)
        scrollView.bounces = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.isDirectionalLockEnabled = true
        scrollView.backgroundColor = .yellow
        scrollView.tag = 111
        view = scrollView
        view.backgroundColor = .clear
        
        if #available(iOS 11, *) {
            scrollView.contentInsetAdjustmentBehavior = .never
        }
        
//        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
//        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
//        self.view.addGestureRecognizer(swipeRight)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewControllers = delegate?.viewControllers
        
        // add view controllers as children
        for (index, controller) in viewControllers.enumerated() {
            if let controller = controller {
                addChild(controller)
                controller.view.frame = frame(for: index)
                scrollView.addSubview(controller.view)
                controller.didMove(toParent: self)
            }
        }
        
        scrollView.contentSize = CGSize(width: pageSize.width * CGFloat(viewControllers.count),
                                        height: pageSize.height)
        
        // set initial position of scroll view
        if let controller = delegate?.initialViewController {
            setController(to: controller, animated: false)
        }
    }
    
//    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//            switch swipeGesture.direction {
//            case UISwipeGestureRecognizer.Direction.right:
//                print("Swiped right")
//            case UISwipeGestureRecognizer.Direction.down:
//                print("Swiped down")
//            case UISwipeGestureRecognizer.Direction.left:
//                print("Swiped left")
//            case UISwipeGestureRecognizer.Direction.up:
//                print("Swiped up")
//            default:
//                break
//            }
//        }
//    }
}

// MARK: - Private methods
fileprivate extension ScrollVC {
    
    func frame(for index: Int) -> CGRect {
        return CGRect(x: CGFloat(index) * pageSize.width,
                      y: 0,
                      width: pageSize.width,
                      height: pageSize.height)
    }
    
    func indexFor(controller: UIViewController?) -> Int? {
        return viewControllers.firstIndex(where: {$0 == controller } )
    }
}

// MARK: - Public methods
extension ScrollVC {
    
    public func setController(to controller: UIViewController, animated: Bool) {
        guard let index = indexFor(controller: controller) else { return }
        
        let contentOffset = CGPoint(x: pageSize.width * CGFloat(index), y: 0)
        
        if animated {
            UIView.animate(withDuration: 0.2, delay: 0, options: [UIView.AnimationOptions.curveEaseOut], animations: {
                self.scrollView.setContentOffset(contentOffset, animated: false)
            })
        } else {
            scrollView.setContentOffset(contentOffset, animated: animated)
        }
        
        delegate?.scrollViewDidScroll()
    }
    
    public func isControllerVisible(_ controller: UIViewController?) -> Bool {
        guard controller != nil else { return false }
        for i in 0..<viewControllers.count {
            if viewControllers[i] == controller {
                let controllerFrame = frame(for: i)
                return controllerFrame.intersects(scrollView.bounds)
            }
        }
        return false
    }
}

// MARK: - UIScrollViewDelegate
extension ScrollVC: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

//        print(scrollView.tag)
//        if scrollView==self.scrollView {
//            print(scrollView.contentOffset.y)
//            if scrollView.contentOffset.y > 0 || scrollView.contentOffset.y < 0 {
//                scrollView.contentOffset.y = 0
//            }
//        }
        delegate?.scrollViewDidScroll()
    }
}
