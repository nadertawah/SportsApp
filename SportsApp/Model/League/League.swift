//
//  League.swift
//  SportsApp
//
//  Created by Nader Said on 07/06/2022.
//

import Foundation

class League
{
    var idLeague: String?
    var strLeague : String?
    var strBadge: String?
    var strYoutube : String?
    init(idLeague: String?, strLeague : String?, strBadge: String?, strYoutube : String?)
    {
        self.idLeague = idLeague
        self.strLeague = strLeague
        self.strBadge = strBadge
        self.strYoutube = strYoutube
    }
}
class LeagueModel: League, Decodable
{
    var idSoccerXML: String?
    var idAPIfootball, strSport, strLeagueAlternate: String?
    var intDivision, idCup, strCurrentSeason, intFormedYear: String?
    var dateFirstEvent, strGender, strCountry, strWebsite: String?
    var strFacebook: String?
    var strInstagram: String?
    var strTwitter, strRSS, strDescriptionEN: String?
    var strDescriptionDE, strDescriptionFR: String?
    var strDescriptionIT: String?
    var strDescriptionCN, strDescriptionJP, strDescriptionRU, strDescriptionES: String?
    var strDescriptionPT, strDescriptionSE, strDescriptionNL, strDescriptionHU: String?
    var strDescriptionNO, strDescriptionPL, strDescriptionIL, strTvRights: String?
    var strFanart1, strFanart2, strFanart3, strFanart4: String?
    var strBanner: String?
    var strLogo: String?
    var strPoster: String?
    var strTrophy: String?
    var strNaming: String?
    var strComplete: String?
    var strLocked: String?

    init(idLeague: String?, idSoccerXML: String?, idAPIfootball: String?, strSport: String?, strLeague: String?, strLeagueAlternate: String?, intDivision: String?, idCup: String?, strCurrentSeason: String?, intFormedYear: String?, dateFirstEvent: String?, strGender: String?, strCountry: String?, strWebsite: String?, strFacebook: String?, strInstagram: String?, strTwitter: String?, strYoutube: String?, strRSS: String?, strDescriptionEN: String?, strDescriptionDE: String?, strDescriptionFR: String?, strDescriptionIT: String?, strDescriptionCN: String?, strDescriptionJP: String?, strDescriptionRU: String?, strDescriptionES: String?, strDescriptionPT: String?, strDescriptionSE: String?, strDescriptionNL: String?, strDescriptionHU: String?, strDescriptionNO: String?, strDescriptionPL: String?, strDescriptionIL: String?, strTvRights: String?, strFanart1: String?, strFanart2: String?, strFanart3: String?, strFanart4: String?, strBanner: String?, strBadge: String?, strLogo: String?, strPoster: String?, strTrophy: String?, strNaming: String?, strComplete: String?, strLocked: String?)
    {
        self.idSoccerXML = idSoccerXML
        self.idAPIfootball = idAPIfootball
        self.strSport = strSport
        self.strLeagueAlternate = strLeagueAlternate
        self.intDivision = intDivision
        self.idCup = idCup
        self.strCurrentSeason = strCurrentSeason
        self.intFormedYear = intFormedYear
        self.dateFirstEvent = dateFirstEvent
        self.strGender = strGender
        self.strCountry = strCountry
        self.strWebsite = strWebsite
        self.strFacebook = strFacebook
        self.strInstagram = strInstagram
        self.strTwitter = strTwitter
        self.strRSS = strRSS
        self.strDescriptionEN = strDescriptionEN
        self.strDescriptionDE = strDescriptionDE
        self.strDescriptionFR = strDescriptionFR
        self.strDescriptionIT = strDescriptionIT
        self.strDescriptionCN = strDescriptionCN
        self.strDescriptionJP = strDescriptionJP
        self.strDescriptionRU = strDescriptionRU
        self.strDescriptionES = strDescriptionES
        self.strDescriptionPT = strDescriptionPT
        self.strDescriptionSE = strDescriptionSE
        self.strDescriptionNL = strDescriptionNL
        self.strDescriptionHU = strDescriptionHU
        self.strDescriptionNO = strDescriptionNO
        self.strDescriptionPL = strDescriptionPL
        self.strDescriptionIL = strDescriptionIL
        self.strTvRights = strTvRights
        self.strFanart1 = strFanart1
        self.strFanart2 = strFanart2
        self.strFanart3 = strFanart3
        self.strFanart4 = strFanart4
        self.strBanner = strBanner
        self.strLogo = strLogo
        self.strPoster = strPoster
        self.strTrophy = strTrophy
        self.strNaming = strNaming
        self.strComplete = strComplete
        self.strLocked = strLocked
        super.init(idLeague: idLeague, strLeague: strLeague, strBadge: strBadge, strYoutube: strYoutube)
    }
    
