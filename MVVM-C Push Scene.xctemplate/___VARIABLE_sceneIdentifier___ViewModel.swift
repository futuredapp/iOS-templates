//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import CellKit
import FuntastyKit
import RxSwift

protocol ___VARIABLE_sceneIdentifier___CoordinatorInput: SACoordinatorInput {
}

protocol ___VARIABLE_sceneIdentifier___ViewControllerInput: SATableViewControllerInput {
}

final class ___VARIABLE_sceneIdentifier___ViewModel {

    // MARK: - Properties

    private let coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput
    private weak var viewController: ___VARIABLE_sceneIdentifier___ViewControllerInput?

    // MARK: - Initialization

    init(coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput, viewController: ___VARIABLE_sceneIdentifier___ViewControllerInput) {
        self.coordinator = coordinator
        self.viewController = viewController
    }

    // MARK: - Actions

    func viewDidLoad() {
        viewController?.update(state: .isLoading)
        loadData()
    }

    // MARK: - Utilities

    private func loadData() {
        // code..
    }
}
