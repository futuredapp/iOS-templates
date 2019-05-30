//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___ using ArchitectureKit Push Collection View Scene Template (v1.0)..
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import FuntastyKit

private struct ___VARIABLE_sceneIdentifier___Storyboard: StoryboardType {
    static let name = "___VARIABLE_sceneIdentifier___"
    static let viewController = StoryboardReference<___VARIABLE_sceneIdentifier___Storyboard, ___VARIABLE_sceneIdentifier___CollectionViewController>(id: "___VARIABLE_sceneIdentifier___CollectionViewControllerID")
}

final class ___VARIABLE_sceneIdentifier___Coordinator: PushCoordinator {
    let navigationController: UINavigationController
    weak var viewController: ___VARIABLE_sceneIdentifier___CollectionViewController?

    private let serviceHolder: ServiceHolder

    init(navigationController: UINavigationController, serviceHolder: ServiceHolder) {
        self.navigationController = navigationController
        self.serviceHolder = serviceHolder
        self.viewController = ___VARIABLE_sceneIdentifier___Storyboard.viewController.instantiate()
    }

    func configure(viewController: ___VARIABLE_sceneIdentifier___CollectionViewController) {
        viewController.viewModel = ___VARIABLE_sceneIdentifier___ViewModel(coordinator: self, viewController: viewController)
    }
}

extension ___VARIABLE_sceneIdentifier___Coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput {
}
