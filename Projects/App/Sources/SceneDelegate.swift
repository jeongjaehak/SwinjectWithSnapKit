//
//  SceneDelegate.swift
//  App
//
//  Created by 정재학 on 4/13/25.
//

import UIKit
 
final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
 
        let viewController = UIViewController()
        viewController.view.backgroundColor = .orange
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }
}
