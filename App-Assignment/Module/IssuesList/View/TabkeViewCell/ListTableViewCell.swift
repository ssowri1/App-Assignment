//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import UIKit
import AlamofireImage

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionDetail: UILabel!
    @IBOutlet weak var logo: UIImageView!
    
    var data: ServiceModelElement? {
        didSet {
            if let data = data, let imageURL = URL(string: data.image) {
                logo.af.setImage(withURL: imageURL)
                titleLabel.text = data.title
                descriptionDetail.text = data.serviceModelDescription
            }
        }
    }
}
