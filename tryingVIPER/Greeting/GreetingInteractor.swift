//
//  GreetingInteractor.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//
protocol GreetingInteractorInputProtocol: AnyObject {
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: AnyObject {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingInteractorInputProtocol {
    unowned let presenter: GreetingInteractorOutputProtocol
    
    required init(presenter: GreetingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func provideGreetingData() {
        let user = Person(name: "Alex", surname: "Shamor", birthYear: 1997)
        let age = String(user.birthYear)
        
        let greetingData = GreetingData(name: user.name, surname: user.surname, age: age)
        presenter.receiveGreetingData(greetingData: greetingData)
    }
    
}
