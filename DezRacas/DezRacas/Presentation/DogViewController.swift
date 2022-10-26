//
//  ViewController.swift
//  DezRacas
//
//  Created by Lucas Pinto on 25/10/22.
//

import UIKit

class DogViewController: UIViewController {

    var dogView: DogView = DogView()
    var dogViewModel: DogViewModel = DogViewModel()
    
    override func loadView() {
        super.loadView()
        self.view = dogView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        dogView.setUpTableView(delegate: self, dataSource: self)
    }
}

extension DogViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogViewModel.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: DogTableViewCell? = tableView.dequeueReusableCell(withIdentifier: DogTableViewCell.identifier, for: indexPath) as? DogTableViewCell
        cell?.setUpCell(breedNextName: dogViewModel.list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.showMessage(withTitle: dogViewModel.list[indexPath.row], message: "Valeu Poli é nois")
    }
}
