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

protocol ___VARIABLE_sceneIdentifier___CellFactoryDelegate: class {
}

final class ___VARIABLE_sceneIdentifier___CellFactory {

    // MARK: - Types

    typealias Output = [CellModelSection]

    struct Input {
    }

    enum ActionType {
    }

    // MARK: - Properties

    weak var delegate: ___VARIABLE_sceneIdentifier___CellFactoryDelegate?

    // MARK: - Initialization

    init(coordinator: ___VARIABLE_sceneIdentifier___CoordinatorInput, viewController: ___VARIABLE_sceneIdentifier___ViewControllerInput) {
        self.coordinator = coordinator
        self.viewController = viewController
    }

    // MARK: - Actions

    func cells(for input: Input) -> Output {
        return [
            // TODO
        ]
    }

    // MARK: - Sections

    // TODO

    // MARK: - Cells

    // TODO
}
