//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import AVFoundation

extension NSObject {
    public class var onlyClassName: String {
        return String(describing: self).components(separatedBy: ".").last ?? ""
    }
}
