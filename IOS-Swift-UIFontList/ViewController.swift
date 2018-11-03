//
//  ViewController.swift
//  IOS-Swift-UIFontList
//
//  Created by Pooya on 2018-11-02.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView : UITableView!
    var tableDataArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableDataArray = fontsListToArray()
        
    }

    func fontsListToArray() -> [String] {
        let familyNames = UIFont.familyNames
        
        for family in familyNames {
            print("Family name " + family)
            let fontNames = UIFont.fontNames(forFamilyName: family)
            
            for font in fontNames {
                print("    Font name: " + font)
            }
        }
        
        return familyNames
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.cellLabelView?.text = tableDataArray[indexPath.row]
        //cell.cellLabelView.text = "test"
        cell.cellLabelView.font = UIFont(name: tableDataArray[indexPath.row] , size: 26)
        
        return cell
    }
    
}

