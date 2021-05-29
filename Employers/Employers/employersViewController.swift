//
//  employersViewController.swift
//  Employers
//
//  Created by Bishowjit Ray on 21/3/21.
//

import UIKit

class employersViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    let name = ["Tamilarasi Mohan","Kim Yu","Derek Fowler","Shreya Nithin","Emily Adams","Aabidah Amal","Mohammad Hussain","John Young"]
        
        let work = ["Architect","Economist","Web Strategist","Product Designer","Editor","Creative Director","SEO Specilalist","Interaactive Designer"]
        let countryimage = [UIImage(named: "al"),UIImage(named: "br"),UIImage(named: "ar"),UIImage(named: "az"),UIImage(named: "bo"),UIImage(named: "au"),UIImage(named: "be"),UIImage(named: "af")]
        let nameimage = [UIImage(named: "Tamilarasi Mohan"),UIImage(named: "Kim Yu"),UIImage(named: "Derek Fowler"),UIImage(named: "Shreya Nithin"),UIImage(named: "Emily Adams"),UIImage(named: "Aabidah Amal"),UIImage(named: "Mohammad Hussain"),UIImage(named: "John Young")]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate   = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  em = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        em.imageView1.image = nameimage[indexPath.row]
        em.imageView2.image = countryimage[indexPath.row]
        em.label1.text = name[indexPath.row]
        em.label2.text = work[indexPath.row]
        
        return em
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "fourthViewController") as! fourthViewController
        vc.Name = name[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
