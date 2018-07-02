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
    static let viewController = StoryboardReference<___VARIABLE_sceneIdentifier___Storyboard, ___VARIABLE_sceneIdentifier___ViewController>(id: "___VARIABLE_sceneIdentifier___ViewControllerID")
}

final class ___VARIABLE_sceneIdentifier___Coordinator: PushCoordinator {
    let navigationController: UINavigationController
    weak var viewController: ___VARIABLE_sceneIdentifier___ViewController?

    private let serviceHolder: ServiceHolder

    init(navigationController: UINavigationController, serviceHolder: ServiceHolder) {
        self.navigationController = navigationController
        self.serviceHolder = serviceHolder
        self.viewController = ___VARIABLE_sceneIdentifier___Storyboard.viewController.instantiate()
    }

    func configure(viewController: ___VARIABLE_sceneIdentifier___ViewController) {
        viewController.viewModel = ___VARIABLE_sceneIdentifier___ViewModel(coordinator: self, viewController: viewController)
    }
}

extension ___VARIABLE_sceneIdentifier___Coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput {
}
