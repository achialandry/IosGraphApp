//
//  ViewController.swift
//  SwiftGraphsCharts
//
//  Created by Landry Achia Ndong on 2018-07-19.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

import UIKit
import SwiftCharts
import ScrollableGraphView

class ViewController: UIViewController {
    
    //variable to hold Chart
    var chartView: BarsChart!
    
    //

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configuration for Barchart for both x and y axis
        let chartConfiguration = BarsChartConfig(valsAxisConfig: ChartAxisConfig(from: 0, to: 100, by: 10))
        
        //configuration axis titles
        let graphFrame = CGRect(x: 0, y: 100, width: self.view.frame.width-10, height: 250)
        
        let chart = BarsChart(
            frame: graphFrame,
            chartConfig: chartConfiguration,
            xTitle: "Week Days",
            yTitle: "Profit Percent",
            bars: [
                ("Mon", 30.5),
                ("Tues", 78.3),
                ("Wed", 97.4),
                ("Thurs", 55.5),
                ("Fri", 12.3),
                ("Sat", 81.0),
                ("Sun", 91.99)
            ],
            color: UIColor.cyan,
            barWidth: 19
        )
        
        //adding the chart to view
        self.view.addSubview(chart.view)
        
        //working with second chart
        
        
        //assigning chart to chartview var
        self.chartView = chart
        
        
    }
    
    //action
    @IBAction func performSegueToScrollableGraphs(_ sender: Any) {
        performSegue(withIdentifier: "scrollGraphViewSegue", sender: self)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

