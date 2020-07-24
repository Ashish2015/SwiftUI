//
//  PageViewController.swift
//  Landmarks
//
//  Created by Ashish Prajapati on 04/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
   
     @Binding var currentPage: Int
    
    func makeCoordinator() -> PageViewController.Coordinator {
        Coordinator(self)
    }
    
    var controllers:[UIViewController]
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<PageViewController>) -> UIPageViewController {
        
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
             pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: UIViewControllerRepresentableContext<PageViewController>) {
        
        pageViewController.setViewControllers([controllers[0]], direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
       
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = parent.controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index == 0 {
                return parent.controllers.last
            }
            return parent.controllers[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = parent.controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index + 1 == parent.controllers.count {
                return parent.controllers.first
            }
            return parent.controllers[index + 1]
        }
        
        
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
           
            if completed,
                let visibleViewController = pageViewController.viewControllers?.first,
                let index = parent.controllers.firstIndex(of: visibleViewController)
            {
                parent.currentPage = index
            }
        }
        
        var parent: PageViewController
        
        init(_ pageViewController:PageViewController) {
            self.parent = pageViewController
        }
        
        
        
    }
    
}


