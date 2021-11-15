//
//  GreetingViewController.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//

import UIKit

protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol {
    init(view: GreetingViewInputProtocol)
    func didTapShowGreetingButton()
}

class GreetingViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    var presenter: GreetingViewOutputProtocol!
    
    private let configurator: GreetingConfiguratorInputProtocol = GreetingConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
    }
    
    @IBAction func showGreetingButtonPressed(_ sender: Any) {
        presenter.didTapShowGreetingButton()
    }
    
    @IBAction func goToDetailScreenButtonPressed(_ sender: Any) {
    }
    
}

// Mark: - GreetingViewInputProtocol
extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
    
}
