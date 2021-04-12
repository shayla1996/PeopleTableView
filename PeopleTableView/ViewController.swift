//
//  ViewController.swift
//  PeopleTableView
//
//  Created by Shaikat on 12/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var people : [People] = [People(image: #imageLiteral(resourceName: "ian"), title: "John", description: "This is John, who is an American citizen. He Came in Bangladesh in 2020 to meet his friends. But because of Pandemic he inclosed here."),
    People(image: #imageLiteral(resourceName: "chris"), title: "Alice", description: "This is Alice,who is a Russian citizen. She Came in Bangladesh in 2020 to meet her friends. But because of Pandemic she inclosed here."),
    People(image: #imageLiteral(resourceName: "mim"), title: "Shayma", description: "This is Shayma, who is a Bangladeshi citizen. She organised a friends meet up in 2020."),
    People(image: #imageLiteral(resourceName: "sayma"), title: "Saira", description: "This is Saira, who is an Indian citizen. She Came in Bangladesh in 2020 to meet her friends. But because of Pandemic she inclosed here.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? PeopleCell {
            cell.selectionStyle = .none
            cell.imageOutlet.image = people[indexPath.row].image
            cell.titleLbl.text = people[indexPath.row].title
            cell.descriptionLbl.text = people[indexPath.row].description
            return cell
        }else {
            return UITableViewCell()
        }
        
    }
    
    
    
}

