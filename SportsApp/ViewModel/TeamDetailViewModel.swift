//
//  TeamDetailViewModel.swift
//  SportsApp
//
//  Created by Nader Said on 09/06/2022.
//

import Foundation
import RxRelay

class TeamDetailViewModel
{
    //MARK: - Var(s)
    private(set) var teamDetailModel = BehaviorRelay<Team>(value: Team())
        
    init(team: Team)
    {
        teamDetailModel.accept(team)
    }
}

