//
//  CovidDetailViewController.swift
//  COVID19
//
//  Created by 정한결 on 2023/05/08.
//

import UIKit

class CovidDetailViewController: UITableViewController {

    @IBOutlet weak var regionalOutbreakCell: UITableViewCell!
    @IBOutlet weak var overseassInFlowCell: UITableViewCell!
    @IBOutlet weak var percentageCell: UITableViewCell!
    @IBOutlet weak var deathCell: UITableViewCell!
    @IBOutlet weak var recoveredCell: UITableViewCell!
    @IBOutlet weak var totalCaseCell: UITableViewCell!
    @IBOutlet weak var newCaseCell: UITableViewCell!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
