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

public struct HotelInformation: Hashable, Decodable, Identifiable {
    public var id: Int
    public var residentRoomNo: Int
    public var residentName: String
    public var dateOfVacation: String
    public var progressValue: Float
    
    public init(id: Int,
                residentRoomNo: Int,
                residentName: String,
                dateOfVacation: String,
                progressValue: Float) {
        self.id = id
        self.residentRoomNo = residentRoomNo
        self.residentName = residentName
        self.dateOfVacation = dateOfVacation
        self.progressValue = progressValue
    }
}
