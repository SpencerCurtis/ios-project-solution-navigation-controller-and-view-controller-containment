//
//  ResultsListTableViewController.swift
//  Poll
//
//  Created by Spencer Curtis on 7/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ResultsListTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController.votes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath)

        let poll = voteController.votes[indexPath.row]
        
        cell.textLabel?.text = poll.name
        cell.detailTextLabel?.text = poll.response

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CreateVote" {
            guard let destinationVC = segue.destination as? VotingViewController else { return }

            destinationVC.voteController = voteController
        }
    }

    var voteController = VoteController()
}
