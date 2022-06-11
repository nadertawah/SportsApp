//
//  LeagueDetails.swift
//  SportsApp
//
//  Created by Nader Said on 08/06/2022.
//

import Foundation

class LeagueDetails
{
    var idLeague,strEvent : String?
    var strHomeTeam,strAwayTeam, intHomeScore, intAwayScore : String?
    var strTimestamp: Date?
    init(idLeague : String?, strEvent : String?,strHomeTeam: String?,strAwayTeam: String?, intHomeScore: String?, intAwayScore : String?,strTimestamp: Date?)
    {
        self.strEvent = strEvent
        self.strHomeTeam = strHomeTeam
        self.strAwayTeam = strAwayTeam
        self.intHomeScore = intHomeScore
        self.intAwayScore = intAwayScore
        self.strTimestamp = strTimestamp
        self.idLeague = idLeague
    }
}
class LeagueDetailsModel : LeagueDetails, Decodable
{
    var idEvent: String?
    var idSoccerXML: String?
    var idAPIfootball, strEventAlternate, strFilename: String?
    var strSport, strLeague, strSeason: String?
    var strDescriptionEN: String?
    var intRound: String?
    var intSpectators: String?
    var strOfficial: String?
    var dateEventLocal, strTime, strTimeLocal,dateEvent: String?
    var strTVStation: String?
    var idHomeTeam, idAwayTeam: String?
    var intScore, intScoreVotes: String?
    var strResult, strVenue, strCountry, strCity: String?
    var strPoster, strSquare: String?
    var strFanart: String?
    var strThumb: String?
    var strBanner: String?
    var strMap: String?
    var strTweet1, strTweet2, strTweet3, strVideo: String?
    var strStatus, strPostponed, strLocked: String?

    init(idEvent : String?,idSoccerXML: String?, idAPIfootball: String?, strEvent: String?, strEventAlternate: String?, strFilename: String?, strSport: String?, idLeague: String?, strLeague: String?, strSeason: String?, strDescriptionEN: String?, strHomeTeam: String?, strAwayTeam: String?, intHomeScore: String?, intRound: String?, intAwayScore: String?, intSpectators: String?, strOfficial: String?, strTimestamp: Date?, dateEvent: String?, dateEventLocal: String?, strTime: String?, strTimeLocal: String?, strTVStation: String?, idHomeTeam: String?, idAwayTeam: String?, intScore: String?, intScoreVotes: String?, strResult: String?, strVenue: String?, strCountry: String?, strCity: String?, strPoster: String?, strSquare: String?, strFanart: String?, strThumb: String?, strBanner: String?, strMap: String?, strTweet1: String?, strTweet2: String?, strTweet3: String?, strVideo: String?, strStatus: String?, strPostponed: String?, strLocked: String?) {
        self.idEvent = idEvent
        self.idSoccerXML = idSoccerXML
        self.idAPIfootball = idAPIfootball
        self.strEventAlternate = strEventAlternate
        self.strFilename = strFilename
        self.strSport = strSport
        self.strLeague = strLeague
        self.strSeason = strSeason
        self.strDescriptionEN = strDescriptionEN
        self.intRound = intRound
        self.intSpectators = intSpectators
        self.strOfficial = strOfficial
        self.dateEvent = dateEvent
        self.dateEventLocal = dateEventLocal
        self.strTime = strTime
        self.strTimeLocal = strTimeLocal
        self.strTVStation = strTVStation
        self.idHomeTeam = idHomeTeam
        self.idAwayTeam = idAwayTeam
        self.intScore = intScore
        self.intScoreVotes = intScoreVotes
        self.strResult = strResult
        self.strVenue = strVenue
        self.strCountry = strCountry
        self.strCity = strCity
        self.strPoster = strPoster
        self.strSquare = strSquare
        self.strFanart = strFanart
        self.strThumb = strThumb
        self.strBanner = strBanner
        self.strMap = strMap
        self.strTweet1 = strTweet1
        self.strTweet2 = strTweet2
        self.strTweet3 = strTweet3
        self.strVideo = strVideo
        self.strStatus = strStatus
        self.strPostponed = strPostponed
        self.strLocked = strLocked
        
        super.init(idLeague: idLeague,strEvent: strEvent, strHomeTeam: strHomeTeam, strAwayTeam: strAwayTeam, intHomeScore: intHomeScore, intAwayScore: intAwayScore, strTimestamp: strTimestamp)
    }
    required init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.idEvent = try container.decode(String?.self, forKey: .idEvent)
        self.idSoccerXML = try container.decode(String?.self, forKey: .idSoccerXML)
        self.idAPIfootball = try container.decode(String?.self, forKey: .idAPIfootball)
        self.strEventAlternate = try container.decode(String?.self, forKey: .strEventAlternate)
        self.strFilename = try container.decode(String?.self, forKey: .strFilename)
        self.strSport = try container.decode(String?.self, forKey: .strSport)
        self.strLeague = try container.decode(String?.self, forKey: .strLeague)
        self.strSeason = try container.decode(String?.self, forKey: .strSeason)
        self.strDescriptionEN = try container.decode(String?.self, forKey: .strDescriptionEN)
        self.intRound = try container.decode(String?.self, forKey: .intRound)
        self.intSpectators = try container.decode(String?.self, forKey: .intSpectators)
        self.strOfficial = try container.decode(String?.self, forKey: .strOfficial)
        self.dateEvent = try container.decode(String?.self, forKey: .dateEvent)
        self.dateEventLocal = try container.decode(String?.self, forKey: .dateEventLocal)
        self.strTime = try container.decode(String?.self, forKey: .strTime)
        self.strTimeLocal = try container.decode(String?.self, forKey: .strTimeLocal)
        self.strTVStation = try container.decode(String?.self, forKey: .strTVStation)
        self.idHomeTeam = try container.decode(String?.self, forKey: .idHomeTeam)
        self.idAwayTeam = try container.decode(String?.self, forKey: .idAwayTeam)
        self.intScore = try container.decode(String?.self, forKey: .intScore)
        self.intScoreVotes = try container.decode(String?.self, forKey: .intScoreVotes)
        self.strResult = try container.decode(String?.self, forKey: .strResult)
        self.strVenue = try container.decode(String?.self, forKey: .strVenue)
        self.strCountry = try container.decode(String?.self, forKey: .strCountry)
        self.strCity = try container.decode(String?.self, forKey: .strCity)
        self.strPoster = try container.decode(String?.self, forKey: .strPoster)
        self.strSquare = try container.decode(String?.self, forKey: .strSquare)
        self.strFanart = try container.decode(String?.self, forKey: .strFanart)
        self.strThumb = try container.decode(String?.self, forKey: .strThumb)
        self.strBanner = try container.decode(String?.self, forKey: .strBanner)
        self.strMap = try container.decode(String?.self, forKey: .strMap)
        self.strTweet1 = try container.decode(String?.self, forKey: .strTweet1)
        self.strTweet2 = try container.decode(String?.self, forKey: .strTweet2)
        self.strTweet3 = try container.decode(String?.self, forKey: .strTweet3)
        self.strVideo = try container.decode(String?.self, forKey: .strVideo)
        self.strStatus = try container.decode(String?.self, forKey: .strStatus)
        self.strPostponed = try container.decode(String?.self, forKey: .strPostponed)
        self.strLocked = try container.decode(String?.self, forKey: .strLocked)
        
