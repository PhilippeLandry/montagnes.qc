//
//  ViewController.swift
//  ios.montagnes.qc
//
//  Created by Philippe Landry on 2020-08-30.
//  Copyright © 2020 Philippe Landry. All rights reserved.
//

import UIKit
import Alamofire

struct Film: Decodable {
  let id: Int
  let title: String
  let openingCrawl: String
  let director: String
  let producer: String
  let releaseDate: String
  let starships: [String]
  
  enum CodingKeys: String, CodingKey {
    case id = "episode_id"
    case title
    case openingCrawl = "opening_crawl"
    case director
    case producer
    case releaseDate = "release_date"
    case starships
  }
}


class ViewController: UIViewController {
    func fetchFilms() {
      // 1
      let request = AF.request("https://swapi.dev/api/films")
      // 2
      request.responseJSON { (data) in
        print(data)
      }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchFilms()
    }


}

