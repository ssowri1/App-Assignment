//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    
    func boldString(_ value: String, _ fontSize: CGFloat? = 14) -> NSMutableAttributedString {
        let attributes:[NSAttributedString.Key : Any] = [
            .font : Fonts.Avenir.Bold.size(fontSize!),
            .foregroundColor: UIColor.black
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }

    func normalString(_ value: String, _ fontSize: CGFloat? = 14) -> NSMutableAttributedString {
        let attributes:[NSAttributedString.Key : Any] = [
            .font : Fonts.Avenir.Regular.size(fontSize!),
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    /* Other styling methods */
    func orangeHighlight(_ value: String, _ fontSize: CGFloat? = 14) -> NSMutableAttributedString {
        let attributes:[NSAttributedString.Key : Any] = [
            .font :  Fonts.Avenir.Regular.size(fontSize!),
            .foregroundColor : UIColor.white,
            .backgroundColor : UIColor.orange
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    func blackHighlight(_ value: String, _ fontSize: CGFloat? = 14) -> NSMutableAttributedString {
        let attributes:[NSAttributedString.Key : Any] = [
            .font :  Fonts.Avenir.Regular.size(fontSize!),
            .foregroundColor : UIColor.white,
            .backgroundColor : UIColor.black
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    func underlined(_ value:String, _ fontSize: CGFloat? = 14) -> NSMutableAttributedString {
        let attributes:[NSAttributedString.Key : Any] = [
            .font :  Fonts.Avenir.Regular.size(fontSize!),
            .underlineStyle : NSUnderlineStyle.single.rawValue
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
}
