//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import UIKit

struct ApiConstansts {
    // scheme
    static let scheme: String = "https"
    // host
    static let host: String = "gist.githubusercontent.com"
}

enum servicePath: String {
        // path
    case dummyData = "/ashwini9241/6e0f26312ddc1e502e9d280806eed8bc/raw/7fab0cf3177f17ec4acd6a2092fc7c0f6bba9e1f/saltside-json-data"
}

struct CellIdentifier {
    // issues tableView cell
    static let issuesTableViewCell: String = "issuesTableViewCell"
}

struct SegueIdentifier {
    static let homeToDetail = "hometodetail"
}

struct AppConstants {
    static let detailController = "Issue in Detail"
}
