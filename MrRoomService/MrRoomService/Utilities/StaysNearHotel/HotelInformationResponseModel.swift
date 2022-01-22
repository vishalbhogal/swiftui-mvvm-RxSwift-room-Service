//
//  HotelInformationResponseModel.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 21/01/22.
//

import Foundation

public struct HotelInformationResponseModel: Hashable, Decodable {
    public var hotelInformation: [HotelInformation]
}

public struct HotelInformation: Hashable, Decodable {
    
    public enum CodingKeys: CodingKey {
        case residentRoomNo
        case residentName
        case dateOfVacation
    }
    
    public var residentRoomNo: Int
    public var residentName: String
    public var dateOfVacation: String
}
