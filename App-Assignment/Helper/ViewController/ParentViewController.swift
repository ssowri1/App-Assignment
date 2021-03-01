//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {
    var alertLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAlert()
    }
    func configureAlert() {
        alertLabel.frame = CGRect(x: 20, y: 20, width: 110, height: 110)
        alertLabel.text = "Loading..."
        alertLabel.textAlignment = .center
        alertLabel.center = self.view.center
        alertLabel.numberOfLines = 0
        alertLabel.lineBreakMode = .byWordWrapping
    }
}
