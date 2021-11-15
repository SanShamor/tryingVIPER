//
//  DetailsViewController.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//

import UIKit

protocol DetailsViewControllerInputProtocol {
    
}

protocol DetailcViewControllerOutputProtocol{
    
}

class DetailsViewController: UIViewController {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func downloadDataButtonPressed(_ sender: Any) {
    }
    
}
