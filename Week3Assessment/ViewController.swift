//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension ViewController  : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! CustomTableViewCell
        let person = people[indexPath.row]
        cell.setUP(person: person)
        
        return cell
    }
}

var people = [Person(name: "Andrew", favoriteThing: "Cats", favoriteColor: .blue), Person(name: "Werdna", favoriteThing: "Dogs", favoriteColor: .red), Person(name: "Bob", favoriteThing: "Strings", favoriteColor: .green)]
