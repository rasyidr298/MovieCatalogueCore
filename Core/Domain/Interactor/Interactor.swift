//
//  Interactor.swift
//  Core
//
//  Created by Rasyid Ridla on 30/9/21.
//

import Foundation
import Combine

public struct Interactor<Request, Response, R: Repository>: UseCaseType where R.Request == Request, R.Response == Response {

    private let repository: R

    public init(repository: R) {
        self.repository = repository
    }

    public func execute(request: Request?) -> AnyPublisher<Response, Error> {
        self.repository.execute( request: request)
    }
}
