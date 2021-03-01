//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import UIKit

class ListViewModel: NSObject {
    var serviceResponse: ServiceModel? = []
    func numberOfRowsInSection() -> Int {
        return serviceResponse?.count ?? 0
    }
    
    func setData(_ index: Int) -> ServiceModelElement? {
        guard index < serviceResponse?.count ?? 0 else { return nil }
        guard let issue = serviceResponse?[index] else { return nil }
        return issue
    }
    
    func fetchData(viewController: UIViewController,
                   closureHanlder: @escaping(_ status: Bool) -> Void) {
        let url = ApiConstansts.fetchUrl(.dummyData)
        ServiceWorker.fetch(url: url, viewController: viewController) { (responseData: ServiceModel) in
            self.serviceResponse = responseData
            closureHanlder(true)
        }
    }
}
