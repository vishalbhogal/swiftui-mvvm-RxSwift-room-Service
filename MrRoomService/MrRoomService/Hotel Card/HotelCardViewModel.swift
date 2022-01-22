//
//  HotelCardViewModel.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 20/01/22.
//

import Foundation
import RxSwift

class HotelCardViewModel: ObservableObject {
    @Published var hotelCardData: HotelInformationResponseModel  = HotelInformationResponseModel(hotelInformation: [])
    private let staysNearHotelService: HotelDetailsInformationServiceable
    
    init(staysNearHotelService: HotelDetailsInformationServiceable) {
        self.staysNearHotelService = staysNearHotelService
    }
    
    public func getStaysNearHotelRatings() {
        let staysNearHotelServiceEvent = staysNearHotelService.getRatingsWithHotelName()
        staysNearHotelServiceEvent
            .subscribe(onNext: { response in
                self.hotelCardData = response
            }).disposed(by: DisposeBag())
    }
}
