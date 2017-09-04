//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import FuntastyKit

struct ___FILEBASENAMEASIDENTIFIER___CellModel {

}

extension ___FILEBASENAMEASIDENTIFIER___CellModel: CellModel {
    func cellType() -> UIView.Type {
        return ___FILEBASENAMEASIDENTIFIER___Cell.self
    }

    var cellHeight: CGFloat {
        return 100.0 // FIXME: Use real height of cell.
    }
}
