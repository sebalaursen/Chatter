//
//  Storyboard.swift
//  ChatterUIKit
//
//  Created by Sebastian on /6/2/22.
//

import UIKit

extension UIStoryboard {
    
    func instantiateViewController<ViewController: UIViewController>(withIdentifier identifier: String = .init(describing: ViewController.self)) -> ViewController {
        guard let controller = instantiateViewController(withIdentifier: identifier) as? ViewController else {
            fatalError("Could not find \(ViewController.self) in \(self)")
        }
        
        return controller
    }
}

extension UIStoryboard {
    
    static let main = UIStoryboard(name: "Main", bundle: nil)
    static let auth = UIStoryboard(name: "Auth", bundle: nil)
}
