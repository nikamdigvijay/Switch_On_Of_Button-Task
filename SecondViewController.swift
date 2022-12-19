//
//  SecondViewController.swift
//  Task_2_19_Nov
//
//  Created by Digvijay Nikam on 19/11/22.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
 
    @IBOutlet weak var SVCtableView: UITableView!
    
    var dataFromFirstVC1 : String?
    var dataFromFirstVC2 : String?
    var dataFromFirstVC3 : String?
    var dataFromFirstVC4 : String?
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        SVCtableView.dataSource = self
        SVCtableView.delegate = self
        registerNib()
    }
    
    func registerNib(){
        let uinib = UINib(nibName: "customTableViewCell", bundle: nil)
        SVCtableView.register(uinib, forCellReuseIdentifier: "customTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.SVCtableView.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as! customTableViewCell
        cell.Label1.text = dataFromFirstVC1
        cell.Label2.text = dataFromFirstVC2
        cell.Label3.text = dataFromFirstVC3
        cell.Label4.text = dataFromFirstVC4
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
