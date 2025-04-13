import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Controllers",
    targets: [
        .target(
            name: "Controllers",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.SwinjectWithSnapKit",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .Project.useCases,
//                .SDK.combine
            ]
        )
    ]
)
