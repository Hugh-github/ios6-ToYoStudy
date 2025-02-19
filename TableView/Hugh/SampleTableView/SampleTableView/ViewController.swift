//
//  ViewController.swift
//  SampleTableView
//
//  Created by Derrick kim on 2022/06/18.
//

import UIKit

class ViewController: UIViewController {
    var menu: [FoodType: [Food]] = [
        .American: [
            Food(name: "햄버거", price: 5000),
            Food(name: "피자", price: 18000),
            Food(name: "아메리카노", price: 41000)
        ],
        .Chinese: [
            Food(name: "탕수육", price: 18000)
        ],
        .Korean: [
            Food(name: "비빔밥", price: 8000),
            Food(name: "돼지갈비", price: 20000)
        ],
        .Japanese: [
            Food(name: "스시", price: 20000),
            Food(name: "스윙스(돈까스)", price: 5000)
        ]
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return FoodType.American.rawValue
        case 1:
            return FoodType.Chinese.rawValue
        case 2:
            return FoodType.Korean.rawValue
        case 3:
            return FoodType.Japanese.rawValue
        default:
            return ""
        }
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return menu[.American]!.count
        case 1:
            return menu[.Chinese]!.count
        case 2:
            return menu[.Korean]!.count
        case 3:
            return menu[.Japanese]!.count
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else { return .init() }
        
        switch indexPath.section {
        case 0:
            let foodList = menu[.American]
            cell.customLabel.text = foodList![indexPath.row].name
            return cell
        case 1:
            let foodList = menu[.Chinese]
            cell.customLabel.text = foodList![indexPath.row].name
            return cell
        case 2:
            let foodList = menu[.Korean]
            cell.customLabel.text = foodList![indexPath.row].name
            return cell
        case 3:
            let foodList = menu[.Japanese]
            cell.customLabel.text = foodList![indexPath.row].name
            return cell
        default:
            return .init()
        }
    }
}
