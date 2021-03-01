//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import UIKit
import WebKit
import AlamofireImage

class DetailViewController: UIViewController {
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var index: Int?
    let viewModel = ListViewModel()
    
    var payLoad: [String: Any]?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUserDetail()
    }
    
    func updateUserDetail() {
        if let title = payLoad?["Title"], let imageURL = URL(string: payLoad?["Image"] as! String), let description = payLoad?["Description"] {
            imageView.af.setImage(withURL: imageURL)
            details.attributedText = NSMutableAttributedString().boldString("\(title)", 17).normalString("\n \(description)")
        }
    }
}
