import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "UI",
    targets: [
        .target(
            name: "UI",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.SwinjectWithSnapKit",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .Project.controllers,
                .External.snapKit,
//                .SDK.combine
            ]
        )
    ]
)