        let strEvent = try container.decode(String?.self, forKey: .strEvent)
        let strHomeTeam = try container.decode(String?.self, forKey: .strHomeTeam)
        let strAwayTeam = try container.decode(String?.self, forKey: .strAwayTeam)
        let intHomeScore = try container.decode(String?.self, forKey: .intHomeScore)
        let intAwayScore = try container.decode(String?.self, forKey: .intAwayScore)
        let strTimestamp = try container.decode(String?.self, forKey: .strTimestamp)
        let idLeague = try container.decode(String?.self, forKey: .idLeague)

        super.init(idLeague:idLeague,strEvent: strEvent, strHomeTeam: strHomeTeam, strAwayTeam: strAwayTeam, intHomeScore: intHomeScore, intAwayScore: intAwayScore, strTimestamp: getDateFromString(str: strTimestamp ?? ""))
    }
    
    private enum CodingKeys: String, CodingKey
    {
        case idEvent
        case idSoccerXML
        case idAPIfootball
        case strEventAlternate
        case strFilename
        case strSport
        case idLeague
        case strLeague
        case strSeason
        case strDescriptionEN
        case intRound
        case intSpectators
        case strOfficial
        case dateEvent
        case dateEventLocal
        case strTime
        case strTimeLocal
        case strTVStation
        case idHomeTeam
        case idAwayTeam
        case intScore
        case intScoreVotes
        case strResult
        case strVenue
        case strCountry
        case strCity
        case strPoster
        case strSquare
        case strFanart
        case strThumb
        case strBanner
        case strMap
        case strTweet1
        case strTweet2
        case strTweet3
        case strVideo
        case strStatus
        case strPostponed
        case strLocked
        
        case strEvent
        case strHomeTeam
        case strAwayTeam
        case intHomeScore
        case intAwayScore
        case strTimestamp
    }
}
