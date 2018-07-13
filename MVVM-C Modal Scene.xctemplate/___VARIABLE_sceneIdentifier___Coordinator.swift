//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import FuntastyKit

final class ___VARIABLE_sceneIdentifier___Coordinator: ModalCoordinator {

    // MARK: - Properties

    let sourceViewController: UIViewController
    var destinationNavigationController: UINavigationController?
    var viewController: ___VARIABLE_sceneIdentifier___ViewController?

    private let serviceHolder: ServiceHolder

    // MARK: - Initialization

    init(sourceViewController: UIViewController, serviceHolder: ServiceHolder) {
        self.sourceViewController = sourceViewController
        self.viewController = ___VARIABLE_sceneIdentifier___ViewController()
        self.serviceHolder = serviceHolder
    }

    // MARK: - Utilities

    func configure(viewController: ___VARIABLE_sceneIdentifier___ViewController) {
        viewController.viewModel = ___VARIABLE_sceneIdentifier___ViewModel(coordinator: self, viewController: viewController)
    }
}

extension ___VARIABLE_sceneIdentifier___Coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput {
}
