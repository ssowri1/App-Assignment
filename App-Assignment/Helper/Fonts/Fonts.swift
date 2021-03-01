//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import UIKit

public struct Fonts {
    enum Avenir: String {
        case Regular = "AvenirNext-Regular"
        case Bold = "AvenirNext-Bold"
        case Medium = "AvenirNext-Medium"
        case Italic = "AvenirNext-Italic"

        func size(_ size: CGFloat) -> UIFont {
            return UIFont(name: self.rawValue, size: size)!
        }
    }
}
