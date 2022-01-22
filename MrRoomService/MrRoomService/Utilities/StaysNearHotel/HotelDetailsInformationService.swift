//
//  StaysNearHotelService.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 19/01/22.
//

import Combine
import Darwin
import Foundation
import RxSwift
import UIKit

public protocol HotelDetailsInformationServiceable {
    func getRatingsWithHotelName() -> Observable<HotelInformationResponseModel>
}

public class HotelDetailsInformationService: HotelDetailsInformationServiceable {
    public func getRatingsWithHotelName() -> Observable<HotelInformationResponseModel> {
        return Observable.create { observer in

            guard let path = Bundle.main.path(forResource: "HotelCardInfo", ofType: "json") else {
                observer.onError(NSError())
                return Disposables.create()
            }
            
                    do {
                        let dataTask = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                        let decodeOutput = try JSONDecoder().decode(HotelInformationResponseModel.self, from: dataTask)
                        observer.onNext(decodeOutput)
                    } catch {
                        observer.onError(error)
                    }
            return Disposables.create {}
        }
    }
}
