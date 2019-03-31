//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Ben Frailey on 3/31/19.
//  Copyright © 2019 Ben Frailey. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var color: Color?
    
    @IBOutlet weak var colorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = color?.name
        self.title = color?.name
        self.view.backgroundColor = color?.type
        
        

        // Do any additional setup after loading the view.
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
