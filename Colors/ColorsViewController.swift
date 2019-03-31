//
//  ColorsViewController.swift
//  Colors
//
//  Created by Ben Frailey on 3/2/19.
//  Copyright © 2019 Ben Frailey. All rights reserved.
//

import UIKit

struct Color {
    var name: String
    var type: UIColor
}

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var colors = [Color(name: "Red", type: UIColor.red), Color(name: "Orange", type: UIColor.orange), Color(name: "Yellow", type: UIColor.yellow), Color(name: "Green", type: UIColor.green), Color(name: "Blue", type: UIColor.blue), Color(name: "Purple", type: UIColor.purple)]
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].type
        cell.selectionStyle = .none
        
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.color = colors[row]
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
