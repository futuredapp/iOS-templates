//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneIdentifier___ViewController: SATableViewController {

    // MARK: - Properties

    var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.viewDidLoad()
    }

    // MARK: - Setup

    override func setupNavigationBar() {
        super.setupNavigationBar()

        // code..
    }

    // MARK: - Actions
    
}

extension ___VARIABLE_sceneIdentifier___ViewController: ___VARIABLE_sceneIdentifier___ViewControllerInput {
}
