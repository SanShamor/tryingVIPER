//
//  GreetingRouter.swift
//  tryingVIPER
//
//  Created by Александр on 16.11.2021.
//

import Foundation

protocol GreetingRouterInputProtocol {
    init(viewController: GreetingViewController)
    func openDetailsViewController()
}

class GreetingRouter: GreetingRouterInputProtocol {
    unowned let viewController: GreetingViewController
    
    required init(viewController: GreetingViewController) {
        self.viewController = viewController
    }
    
    func openDetailsViewController() {
        viewController.performSegue(withIdentifier: "ShowDetails", sender: nil)
    }
    
    
}
