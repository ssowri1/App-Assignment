//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import UIKit
import Foundation

// MARK: - ServiceModelElement
struct ServiceModelElement: Codable {
    let image: String
    let serviceModelDescription, title: String

    enum CodingKeys: String, CodingKey {
        case image
        case serviceModelDescription = "description"
        case title
    }
}

typealias ServiceModel = [ServiceModelElement]
