//
//  DetailsViewController.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//

import UIKit

protocol DetailsViewInputProtocol: AnyObject {
    func displayPersonImage(with imageData: Data)
    func displayPersonInfo(with title: String)
}

protocol DetailsViewOutputProtocol: AnyObject {
    func viewDidLoad()
    func reloadButtonPressed()
}

class DetailsViewController: UIViewController {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personInfoLabel: UILabel!
    
    var presenter: DetailsViewOutputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    @IBAction func downloadDataButtonPressed(_ sender: Any) {
        presenter.reloadButtonPressed()
    }
    
}

//MARK: - DetailsViewInputProtocol
extension DetailsViewController: DetailsViewInputProtocol {
    func displayPersonImage(with imageData: Data) {
        personImage.image = UIImage(data:imageData)
    }
    
    func displayPersonInfo(with title: String) {
        personInfoLabel.text = title
    }
    
    
}
