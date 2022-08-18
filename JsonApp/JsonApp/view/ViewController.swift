//
//  ViewController.swift
//  JsonApp
//
//  Created by Apple on 17.08.2022.
//

import UIKit

class ViewController: UIViewController {
  

    @IBOutlet weak var tableView: UITableView!
    
    private var jsonListViewModel: jsonListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        getData ()
     
        
        
    }
    
    @objc func getData () {
        
        
        let url  = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        
        WebServices().donwloadJsonData(url: url) {(jsons) in
            if let jsons = jsons {
            
                self.jsonListViewModel = jsonListViewModel(jsonDataList:jsons)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.jsonListViewModel == nil ? 0 : self.jsonListViewModel.numbersOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contentCell", for: indexPath) as! ContentTableViewCell
        
        let jsonViewModel  = self.jsonListViewModel.jsonAtIndex(indexPath.row)
        cell.title.text = jsonViewModel.title
        cell.body.text = jsonViewModel.body
        
        return cell
        
    }

    
}

