//
//  Sport.swift
//  SportsApp
//
//  Created by Nader Said on 07/06/2022.
//

import Foundation

class Sport 
{
    var strSport: String
    var strSportThumb: String
    init(strSport: String, strSportThumb: String)
    {
        self.strSport = strSport
        self.strSportThumb = strSportThumb
    }
}

class SportModel: Sport,Decodable
{
    var idSport :String?
    var strFormat: StrFormat?
    var strSportIconGreen: String?
    var strSportDescription: String?

    init(idSport: String?, strSport: String, strFormat: StrFormat?, strSportThumb: String, strSportIconGreen: String?, strSportDescription: String?)
    {
        self.idSport = idSport
        self.strFormat = strFormat
        self.strSportIconGreen = strSportIconGreen
        self.strSportDescription = strSportDescription
        super.init(strSport: strSport, strSportThumb: strSportThumb)

    }
    required init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.idSport = try container.decode(String?.self, forKey: .idSport)
        self.strSportIconGreen = try container.decode(String?.self, forKey: .strSportIconGreen)
        self.strSportDescription = try container.decode(String?.self, forKey: .strSportDescription)
        self.strFormat =  StrFormat(rawValue: try (container.decode(String?.self, forKey: .strFormat) ?? "")) ?? StrFormat(rawValue: "")

        let strSport = try container.decode(String.self, forKey: .strSport)
        let strSportThumb = try container.decode(String.self, forKey: .strSportThumb)
        super.init(strSport: strSport, strSportThumb: strSportThumb)
    }
    
    private enum CodingKeys: String, CodingKey
    {
        case strSport
        case strSportThumb
        case idSport
        case strFormat
        case strSportIconGreen
        case strSportDescription
    }
}

enum StrFormat: String, Codable
{
    case eventSport = "EventSport"
    case teamvsTeam = "TeamvsTeam"
}


