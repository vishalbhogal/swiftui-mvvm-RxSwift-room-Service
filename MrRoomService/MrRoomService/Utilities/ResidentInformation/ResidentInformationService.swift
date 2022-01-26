//
//  ResidentInformationService.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 26/01/22.
//

import Combine
import Darwin
import Foundation
import RxSwift
import UIKit

public protocol ResidentDetailsInformationServiceable {
    func getRatingsWithHotelName() -> Observable<ResidentInformationResponseModel>
}

public class ResidentDetailsInformationService: ResidentDetailsInformationServiceable {
    public func getRatingsWithHotelName() -> Observable<ResidentInformationResponseModel> {
        return Observable.create { observer in

            guard let path = Bundle.main.path(forResource: "residentInformation", ofType: "json") else {
                observer.onError(NSError())
                return Disposables.create()
            }
            
                    do {
                        let dataTask = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                        let decodeOutput = try JSONDecoder().decode(ResidentInformationResponseModel.self, from: dataTask)
                        observer.onNext(decodeOutput)
                    } catch {
                        observer.onError(error)
                    }
            return Disposables.create {}
        }
    }
}
