//
//  DetailsInteractor.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//

import Foundation

protocol DetailcInteractorInputProtocol {
    init(presenter: DetailsInteractorOutputProtocol)
    func providePersonData()
}

protocol DetailsInteractorOutputProtocol: AnyObject {
    func personDidReceive(_ person: DetailsData)
}

class DetailsInteractor: DetailcInteractorInputProtocol {
    unowned let presenter: DetailsInteractorOutputProtocol
    
    required init(presenter: DetailsInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func providePersonData() {
        NetworkManager.shared.fetchData { person in
            let personData = person[0]
            let imageData = ImageManager.shared.fetchImageData(from: personData.img)
            let discription = "Name: \(personData.name)\nStatus: \(personData.status)"
            let detailsData = DetailsData(
                name: personData.name,
                img: imageData,
                status: personData.status,
                discription: discription
            )
            self.presenter.personDidReceive(detailsData)
        }
    }
}
