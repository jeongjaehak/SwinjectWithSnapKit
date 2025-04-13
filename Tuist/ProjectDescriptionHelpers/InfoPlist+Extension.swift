//
//  InfoPlist+Extension.swift
//  ProjectDescriptionHelpers
//
//  Created by 정재학 on 4/13/25.
//

import ProjectDescription

extension InfoPlist {
    public static var sceneDelegate: [String: Plist.Value] {
        [
            "UILaunchStoryboardName": "LaunchScreen.storyboard",
            "UIApplicationSceneManifest": [
                "UIApplicationSupportsMultipleScenes": false,
                "UISceneConfigurations": [
                    "UIWindowSceneSessionRoleApplication": [
                        [
                            "UISceneConfigurationName": "Default Configuration",
                            "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                        ],
                    ]
                ]
            ],
        ]
    }
}
