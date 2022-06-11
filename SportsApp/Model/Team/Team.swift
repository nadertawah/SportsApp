//
//  File.swift
//  SportsApp
//
//  Created by Nader Said on 09/06/2022.
//

import Foundation

class Team
{
    var strTeam,strLeague,intFormedYear,strTeamBadge, strDescriptionEN: String?
    init(strTeam : String?,strLeague : String?,intFormedYear : String?,strTeamBadge:String?,strDescriptionEN: String?)
    {
        self.intFormedYear = intFormedYear
        self.strTeam = strTeam
        self.strLeague = strLeague
        self.strTeamBadge = strTeamBadge
        self.strDescriptionEN = strDescriptionEN
        
        
    }
    init(){}
}

class TeamModel:Team, Decodable
{
    var idTeam,strTeamShort,strStadium,strStadiumThumb,strStadiumDescription: String?
    var idSoccerXML: String?
    var idAPIfootball, intLoved: String?
    var strAlternate, strSport: String?
    var idLeague: String?
    var strLeague2, idLeague2, strLeague3, idLeague3: String?
    var strLeague4: String?
    var idLeague4: String?
    var strLeague5: String?
    var idLeague5: String?
    var strLeague6: String?
    var idLeague6: String?
    var strLeague7: String?
    var idLeague7, strDivision: String?
    var strManager, strKeywords, strRSS: String?
    var strStadiumLocation, intStadiumCapacity, strWebsite: String?
    var strFacebook, strTwitter, strInstagram : String?
    var strDescriptionDE, strDescriptionFR, strDescriptionCN: String?
    var strDescriptionIT: String?
    var strDescriptionJP, strDescriptionRU, strDescriptionES, strDescriptionPT: String?
    var strDescriptionSE, strDescriptionNL, strDescriptionHU, strDescriptionNO: String?
    var strDescriptionIL, strDescriptionPL, strKitColour1, strKitColour2: String?
    var strKitColour3: String?
    var strGender, strCountry: String?
    var strTeamJersey, strTeamLogo: String?
    var strTeamFanart1, strTeamFanart2, strTeamFanart3, strTeamFanart4: String?
    var strTeamBanner: String?
    var strYoutube, strLocked: String?
    
