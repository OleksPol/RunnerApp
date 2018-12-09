//
//  RunLogCell.swift
//  RunnerApp
//
//  Created by Alexandr on 12/9/18.
//  Copyright © 2018 Alexander. All rights reserved.
//

import UIKit

class RunLogCell: UITableViewCell {
    @IBOutlet weak var durationLbl: UILabel!
    @IBOutlet weak var totalDistanceLbl: UILabel!
    @IBOutlet weak var averagePaceLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(run: Run) {
        durationLbl.text = run.duration.formatTimeDurationToString()
        totalDistanceLbl.text = "\(run.distance.metersToMiles(places: 2)) mi"
        averagePaceLbl.text = run.pace.formatTimeDurationToString()
        dateLbl.text = run.date.getDateString()
    }

}
