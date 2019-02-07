//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import FuntastyKit

protocol ___VARIABLE_sceneIdentifier___CoordinatorInput: Coordinator {
}

protocol ___VARIABLE_sceneIdentifier___ViewControllerInput: class {
}

final class ___VARIABLE_sceneIdentifier___ViewModel {
    private let coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput
    private weak var viewController: ___VARIABLE_sceneIdentifier___ViewControllerInput?

    init(coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput, viewController: ___VARIABLE_sceneIdentifier___ViewControllerInput) {
        self.coordinator = coordinator
        self.viewController = viewController
    }
}