    init(idTeam: String?, idSoccerXML: String?, idAPIfootball: String?, intLoved: String?, strTeam: String?, strTeamShort: String?, strAlternate: String?, intFormedYear: String?, strSport: String?, strLeague: String?, idLeague: String?, strLeague2: String?, idLeague2: String?, strLeague3: String?, idLeague3: String?, strLeague4: String?, idLeague4: String?, strLeague5: String?, idLeague5: String?, strLeague6: String?, idLeague6: String?, strLeague7: String?, idLeague7: String?, strDivision: String?, strManager: String?, strStadium: String?, strKeywords: String?, strRSS: String?, strStadiumThumb: String?, strStadiumDescription: String?, strStadiumLocation: String?, intStadiumCapacity: String?, strWebsite: String?, strFacebook: String?, strTwitter: String?, strInstagram: String?, strDescriptionEN: String?, strDescriptionDE: String?, strDescriptionFR: String?, strDescriptionCN: String?, strDescriptionIT: String?, strDescriptionJP: String?, strDescriptionRU: String?, strDescriptionES: String?, strDescriptionPT: String?, strDescriptionSE: String?, strDescriptionNL: String?, strDescriptionHU: String?, strDescriptionNO: String?, strDescriptionIL: String?, strDescriptionPL: String?, strKitColour1: String?, strKitColour2: String?, strKitColour3: String?, strGender: String?, strCountry: String?, strTeamBadge: String?, strTeamJersey: String?, strTeamLogo: String?, strTeamFanart1: String?, strTeamFanart2: String?, strTeamFanart3: String?, strTeamFanart4: String?, strTeamBanner: String?, strYoutube: String?, strLocked: String?) {
        self.idTeam = idTeam
        self.idSoccerXML = idSoccerXML
        self.idAPIfootball = idAPIfootball
        self.intLoved = intLoved
        self.strAlternate = strAlternate
        self.strSport = strSport
        self.idLeague = idLeague
        self.strLeague2 = strLeague2
        self.idLeague2 = idLeague2
        self.strLeague3 = strLeague3
        self.idLeague3 = idLeague3
        self.strLeague4 = strLeague4
        self.idLeague4 = idLeague4
        self.strLeague5 = strLeague5
        self.idLeague5 = idLeague5
        self.strLeague6 = strLeague6
        self.idLeague6 = idLeague6
        self.strLeague7 = strLeague7
        self.idLeague7 = idLeague7
        self.strDivision = strDivision
        self.strManager = strManager
        self.strKeywords = strKeywords
        self.strRSS = strRSS
        self.strStadiumLocation = strStadiumLocation
        self.intStadiumCapacity = intStadiumCapacity
        self.strWebsite = strWebsite
        self.strFacebook = strFacebook
        self.strTwitter = strTwitter
        self.strInstagram = strInstagram
        self.strDescriptionDE = strDescriptionDE
        self.strDescriptionFR = strDescriptionFR
        self.strDescriptionCN = strDescriptionCN
        self.strDescriptionIT = strDescriptionIT
        self.strDescriptionJP = strDescriptionJP
        self.strDescriptionRU = strDescriptionRU
        self.strDescriptionES = strDescriptionES
        self.strDescriptionPT = strDescriptionPT
        self.strDescriptionSE = strDescriptionSE
        self.strDescriptionNL = strDescriptionNL
        self.strDescriptionHU = strDescriptionHU
        self.strDescriptionNO = strDescriptionNO
        self.strDescriptionIL = strDescriptionIL
        self.strDescriptionPL = strDescriptionPL
        self.strKitColour1 = strKitColour1
        self.strKitColour2 = strKitColour2
        self.strKitColour3 = strKitColour3
        self.strGender = strGender
        self.strCountry = strCountry
        self.strTeamJersey = strTeamJersey
        self.strTeamLogo = strTeamLogo
        self.strTeamFanart1 = strTeamFanart1
        self.strTeamFanart2 = strTeamFanart2
        self.strTeamFanart3 = strTeamFanart3
        self.strTeamFanart4 = strTeamFanart4
        self.strTeamBanner = strTeamBanner
        self.strYoutube = strYoutube
        self.strLocked = strLocked
        self.strStadium = strStadium
        self.strTeamShort = strTeamShort
        self.strStadiumThumb = strStadiumThumb
        self.strStadiumDescription = strStadiumDescription
        
        super.init(strTeam: strTeam, strLeague: strLeague, intFormedYear: intFormedYear,strTeamBadge:strTeamBadge,strDescriptionEN: strDescriptionEN)
    }
    required init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.idTeam = try container.decode(String?.self, forKey: .idTeam)
        self.idSoccerXML = try container.decode(String?.self, forKey: .idSoccerXML)
        self.idAPIfootball = try container.decode(String?.self, forKey: .idAPIfootball)
        self.intLoved = try container.decode(String?.self, forKey: .intLoved)
        self.strAlternate = try container.decode(String?.self, forKey: .strAlternate)
        self.strSport = try container.decode(String?.self, forKey: .strSport)
        self.idLeague = try container.decode(String?.self, forKey: .idLeague)
        self.strLeague2 = try container.decode(String?.self, forKey: .strLeague2)
        self.idLeague2 = try container.decode(String?.self, forKey: .idLeague2)
        self.strLeague3 = try container.decode(String?.self, forKey: .strLeague3)
        self.idLeague3 = try container.decode(String?.self, forKey: .idLeague3)
        self.strLeague4 = try container.decode(String?.self, forKey: .strLeague4)
        self.idLeague4 = try container.decode(String?.self, forKey: .idLeague4)
        self.strLeague5 = try container.decode(String?.self, forKey: .strLeague5)
        self.idLeague5 = try container.decode(String?.self, forKey: .idLeague5)
        self.strLeague6 = try container.decode(String?.self, forKey: .strLeague6)
        self.idLeague6 = try container.decode(String?.self, forKey: .idLeague6)
        self.strLeague7 = try container.decode(String?.self, forKey: .strLeague7)
        self.idLeague7 = try container.decode(String?.self, forKey: .idLeague7)
        self.strDivision = try container.decode(String?.self, forKey: .strDivision)
        self.strManager = try container.decode(String?.self, forKey: .strManager)
        self.strKeywords = try container.decode(String?.self, forKey: .strKeywords)
        self.strRSS = try container.decode(String?.self, forKey: .strRSS)
        self.strStadiumLocation = try container.decode(String?.self, forKey: .strStadiumLocation)
        self.intStadiumCapacity = try container.decode(String?.self, forKey: .intStadiumCapacity)
        self.strWebsite = try container.decode(String?.self, forKey: .strWebsite)
        self.strFacebook = try container.decode(String?.self, forKey: .strFacebook)
        self.strTwitter = try container.decode(String?.self, forKey: .strTwitter)
        self.strInstagram = try container.decode(String?.self, forKey: .strInstagram)
        self.strDescriptionDE = try container.decode(String?.self, forKey: .strDescriptionDE)
        self.strDescriptionFR = try container.decode(String?.self, forKey: .strDescriptionFR)
        self.strDescriptionCN = try container.decode(String?.self, forKey: .strDescriptionCN)
        self.strDescriptionIT = try container.decode(String?.self, forKey: .strDescriptionIT)
        self.strDescriptionJP = try container.decode(String?.self, forKey: .strDescriptionJP)
        self.strDescriptionRU = try container.decode(String?.self, forKey: .strDescriptionRU)
        self.strDescriptionES = try container.decode(String?.self, forKey: .strDescriptionES)
        self.strDescriptionPT = try container.decode(String?.self, forKey: .strDescriptionPT)
        self.strDescriptionSE = try container.decode(String?.self, forKey: .strDescriptionSE)
        self.strDescriptionNL = try container.decode(String?.self, forKey: .strDescriptionNL)
        self.strDescriptionHU = try container.decode(String?.self, forKey: .strDescriptionHU)
        self.strDescriptionNO = try container.decode(String?.self, forKey: .strDescriptionNO)
        self.strDescriptionIL = try container.decode(String?.self, forKey: .strDescriptionIL)
        self.strDescriptionPL = try container.decode(String?.self, forKey: .strDescriptionPL)
        self.strKitColour1 = try container.decode(String?.self, forKey: .strKitColour1)
        self.strKitColour2 = try container.decode(String?.self, forKey: .strKitColour2)
        self.strKitColour3 = try container.decode(String?.self, forKey: .strKitColour3)
        self.strGender = try container.decode(String?.self, forKey: .strGender)
        self.strCountry = try container.decode(String?.self, forKey: .strCountry)
        self.strTeamJersey = try container.decode(String?.self, forKey: .strTeamJersey)
        self.strTeamLogo = try container.decode(String?.self, forKey: .strTeamLogo)
        self.strTeamFanart1 = try container.decode(String?.self, forKey: .strTeamFanart1)
        self.strTeamFanart2 = try container.decode(String?.self, forKey: .strTeamFanart2)
        self.strTeamFanart3 = try container.decode(String?.self, forKey: .strTeamFanart3)
        self.strTeamFanart4 = try container.decode(String?.self, forKey: .strTeamFanart4)
        self.strTeamBanner = try container.decode(String?.self, forKey: .strTeamBanner)
        self.strYoutube = try container.decode(String?.self, forKey: .strYoutube)
        self.strLocked = try container.decode(String?.self, forKey: .strLocked)
        
