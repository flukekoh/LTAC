//
//  TabBarController.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = .ltacWhiteBase
        tabBar.barTintColor = .ltacWhiteAccent
        tabBar.tintColor = .ltacBlack
        tabBar.unselectedItemTintColor = .ltacRED

        tabBar.isTranslucent = false
        
        let calendarViewController = CalendarViewController()
        calendarViewController.tabBarItem = UITabBarItem(title: "Календарь", image: UIImage(systemName: "record.circle.fill"), selectedImage: nil)
        
        let regulationsViewController = RegulationsViewController()
        regulationsViewController.tabBarItem = UITabBarItem(title: "Регламент", image: UIImage(systemName: "hare.fill"), selectedImage: nil)
        
        let resultsViewController = ResultsViewController()
        resultsViewController.tabBarItem = UITabBarItem(title: "Результаты", image: UIImage(systemName: "hare.fill"), selectedImage: nil)
        
        let photoGalleryViewController = PhotoGalleryViewController()
        photoGalleryViewController.tabBarItem = UITabBarItem(title: "Фото", image: UIImage(systemName: "hare.fill"), selectedImage: nil)
        
        let aboutLTACViewController = AboutLTACViewController()
        aboutLTACViewController.tabBarItem = UITabBarItem(title: "О LTAC", image: UIImage(systemName: "hare.fill"), selectedImage: nil)
        
        self.viewControllers = [
            regulationsViewController,
            resultsViewController,
            calendarViewController,
            photoGalleryViewController,
            aboutLTACViewController,
        ]
    }
}
