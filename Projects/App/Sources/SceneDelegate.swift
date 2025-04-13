//
//  SceneDelegate.swift
//  App
//
//  Created by 정재학 on 4/13/25.
//

import UIKit
import UI
import Swinject

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    // MARK: - Properties
    
    /// 기본 윈도우
    var window: UIWindow?
    /// 디펜던시 컨테이너
    let container = DIContainer()
    
    // MARK: - Scene 구성
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = UINavigationController(
            rootViewController: container.resolve(ListViewController.self)
        )
        window?.makeKeyAndVisible()
    }
}