        self.strStadium = try container.decode(String?.self, forKey: .strStadium)
        self.strTeamShort = try container.decode(String?.self, forKey: .strTeamShort)
        self.strStadiumThumb = try container.decode(String?.self, forKey: .strStadiumThumb)
        self.strStadiumDescription = try container.decode(String?.self, forKey: .strStadiumDescription)
        
        let strTeam = try container.decode(String?.self, forKey: .strTeam)
        let strLeague = try container.decode(String?.self, forKey: .strLeague)
        let intFormedYear = try container.decode(String?.self, forKey: .intFormedYear)
        let strTeamBadge = try container.decode(String?.self, forKey: .strTeamBadge)
        let strDescriptionEN = try container.decode(String?.self, forKey: .strDescriptionEN)
        super.init(strTeam: strTeam, strLeague: strLeague, intFormedYear:intFormedYear,strTeamBadge:strTeamBadge,strDescriptionEN:strDescriptionEN)
    }
    
    private enum CodingKeys: String, CodingKey
    {
        case idTeam
        case idSoccerXML
        case idAPIfootball
        case intLoved
        case strTeam
        case strTeamShort
        case strAlternate
        case intFormedYear
        case strSport
        case strLeague
        case idLeague
        case strLeague2
        case idLeague2
        case strLeague3
        case idLeague3
        case strLeague4
        case idLeague4
        case strLeague5
        case idLeague5
        case strLeague6
        case idLeague6
        case strLeague7
        case idLeague7
        case strDivision
        case strManager
        case strStadium
        case strKeywords
        case strRSS
        case strStadiumThumb
        case strStadiumDescription
        case strStadiumLocation
        case intStadiumCapacity
        case strWebsite
        case strFacebook
        case strTwitter
        case strInstagram
        case strDescriptionEN
        case strDescriptionDE
        case strDescriptionFR
        case strDescriptionCN
        case strDescriptionIT
        case strDescriptionJP
        case strDescriptionRU
        case strDescriptionES
        case strDescriptionPT
        case strDescriptionSE
        case strDescriptionNL
        case strDescriptionHU
        case strDescriptionNO
        case strDescriptionIL
        case strDescriptionPL
        case strKitColour1
        case strKitColour2
        case strKitColour3
        case strGender
        case strCountry
        case strTeamBadge
        case strTeamJersey
        case strTeamLogo
        case strTeamFanart1
        case strTeamFanart2
        case strTeamFanart3
        case strTeamFanart4
        case strTeamBanner
        case strYoutube
        case strLocked
    }
}
