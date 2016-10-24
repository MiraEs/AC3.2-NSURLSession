//
//  InstaCatTableViewController.swift
//  AC3.2-InstaCats-2
//
//  Created by Louis Tur on 10/10/16.
//  Copyright © 2016 C4Q. All rights reserved.
//
/*
import UIKit

class InstaCatTableViewController: UITableViewController {
    internal let InstaCatTableViewCellIdentifier: String = "InstaCatCellIdentifier"
    internal let instaCatJSONFileName: String = "InstaCats.json"
    internal var instaCats: [InstaCat] = []
    internal let instaCatEndpoint: String = "https://api.myjson.com/bins/254uw"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getInstaCats(apiEndpoint: instaCatEndpoint) { (fatCats: [InstaCat]?) in
            if let cat = fatCats {
                self.instaCats = cat
                
                DispatchQueue.main.async{
                    self.tableView.reloadData()
                }
                
            }
        }
    }
    
    
    //URL request
    //func URL request shouldn't return because closures take longer to get the data and load it into your output variables -- callback closures help avoid this?
    func getInstaCats(apiEndpoint: String, callback: @escaping ([InstaCat]?) -> Void) {
        if let validInstaCatEndpoint: URL = URL(string: apiEndpoint) {
            
            // 1. URLSession/Configuration
            let session = URLSession(configuration: URLSessionConfiguration.default)
            
            
            // 2. dataTaskWithURL
            session.dataTask(with: validInstaCatEndpoint) { (data: Data?, response: URLResponse?, error: Error?) in
                
                // 3. check for errors right away
                if error != nil {
                    print("Error encountered!: \(error!)")
                }
                
                // 4. printing out the data
                if let validData: Data = data {
                    print(validData) // not of much use other than to tell us that data does exist
                    
                    // 5. reuse our code to make some cats from Data
                    // 6. if we're able to get non-nil [InstaCat], set our variable and reload the data
                    //access data from this closure and update
                    if let allTheCats: [InstaCat] = InstaCatFactory.manager.getInstaCats(from: validData) {
                        
                        print(allTheCats)
                        callback(allTheCats)
                    }
                }
                }.resume()
        }
    }
    
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.instaCats.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: InstaCatTableViewCellIdentifier, for: indexPath)
        
        cell.textLabel?.text = self.instaCats[indexPath.row].name
        cell.detailTextLabel?.text = self.instaCats[indexPath.row].description
        
        return cell
    }
    
}

*/
