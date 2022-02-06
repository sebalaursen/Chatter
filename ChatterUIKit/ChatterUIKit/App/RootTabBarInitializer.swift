//
//  RootInitializer.swift
//  ChatterUIKit
//
//  Created by Sebastian on /6/2/22.
//

import UIKit

class RootTabBarInitializer {
    static func createRoot() -> UIViewController {
        let root = UIStoryboard.main.instantiateViewController() as TabBarController
        
        let items = [
            createItem(title: "Contacts", nil) as ContactsViewController,
            createItem(title: "Chats", nil) as ChatViewController,
            createItem(title: "Settings", nil) as SettingsViewController
        ]
        
        root.viewControllers = items.map {
            let controller = UINavigationController(rootViewController: $0)
            controller.tabBarItem.title = $0.tabBarItem.title
            controller.tabBarItem.image = $0.tabBarItem.image
            return controller
        }
        
        root.viewControllers = items
        root.selectedIndex = 1
        
        return root
    }
}

private extension RootTabBarInitializer {
    static func createItem<ViewController: UIViewController>(title: String,_ image: UIImage?) -> ViewController {
        let vc = UIStoryboard.main.instantiateViewController() as ViewController
        vc.tabBarItem.title = title
        if let img = image {
            vc.tabBarItem.image = img
        }
        return vc
    }
}
