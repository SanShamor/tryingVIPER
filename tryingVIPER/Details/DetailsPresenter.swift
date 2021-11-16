//
//  DetailsPresenter.swift
//  tryingVIPER
//
//  Created by Александр on 15.11.2021.
//

import Foundation

struct DetailsData {
    let name: String
    let img: Data?
    let status: String
    let discription: String
}

class DetailsPresenter: DetailsViewOutputProtocol {
    
    unowned let view: DetailsViewInputProtocol
    var interactor: DetailcInteractorInputProtocol!
    
    required init(view: DetailsViewInputProtocol) {
        self.view = view
    }
    
    func viewDidLoad() {
        interactor.providePersonData()
    }
    func reloadButtonPressed() {
        interactor.providePersonData()
    }
}

extension DetailsPresenter: DetailsInteractorOutputProtocol {
    
    func personDidReceive(_ person: DetailsData) {
        view.displayPersonInfo(with: person.discription)
        guard let imageData = person.img else { return }
        view.displayPersonImage(with: imageData)
    }
}
 
