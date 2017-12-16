//
//  ViewController.swift
//  FirstApplication
//
//  Created by Chandra Rao on 16/12/17.
//  Copyright © 2017 Chandra Rao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UITableView Delegate/DataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var tableCell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")

        if tableCell == nil {
            tableCell = UITableViewCell.init(style: .default, reuseIdentifier: "identifierString")
        }
        
        tableCell.textLabel?.text = String(indexPath.row)
        
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        showAlert(withTitleAndMessage: "Alert!", message: String(format: "%@ row is selected.",String(indexPath.row)) )
    }
    
    // MARK: - Other Methods
    
    func showAlert(withTitleAndMessage title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

