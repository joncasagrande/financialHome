//
//  ViewController.swift
//  financialHome
//
//  Created by Jonathan on 27/09/17.
//  Copyright © 2017 com.jonathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var months = ["JAN", "FEV","MAR","ABR","JUN","JUL","AGO","SET","OUT","NOV","DEC"]
    var filtered = [String]()
    var searchActive : Bool = false
    
    @IBOutlet weak var tableMes: UITableView!
    @IBOutlet weak var searchView: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if(searchActive) {
            return filtered.count
        }
        return months.count;
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        if(searchActive){
            cell.textLabel?.text = (filtered[indexPath.row])
        } else {
            cell.textLabel?.text = months[indexPath.row]
        }
        return cell;
    }
    
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        delegate?.sendItem(item: todo[indexPath.row])
        self.performSegue(withIdentifier: "itemDetail", sender: self)
    }
 */
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchActive = true;
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filtered = months.filter(){ $0.lowercased().contains(searchText.lowercased()) }
        print(filtered.count)
        if(filtered.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        self.tableMes.reloadData()
    }
}

