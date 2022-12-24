//
//  HomeViewController.swift
//  TableViewCell
//
//  Created by Yusuf Burak Elkan on 24.12.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    //   MARK: - UI Elements -> Yusuf Burak Elkan..
    @IBOutlet weak var tableView: UITableView!
    //   MARK: - Properties -> Yusuf Burak Elkan..
    var viewModel: [section] = []
    //   MARK: - Life Cyle -> Yusuf Burak Elkan..
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSource()
    }
    
    //   MARK: - Functions -> Yusuf Burak Elkan..
    func tableViewSource(){
        viewModel = [
            section(section: "Section1"),
            section(section: "Section2"),
            section(section: "Section3"),
            section(section: "Section4"),
            section(section: "Section5"),
            section(section: "Section6"),
            section(section: "Section7"),
            section(section: "Section8"),
            section(section: "Section9"),
        ]
        
        let nib = UINib(nibName: "HomeTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "HomeTableViewCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    //   MARK: - Actions -> Yusuf Burak Elkan..
    
}
    //   MARK: - Extensions -> Yusuf Burak Elkan..
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let incominglist = viewModel[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as! HomeTableViewCell
        cell.HomeTableLabel.text = incominglist.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
