//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import FuntastyKit

fileprivate struct ___VARIABLE_sceneIdentifier___Storyboard: StoryboardType {
    static let name = "___VARIABLE_sceneIdentifier___"
    static let ___VARIABLE_sceneIdentifier___NavigationController = StoryboardReference<___VARIABLE_sceneIdentifier___Storyboard,
    UINavigationController>(id: "___VARIABLE_sceneIdentifier___NavigationControllerID")
    static let ___VARIABLE_sceneIdentifier___ViewController = StoryboardReference<___VARIABLE_sceneIdentifier___Storyboard,
    ___VARIABLE_sceneIdentifier___ViewController>(id: "___VARIABLE_sceneIdentifier___ViewControllerID")
}

final class ___VARIABLE_sceneIdentifier___Coordinator: DefaultCoordinator {
    var navigationController: UINavigationController?
    weak var viewController: ___VARIABLE_sceneIdentifier___ViewController?
    var viewModel: ___VARIABLE_sceneIdentifier___ViewModel

    var serviceHolder: ServiceHolder

    init(navigationController: UINavigationController, viewModel: ___VARIABLE_sceneIdentifier___ViewModel, serviceHolder: ServiceHolder) {
        self.viewModel = viewModel
        self.navigationController = navigationController
        self.serviceHolder = serviceHolder
        self.viewController = ___VARIABLE_sceneIdentifier___Storyboard.___VARIABLE_sceneIdentifier___ViewController.instantiate()
    }

    func start() {
        guard let viewController = viewController else {
            return
        }
        viewController.viewModel = viewModel
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }

    func stop() {
        _ = navigationController?.popViewController(animated: true)
    }
}
