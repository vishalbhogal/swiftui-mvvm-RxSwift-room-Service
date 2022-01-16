//
//  HotelCardCellDataModel.swift
//  MrRoomService
//
//  Created by Vishal, Bhogal (B.) on 16/01/22.
//

import Foundation
import SwiftUI

struct HotelCard: Identifiable {
    let id = UUID()
    let roomNumber: Int
    let ownerName: String
    let dateOfVacating: String
    let colorOfDate: Color
    let progressValue: Float
}

struct HotelCardData {
    static let hotelOccupanyDetails = [
        HotelCard(roomNumber: 201, ownerName: "Vishal Bhogal", dateOfVacating: "Sunday (29/12)", colorOfDate: .red, progressValue: 0.3),
        HotelCard(roomNumber: 202, ownerName: "Arnubh Goswami", dateOfVacating: "Monday (22/2)", colorOfDate: .green, progressValue: 0.7),
        HotelCard(roomNumber: 203, ownerName: "Anjana Om Kashyap", dateOfVacating: "Friday (2/1)", colorOfDate: .red, progressValue: 0.4),
        HotelCard(roomNumber: 201, ownerName: "Ravish Kumar", dateOfVacating: "Thursday (9/12)", colorOfDate: .green, progressValue: 0.6),
        HotelCard(roomNumber: 201, ownerName: "Prannav Roy", dateOfVacating: "Tuesday (13/11)", colorOfDate: .red, progressValue: 0.3),
        HotelCard(roomNumber: 201, ownerName: "Abhinandan Sekri", dateOfVacating: "Sunday (26/08)", colorOfDate: .green, progressValue: 0.1)
    ]
}

