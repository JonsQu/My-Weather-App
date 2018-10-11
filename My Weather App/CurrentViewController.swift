//
//  ViewController.swift
//  My Weather App
//
//  Created by ShadoWalker on 3.10.2018.
//  Copyright © 2018 ShadoWalker. All rights reserved.
//

import UIKit

class CurrentViewController: UIViewController {

    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var temperature: UITextField!
    var weather: WeatherModel?
    var imageUrl: String?
    var img: String?
    var webImage: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchUrl(url: "http://api.openweathermap.org/data/2.5/weather?q=Tampere&units=metric&APPID=00d107d4d98c095a5c1c7d9b632b2cea")
        // Do any additional setup after loading the view, typically from a nib.
        print(self.imageUrl as Any)
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
        let resstr = String(data: data!, encoding: String.Encoding.utf8)
        do{
            self.weather = try JSONDecoder().decode(WeatherModel.self, from: data!)
            self.img = self.weather?.weather?.first?.icon
            self.imageUrl = "http://openweathermap.org/img/w/\(self.img ?? "00").png"
            self.fetchImage(url: self.imageUrl ?? "00")
            print(self.img as Any)
            print(self.imageUrl as Any)
        }catch{
            NSLog("error")
        }
        // Execute stuff in UI thread
        DispatchQueue.main.async(execute: {() in
            NSLog(resstr!)
            self.city.text = self.weather?.name
            self.temperature.text = (self.weather?.main?.temp?.description)! + "°"
        })
    }
    func fetchImage(url: String){
        print(url)
        let config = URLSessionConfiguration.default
        
        let session = URLSession(configuration: config)
        
        let url : URL? = URL(string: url)
        
        let task = session.dataTask(with: url!, completionHandler: doneFetchingImage);
        
        // Starts the task, spawns a new thread and calls the callback function
        task.resume();
    }
    func doneFetchingImage(data: Data?, response: URLResponse?, error: Error?){
       
            if let imageData = data{
                self.webImage = UIImage(data: imageData)
        }
        DispatchQueue.main.async(execute: {() in
            self.weatherImage.image = self.webImage
        })
    }
}
