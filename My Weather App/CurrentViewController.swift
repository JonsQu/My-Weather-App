//
//  ViewController.swift
//  My Weather App
//
//  Created by ShadoWalker on 3.10.2018.
//  Copyright © 2018 ShadoWalker. All rights reserved.
//

import UIKit

class CurrentViewController: UIViewController {

    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var temperature: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchUrl(url: "api.openweathermap.org/data/2.5/weather?q=Tampere")
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func fetchUrl(url : String) {
        let config = URLSessionConfiguration.default
        
        let session = URLSession(configuration: config)
        
        let url : URL? = URL(string: url)
        
        let task = session.dataTask(with: url!, completionHandler: doneFetching);
        
        // Starts the task, spawns a new thread and calls the callback function
        task.resume();
    }
    
    func doneFetching(data: Data?, response: URLResponse?, error: Error?) {
        
        // Execute stuff in UI thread
        DispatchQueue.main.async(execute: {() in
        })
    }
}

