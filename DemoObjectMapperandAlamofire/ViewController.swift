//
//  ViewController.swift
//  DemoObjectMapperandAlamofire
//
//  Created by Apple on 10/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblCity: UILabel!
    
    @IBOutlet weak var lblCountry: UILabel!
    
    @IBOutlet weak var lblTempC: UILabel!
    
    @IBOutlet weak var lblCurrentime: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataWeather: [List]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        matchDataApi()
    }
    
    func matchDataApi() {
        DataService.shareIntance.getdataFromApi { (data) in
            self.SetupdataUpVc(data)
            self.dataWeather = data.list
            self.tableView.reloadData()
        }
    }
    
    fileprivate func SetupdataUpVc(_ data: HanoiWeather) {
        self.lblCity.text = (data.city?.name ?? "Empty") + ","
        self.lblCountry.text = data.city?.country
        self.lblTempC.text = "\(String(describing: Int(data.list?.first?.temp?.min?.changeKtoC() ?? 0))) ⁰C"
        self.lblCurrentime.text = data.list?.first?.dt?.getanotherformatDate()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return dataWeather?.count ?? 0
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let aData = dataWeather else { return UITableViewCell()}
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch indexPath.section {
        case 0:
              cell.textLabel?.text = "Day Of Week↓"
              cell.detailTextLabel?.text = "Temperature↓"
              cell.textLabel?.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
              cell.detailTextLabel?.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
              cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 23)
              cell.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 23)
        default:
            if indexPath.row == 0 {
                cell.textLabel?.text = "Today(\(aData[indexPath.row].dt!.getDayOfWeek()))"
                cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
                cell.detailTextLabel?.text = "\(Int(aData[indexPath.row].temp?.min?.changeKtoC() ?? 0)) ⁰C"
                cell.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            } else {
            
                cell.textLabel?.text = aData[indexPath.row].dt?.getDayOfWeek()
                cell.detailTextLabel?.text = "\(Int(aData[indexPath.row].temp?.min?.changeKtoC() ?? 0)) ⁰C"
            }
        }
        return cell
    }
    
    
}
