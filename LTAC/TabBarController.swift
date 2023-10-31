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
        calendarViewController.tabBarItem = UITabBarItem(title: "Календарь", image: UIImage(systemName: "calendar"), selectedImage: nil)
        
        let regulationsViewController = RegulationsViewController()
        regulationsViewController.tabBarItem = UITabBarItem(title: "Регламент", image: UIImage(systemName: "doc.text"), selectedImage: nil)
        
        let resultsViewController = ResultsViewController()
        resultsViewController.tabBarItem = UITabBarItem(title: "Результаты", image: UIImage(systemName: "list.bullet.clipboard"), selectedImage: nil)
        
        let photoGalleryViewController = PhotoGalleryViewController()
        photoGalleryViewController.tabBarItem = UITabBarItem(title: "Фото", image: UIImage(systemName: "photo.stack"), selectedImage: nil)
        
        let aboutLTACViewController = AboutLTACViewController()
        aboutLTACViewController.tabBarItem = UITabBarItem(title: "О LTAC", image: UIImage(systemName: "car.2"), selectedImage: nil)
        
        self.viewControllers = [
            regulationsViewController,
            resultsViewController,
            calendarViewController,
            photoGalleryViewController,
            aboutLTACViewController,
        ]
    }
}
