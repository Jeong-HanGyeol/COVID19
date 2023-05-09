//
//  ViewController.swift
//  COVID19
//
//  Created by 정한결 on 2023/05/08.
//

import UIKit

import Alamofire
import Charts

class ViewController: UIViewController {
    @IBOutlet weak var pieChartView: PieChartView!
    @IBOutlet weak var newCaseLabel: UILabel!
    @IBOutlet weak var totalCaseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchCovidOverview(completionHandler: { [weak self] result in
            guard let self = self else { return }
            switch result {
            case let .success(result):
                debugPrint("success \(result)")
                
            case let .failure(error):
                debugPrint("error \(error)")
            }
        })
    }
    
    func fetchCovidOverview(
      completionHandler: @escaping (Result<CityCovidOverview, Error>) -> Void
    ) {
        let url = "https://api.corona-19.kr/korea/country/new/"
        let param = [
            "serviceKey": ""
        ]
        
        AF.request(url, method: .get, parameters: param)
          .responseData(completionHandler: { response in
            switch response.result {
            case let .success(data):
              do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(CityCovidOverview.self, from: data)
                completionHandler(.success(result))
              } catch {
                completionHandler(.failure(error))
              }
            case let .failure(error):
              completionHandler(.failure(error))
            }
          })
    }
}

