//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import FuntastyKit

fileprivate struct ___FILEBASENAMEASIDENTIFIER___Storyboard: StoryboardType {
    static let name = "___FILEBASENAMEASIDENTIFIER___"
    static let ___FILEBASENAMEASIDENTIFIER___NavigationController = StoryboardReference<___FILEBASENAMEASIDENTIFIER___Storyboard,
    UINavigationController>(id: "___FILEBASENAMEASIDENTIFIER___NavigationControllerID")
    static let ___FILEBASENAMEASIDENTIFIER___ViewController = StoryboardReference<___FILEBASENAMEASIDENTIFIER___Storyboard,
    ___FILEBASENAMEASIDENTIFIER___ViewController>(id: "___FILEBASENAMEASIDENTIFIER___ViewControllerID")
}

final class ___FILEBASENAMEASIDENTIFIER___Coordinator: DefaultCoordinator {
    var navigationController: UINavigationController?
    weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController?
    var viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel

    var serviceHolder: ServiceHolder

    init(navigationController: UINavigationController, viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel, serviceHolder: ServiceHolder) {
        self.viewModel = viewModel
        self.navigationController = navigationController
        self.serviceHolder = serviceHolder
        self.viewController = ___FILEBASENAMEASIDENTIFIER___Storyboard.___FILEBASENAMEASIDENTIFIER___ViewController.instantiate()
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
