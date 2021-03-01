//
//  Created by Sowrirajan S on 01/03/21.
//  Copyright © 2021 com.ssowri1. All rights reserved.
//

import UIKit

class HomeViewController: ParentViewController {
    
    @IBOutlet weak var listTableView: UITableView!
    
    private let viewModel = ListViewModel()
    private var payLoad: [String: Any] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.backgroundView = alertLabel
        listTableView.rowHeight = UITableView.automaticDimension
        listTableView.estimatedRowHeight = 44.0
        listTableView.registerCell(name: ListTableViewCell.onlyClassName, bundle: nil)
        updateUI()
    }
    
    private func updateUI() {
        viewModel.fetchData(viewController: self, closureHanlder: { (_) in
            DispatchQueue.main.async {
                self.listTableView.reloadData()
                self.alertLabel.text = ""
            }
        })
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DetailViewController {
            let viewController: DetailViewController = (segue.destination as? DetailViewController)!
            viewController.payLoad = payLoad
        }
    }
}

// MARK:- TableView Datasource
extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.serviceResponse?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ListTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.data = viewModel.setData(indexPath.row)
        return cell
    }
}

// MARK:- TableView Delegates
extension HomeViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedData = viewModel.setData(indexPath.row)
        payLoad = ["Title" : selectedData?.title ?? "",
                   "Image": selectedData?.image ?? "",
                   "Description": selectedData?.serviceModelDescription ?? ""]
        self.performSegue(withIdentifier: SegueIdentifier.homeToDetail, sender: nil)
    }
}
