//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import FuntastyKit

struct ___VARIABLE_sourceCellIdentifier___CellModel {

}

extension ___VARIABLE_sourceCellIdentifier___CellModel: CellModel {
    func cellType() -> UIView.Type {
        return ___VARIABLE_sourceCellIdentifier___Cell.self
    }

    var cellHeight: CGFloat {
        return UITableViewAutomaticDimension
    }
}
