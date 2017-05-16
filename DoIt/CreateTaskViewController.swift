//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Kari Newhouse on 5/15/17.
//  Copyright © 2017 Kari Code. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)

        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back

        navigationController!.popViewController(animated: true)
    }

}
