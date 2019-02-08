//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import FuntastyKit

private struct ___VARIABLE_sceneIdentifier___Storyboard: StoryboardType {
    static let name = "___VARIABLE_sceneIdentifier___"
    static let navigationController = StoryboardReference<___VARIABLE_sceneIdentifier___Storyboard, UINavigationController>(id: "___VARIABLE_sceneIdentifier___NavigationControllerID")
    static let viewController = StoryboardReference<___VARIABLE_sceneIdentifier___Storyboard, ___VARIABLE_sceneIdentifier___ViewController>(id: "___VARIABLE_sceneIdentifier___ViewControllerID")
}

final class ___VARIABLE_sceneIdentifier___Coordinator: DefaultCoordinator {
    private let window: UIWindow
    private weak var destinationNavigationController: UINavigationController?
    weak var viewController: ___VARIABLE_sceneIdentifier___ViewController?

    private let serviceHolder: ServiceHolder

    init(window: UIWindow, serviceHolder: ServiceHolder) {
        self.window = window
        self.serviceHolder = serviceHolder
        self.destinationNavigationController = ___VARIABLE_sceneIdentifier___Storyboard.navigationController.instantiate()
        self.viewController = destinationNavigationController?.topViewController as? ___VARIABLE_sceneIdentifier___ViewController
    }

    func start() {
        guard let viewController = viewController, let destinationNavigationController = destinationNavigationController else {
            return
        }
        viewController.viewModel = ___VARIABLE_sceneIdentifier___ViewModel(coordinator: self, viewController: viewController)
        window.rootViewController = destinationNavigationController
    }
}

extension ___VARIABLE_sceneIdentifier___Coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput {
}
