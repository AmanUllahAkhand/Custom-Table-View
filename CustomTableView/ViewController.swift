//
//  ViewController.swift
//  CustomTableView
//
//  Created by USER on 25/08/2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var tableView: UITableView!
    
    struct Sunset {
        let title : String
        let imageName : String
        
    }
    let data: [Sunset] = [
     Sunset (title: "Morning Prayer", imageName: "Morning Prayer"),
        Sunset (title: "Morning Run", imageName: "Morning Run"),
        Sunset (title: "Vacation Photo", imageName: "Vacation Photo"),
        Sunset (title: "Visiting Friends", imageName: "Visiting Friends"),
        Sunset (title: "Evening Sunset", imageName: "Evening Sunset"),
        Sunset (title: "Eating Dinner", imageName: "Eating Dinner"),
        Sunset (title: "Good Night", imageName: "Good Night"),
        
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data [indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!CustomTableViewCell
        cell.label.text = sunset.title
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

