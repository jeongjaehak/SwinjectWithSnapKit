import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "App",
    settings: .settings(base: SettingsDictionary()
        .merging(Settings.commonSettings)
    ),
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.SwinjectWithSnapKit",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(
                with: [
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
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Controllers", path: "../Controllers")
            ]
        ),
        .target(
            name: "SwinjectWithSnapKitTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.SwinjectWithSnapKitTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "App")]
        ),
    ]
)
