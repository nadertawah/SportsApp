//
//  Miscellaneous .swift
//  SportsApp
//
//  Created by Nader Said on 08/06/2022.
//

import Foundation

func getDateFromString(str:String) -> Date?
{
    let dateFormatterGet = DateFormatter()
    dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    return dateFormatterGet.date(from: str)
}