    required init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        
        self.idSoccerXML = try container.decode(String?.self, forKey: .idSoccerXML)
        self.idAPIfootball = try container.decode(String?.self, forKey: .idAPIfootball)
        self.strSport = try container.decode(String?.self, forKey: .strSport)
        self.strLeagueAlternate = try container.decode(String?.self, forKey: .strLeagueAlternate)
        self.intDivision = try container.decode(String?.self, forKey: .intDivision)
        self.idCup = try container.decode(String?.self, forKey: .idCup)
        self.strCurrentSeason = try container.decode(String?.self, forKey: .strCurrentSeason)
        self.intFormedYear = try container.decode(String?.self, forKey: .intFormedYear)
        self.dateFirstEvent = try container.decode(String?.self, forKey: .dateFirstEvent)
        self.strGender = try container.decode(String?.self, forKey: .strGender)
        self.strCountry = try container.decode(String?.self, forKey: .strCountry)
        self.strWebsite = try container.decode(String?.self, forKey: .strWebsite)
        self.strFacebook = try container.decode(String?.self, forKey: .strFacebook)
        self.strInstagram = try container.decode(String?.self, forKey: .strInstagram)
        self.strTwitter = try container.decode(String?.self, forKey: .strTwitter)
        self.strRSS = try container.decode(String?.self, forKey: .strRSS)
        self.strDescriptionEN = try container.decode(String?.self, forKey: .strDescriptionEN)
        self.strDescriptionDE = try container.decode(String?.self, forKey: .strDescriptionDE)
        self.strDescriptionFR = try container.decode(String?.self, forKey: .strDescriptionFR)
        self.strDescriptionIT = try container.decode(String?.self, forKey: .strDescriptionIT)
        self.strDescriptionCN = try container.decode(String?.self, forKey: .strDescriptionCN)
        self.strDescriptionJP = try container.decode(String?.self, forKey: .strDescriptionJP)
        self.strDescriptionRU = try container.decode(String?.self, forKey: .strDescriptionRU)
        self.strDescriptionES = try container.decode(String?.self, forKey: .strDescriptionES)
        self.strDescriptionPT = try container.decode(String?.self, forKey: .strDescriptionPT)
        self.strDescriptionSE = try container.decode(String?.self, forKey: .strDescriptionSE)
        self.strDescriptionNL = try container.decode(String?.self, forKey: .strDescriptionNL)
        self.strDescriptionHU = try container.decode(String?.self, forKey: .strDescriptionHU)
        self.strDescriptionNO = try container.decode(String?.self, forKey: .strDescriptionNO)
        self.strDescriptionPL = try container.decode(String?.self, forKey: .strDescriptionPL)
        self.strDescriptionIL = try container.decode(String?.self, forKey: .strDescriptionIL)
        self.strTvRights = try container.decode(String?.self, forKey: .strTvRights)
        self.strFanart1 = try container.decode(String?.self, forKey: .strFanart1)
        self.strFanart2 = try container.decode(String?.self, forKey: .strFanart2)
        self.strFanart3 = try container.decode(String?.self, forKey: .strFanart3)
        self.strFanart4 = try container.decode(String?.self, forKey: .strFanart4)
        self.strBanner = try container.decode(String?.self, forKey: .strBanner)
        self.strLogo = try container.decode(String?.self, forKey: .strLogo)
        self.strPoster = try container.decode(String?.self, forKey: .strPoster)
        self.strTrophy = try container.decode(String?.self, forKey: .strTrophy)
        self.strNaming = try container.decode(String?.self, forKey: .strNaming)
        self.strComplete = try container.decode(String?.self, forKey: .strComplete)
        self.strLocked = try container.decode(String?.self, forKey: .strLocked)
        
        
        let idLeague = try container.decode(String?.self, forKey: .idLeague)
        let strLeague = try container.decode(String?.self, forKey: .strLeague)
        let strBadge = try container.decode(String?.self, forKey: .strBadge)
        let strYoutube = try container.decode(String?.self, forKey: .strYoutube)
        super.init(idLeague: idLeague, strLeague: strLeague, strBadge: strBadge, strYoutube: strYoutube)
    }
    
    private enum CodingKeys: String, CodingKey
    {
        case idSoccerXML
        case idAPIfootball
        case strSport
        case strLeagueAlternate
        case intDivision
        case idCup
        case strCurrentSeason
        case intFormedYear
        case dateFirstEvent
        case strGender
        case strCountry
        case strWebsite
        case strFacebook
        case strInstagram
        case strTwitter
        case strRSS
        case strDescriptionEN
        case strDescriptionDE
        case strDescriptionFR
        case strDescriptionIT
        case strDescriptionCN
        case strDescriptionJP
        case strDescriptionRU
        case strDescriptionES
        case strDescriptionPT
        case strDescriptionSE
        case strDescriptionNL
        case strDescriptionHU
        case strDescriptionNO
        case strDescriptionPL
        case strDescriptionIL
        case strTvRights
        case strFanart1
        case strFanart2
        case strFanart3
        case strFanart4
        case strBanner
        case strLogo
        case strPoster
        case strTrophy
        case strNaming
        case strComplete
        case strLocked
        
        case idLeague
        case strLeague
        case strBadge
        case strYoutube
    }
}

extension League
{
    func isFav(completion: (Bool)->())
    {
//        CoreData.shared.getItems(type: LeagueManagedObject.self)
//        {
//            [weak self] in
//           completion($0.contains {league in league.idLeague == self?.idLeague})
//            
//        }
    }
}
