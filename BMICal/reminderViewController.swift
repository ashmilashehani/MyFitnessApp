//
//  reminderViewController.swift
//  BMICal
//
//  Created by MacBook Aor on 2023-05-16.
//

import UserNotifications
import UIKit

class reminderViewController: UIViewController {
    
   

       var exerciseLabel: UILabel!

    @IBOutlet var table : UITableView!
    
    var models = [MyReminder]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //table.delegate = self
      
       // table.dataSource = self
       
    }
    
    
    
  //  @IBAction func didTapAdd(){
        //show add vc
        
      //  guard let vc = storyboard?.instantiateViewController(identifier: "add") as? AddViewController else {
        //    return
   //     }
     //   vc.title = "New Reminder"
    //    vc.navigationItem.largeTitleDisplayMode = .never
   //     vc.completion = { title, body, date in
         //   DispatchQueue.main.async{
       //         self.navigationController?.popToRootViewController(animated: true)
    //            let new = MyReminder(title: title, date: date, identifier: "id_\(title)")
      //          self.models.append(new)
        //        self.table.reloadData()
                
    //            let content = UNMutableNotificationContent()
      //          content.title = title
      //          content.sound = .default
        //        content.body = body
                
     //       let tragetDate = date
       //       let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: targetDate),
         //                                                   repeats: false)
                
       //         let request = UNNotificationRequest(identifier: "some_long_id", content: content,  trigger: trigger)
 //               UNUserNotificationCenter.current().add(request, withCompilationHandler:{ error in
    //                if error != nill {
  //                      print("something went wrong")
        //           }
 //              })
                                                            
            }
   //     }
   //     navigationController?.pushViewController(vc, animated: true)
 //   }
    
   // @IBAction func didTapTest(){
    //fire test notification
    
    // UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {sucess, error in
    //     if sucess {
     //           schedule test
      //       self.scheduleTest()
     //      }
     //      else if error != error {
       //     print("Error Occured")
                
  //          }
   //     })
        
  //  }
    
  //  func scheduleTest (){
    //    let content = UNMutableNotificationContent()
  //      content.title = "Hello World"
  //      content.sound = .default
  //      content.body = "My long body. My long body"
        
  //  let tragetDate = Date().addingTimeInterval(10)
    //  let trigger = UNCalendarNotificationTrigger(dateMatching: //Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], //from: targetDate),
        //                                            repeats: false)
        
     //   let request = UNNotificationRequest(identifier: "some_long_id", content: content,  //trigger: trigger)
   //     UNUserNotificationCenter.current().add(request, withCompilationHandler:{ error in
            //if error != nill {
          //      print("something went wrong")
        //   }
      // })
                                                    
    //}
//}

extension reminderViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath ){
        tableView.deselectRow(at: indexPath, animated: true)
            
        }
    
}

extension reminderViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        
        return cell
    }
    
}

struct MyReminder{
    let title : String
    let date : Date
    let identifier : String
}
