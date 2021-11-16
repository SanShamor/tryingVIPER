//
//  GreetingConfigurator.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//

protocol GreetingConfiguratorInputProtocol {
    func configure(with view: GreetingViewController)
}

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(with view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        let router = GreetingRouter(viewController: view)
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
 
}
