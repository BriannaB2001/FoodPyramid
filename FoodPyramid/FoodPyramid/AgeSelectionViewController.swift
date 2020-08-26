//
//  AgeSelectionViewController.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 8/25/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit

class AgeSelectionViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var ageStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var ageQuestion: [Question] = [
    Question(text: "What's Your Age?",
        type: .age,
        answers: AgeRange.allCases.map({ Answer(text: $0.rawValue)})
        ),
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AgeRange.allCases.count
    }
    
    func ageRange(for indexPath: IndexPath) -> AgeRange {
        AgeRange.allCases[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ageCell", for: indexPath)
        cell.detailTextLabel?.text = ageRange(for: indexPath).rawValue
        return cell
    }
    
}
