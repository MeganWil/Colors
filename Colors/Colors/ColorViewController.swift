//
//  ColorViewController.swift
//  Colors
//
//  Created by Megan Wilson on 6/26/19.
//  Copyright © 2019 Megan Wilson. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = ["red","orange","yellow","green","blue","purple","brown"]
    
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
        
        cell.textLabel?.text = colors[indexPath.row]
        
        if indexPath.row == 0 {
                cell.backgroundColor = UIColor.red
        }
            else if indexPath.row == 1 {
                cell.backgroundColor =  UIColor.orange
        }
            else if indexPath.row == 2{
                cell.backgroundColor =  UIColor.yellow
        }
            else if indexPath.row == 3{
                cell.backgroundColor =  UIColor.green
        }
            else if indexPath.row == 4{
                cell.backgroundColor =  UIColor.blue
        }
            else if indexPath.row == 5{
                cell.backgroundColor =  UIColor.purple
        }
            else if indexPath.row == 6{
                cell.backgroundColor =  UIColor.brown
        }
        return cell
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
