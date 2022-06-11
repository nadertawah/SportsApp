//
//  Constants.swift
//  SportsApp
//
//  Created by Nader Said on 05/06/2022.
//

import Foundation
import UIKit

struct Constants
{
    static let allSportsApiUrl = "https://www.thesportsdb.com/api/v1/json/2/all_sports.php"
    static let leaguesApiUrl = "https://www.thesportsdb.com/api/v1/json/2/search_all_leagues.php?&s="
    static let allTeamsByLeagueApiUrl = "https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?l="
    static let eventsByLeagueIDApiUrl = "https://www.thesportsdb.com/api/v1/json/2/eventsseason.php?id="
    
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
}
