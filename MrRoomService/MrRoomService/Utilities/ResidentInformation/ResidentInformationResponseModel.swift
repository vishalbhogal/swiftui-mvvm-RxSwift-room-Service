//
//  ResidentInformationResponseModel.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 26/01/22.
//

import Foundation

public struct ResidentInformationResponseModel: Decodable, Hashable {
    public var residentInformation: [ResidentInformation]
    
    public init(residentInformation: [ResidentInformation]) {
        self.residentInformation = residentInformation
    }
}

public struct ResidentInformation: Decodable, Hashable {
    public var items: [ResidentItems]
    
    public init(items: [ResidentItems]) {
        self.items = items
    }
}


public struct ResidentItems: Decodable, Hashable, Identifiable {
    public var id: Int
    public var item: String?
    public var quantity: Int?
    public var imageName: String
    
    public init(id: Int,
                item: String?,
                quantity: Int?,
                imageName: String) {
        self.id = id
        self.item = item
        self.quantity = quantity
        self.imageName = imageName
    }
}
