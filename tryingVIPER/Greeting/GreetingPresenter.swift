//
//  GreetingPresenter.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//

struct GreetingData {
    let name: String
    let surname: String
    let age: String
}

class GreetingPresenter: GreetingViewOutputProtocol {
    unowned let view: GreetingViewInputProtocol
    var interactor: GreetingInteractorInputProtocol!
    
    required init(view: GreetingViewInputProtocol) {
        self.view = view
    }
    
    func didTapShowGreetingButton() {
        interactor.provideGreetingData()
    }
}

//MARK: - GreetingInteractorOutputProtocol
extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "Hi, mr. \(greetingData.name) \(greetingData.surname).\nAs I know you were born in \(greetingData.age)!"
        view.setGreeting(greeting)
    }
}
