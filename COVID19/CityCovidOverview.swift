//
//  CityCovidOverview.swift
//  COVID19
//
//  Created by 정한결 on 2023/05/09.
//

import Foundation

struct CityCovidOverview: Codable {
    let korea: CovidOverview, seoul: CovidOverview, busan: CovidOverview, daegu: CovidOverview, incheon: CovidOverview, gwangju: CovidOverview, daejeon: CovidOverview, ulsan: CovidOverview, sejong: CovidOverview, gyeonggi: CovidOverview, gangwon: CovidOverview, chungbuk: CovidOverview, chungnam: CovidOverview, jeonbuk: CovidOverview, jeonnam: CovidOverview, gyeongbuk: CovidOverview, gyeongnam: CovidOverview, jeju: CovidOverview
}

struct CovidOverview: Codable {
    let countryName: String, newCase: String, totalCase: String, recovered: String, death: String, percentage: String, newCcase: String, newFcase: String
}
