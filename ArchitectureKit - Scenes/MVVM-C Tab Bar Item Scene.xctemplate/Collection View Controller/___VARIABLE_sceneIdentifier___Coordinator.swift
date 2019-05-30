//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___ using ArchitectureKit Tab Item Collection View Scene Template (v1.0).
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import FuntastyKit

private struct ___VARIABLE_sceneIdentifier___Storyboard: StoryboardType {
    static let name = "___VARIABLE_sceneIdentifier___"
    static let navigationController = StoryboardReference<___VARIABLE_sceneIdentifier___Storyboard, UINavigationController>(id: "___VARIABLE_sceneIdentifier___NavigationControllerID")
    static let viewController = StoryboardReference<___VARIABLE_sceneIdentifier___Storyboard, ___VARIABLE_sceneIdentifier___CollectionViewController>(id: "___VARIABLE_sceneIdentifier___CollectionViewControllerID")
}

final class ___VARIABLE_sceneIdentifier___Coordinator: ModalCoordinator {
    let sourceViewController: UIViewController
    weak var destinationNavigationController: UINavigationController?
    weak var viewController: ___VARIABLE_sceneIdentifier___CollectionViewController?

    private let serviceHolder: ServiceHolder

    init(sourceViewController: UIViewController, serviceHolder: ServiceHolder) {
        self.sourceViewController = sourceViewController
        self.serviceHolder = serviceHolder
        self.destinationNavigationController = ___VARIABLE_sceneIdentifier___Storyboard.navigationController.instantiate()
        self.viewController = destinationNavigationController?.topViewController as? ___VARIABLE_sceneIdentifier___CollectionViewController
    }

    func configure(viewController: ___VARIABLE_sceneIdentifier___CollectionViewController) {
        viewController.viewModel = ___VARIABLE_sceneIdentifier___ViewModel(coordinator: self, viewController: viewController)
    }
}

extension ___VARIABLE_sceneIdentifier___Coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput {
}
