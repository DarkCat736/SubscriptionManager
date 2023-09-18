//
//  ViewController.swift
//  Subscription Manager
//
//  Created by Kiran Hayden on 9/11/23.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    let userDefaults = UserDefaults.standard
    var SubNumber = 0;
    
    func CallMemory() {
        if userDefaults.object(forKey: "SubNames") == nil {
            let SubNames: [String] = []
            userDefaults.set(SubNames, forKey: "SubNames")
            print("Array Created and Stored In UserDefaults")
        }
        if userDefaults.object(forKey: "SubsDetails") == nil {
            let SubsDetails: [String] = []
            userDefaults.set(SubsDetails, forKey: "SubsDetails")
            print("Array Created and Stored In UserDefaults")
        }

        if userDefaults.object(forKey: "SubCancelLinks") == nil {
            let SubCancelLinks: [String] = []
            userDefaults.set(SubCancelLinks, forKey: "SubCancelLinks")
            print("Array Created and Stored In UserDefaults")
        }

        if userDefaults.object(forKey: "SubPaymentFrequencies") == nil {
            let SubPaymentFrequencies: [String] = []
            userDefaults.set(SubPaymentFrequencies, forKey: "SubPaymentFrequencies")
            print("Array Created and Stored In UserDefaults")
        }

        if userDefaults.object(forKey: "SubPaymentDates") == nil {
            let SubPaymentDates: [String] = []
            userDefaults.set(SubPaymentDates, forKey: "SubPaymentDates")
            print("Array Created and Stored In UserDefaults")
        }
        if userDefaults.object(forKey: "SubCosts") == nil {
            let SubCosts: [String] = []
            userDefaults.set(SubCosts, forKey: "SubCosts")
            print("Array Created and Stored In UserDefaults")
        }
        
    }
    
    @IBOutlet weak var SubName: UITextField!
    @IBOutlet weak var SubDetails: UITextField!
    @IBOutlet weak var SubCost: UITextField!
    @IBOutlet weak var SubCancelLink: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CallMemory()
        SubButton1Outlet.isEnabled = true
    }
    
    @IBAction func SubButton1(_ sender: Any) {
        SubNumber = 1;
    }
    @IBOutlet weak var SubButton1Outlet: UIButton!
    
    @IBAction func FirstNext(_ sender: Any) {
        var ele = 0
        var SubNames: [String] = userDefaults.stringArray(forKey: "SubNames") ?? []
        var SubsDetails: [String] = userDefaults.stringArray(forKey: "SubsDetails") ?? []
        SubNames.append("\(String(describing: SubName.text))")
        SubsDetails.append("\(String(describing: SubDetails.text))")
        userDefaults.set(SubNames, forKey: "SubNames")
        userDefaults.set(SubsDetails, forKey: "SubsDetails")
        print(SubNames)
        print(SubsDetails)
        while (ele < SubNames.count){
            let result = SubNames[ele]
            print(result)
            ele += 1
        }
    }
    @IBAction func SecondNext(_ sender: Any) {
        var SubCosts: [String] = userDefaults.stringArray(forKey: "SubCosts") ?? []
        var SubCancelLinks: [String] = userDefaults.stringArray(forKey: "SubCancelLinks") ?? []
        SubCosts.append("\(String(describing: SubCost.text))")
        SubCancelLinks.append("\(String(describing: SubCancelLink.text))")
        userDefaults.set(SubCosts, forKey: "SubCosts")
        userDefaults.set(SubCancelLinks, forKey: "SubCancelLinks")
        print(SubCosts)
        print(SubCancelLinks)
    }
    
    @IBOutlet weak var DailySwitch: UISwitch!
    @IBOutlet weak var MondaySwitch: UISwitch!
    @IBOutlet weak var TuesdaySwitch: UISwitch!
    @IBOutlet weak var WednesdaySwitch: UISwitch!
    @IBOutlet weak var ThursdaySwitch: UISwitch!
    @IBOutlet weak var FridaySwitch: UISwitch!
    @IBOutlet weak var SaturdaySwitch: UISwitch!
    @IBOutlet weak var SundaySwitch: UISwitch!
    @IBOutlet weak var MonthlySwitch: UISwitch!
    @IBOutlet weak var BiMonthlySwitch: UISwitch!
    @IBOutlet weak var YearlySwitch: UISwitch!
    @IBOutlet weak var BiYearlySwitch: UISwitch!
    @IBOutlet weak var OtherSwitch: UISwitch!
    @IBOutlet weak var SubPaymentDate: UIDatePicker!
    
    @IBAction func ThirdNext(_ sender: Any) {
        var SubPaymentFrequencies: [String] = userDefaults.stringArray(forKey: "SubPaymentFrequencies") ?? []
        var SubPaymentDates: [String] = userDefaults.stringArray(forKey: "SubPaymentDates") ?? []
        
        if DailySwitch.isOn{
            SubPaymentFrequencies.append("Daily")
        }
        if MondaySwitch.isOn{
            SubPaymentFrequencies.append("Mondays")
        }
        if TuesdaySwitch.isOn{
            SubPaymentFrequencies.append("Tuesdays")
        }
        if WednesdaySwitch.isOn{
            SubPaymentFrequencies.append("Wednesdays")
        }
        if ThursdaySwitch.isOn{
            SubPaymentFrequencies.append("Thursdays")
        }
        if FridaySwitch.isOn{
            SubPaymentFrequencies.append("Fridays")
        }
        if SaturdaySwitch.isOn{
            SubPaymentFrequencies.append("Saturdays")
        }
        if SundaySwitch.isOn{
            SubPaymentFrequencies.append("Sundays")
        }
        if MonthlySwitch.isOn{
            SubPaymentFrequencies.append("Monthly")
        }
        if BiMonthlySwitch.isOn{
            SubPaymentFrequencies.append("BiMonthly")
        }
        if YearlySwitch.isOn{
            SubPaymentFrequencies.append("Yearly")
        }
        if BiYearlySwitch.isOn{
            SubPaymentFrequencies.append("BiYearly")
        }
        if OtherSwitch.isOn{
            SubPaymentFrequencies.append("Other")
        }
        SubPaymentDates.append("\(String(describing: SubPaymentDate.date))")
        userDefaults.set(SubPaymentDates, forKey: "SubPaymentDates")
        userDefaults.set(SubPaymentFrequencies, forKey: "SubPaymentFrequencies")
        print(SubPaymentFrequencies)
        print(SubPaymentDates)
    }
    
    @IBOutlet weak var LoadingLabel: UILabel!
    
    @IBAction func FourthNext(_ sender: Any) {
        LoadingLabel.text = "Please Wait, Saving..."
    }
}

