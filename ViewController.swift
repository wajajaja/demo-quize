import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var MyTableView: UITableView!
    
    var foldingflag1 = false
        var foldingflag2 = false
        var foldingflag3 = false
        var foldingflag4 = false
        var foldingflag5 = false
        
        var items1: NSMutableArray = ["Part 1","Part 2","Part 3","Part 4"]
        var items2: NSMutableArray = ["Part 1","Part 2","Part 3","Part 4"]
        var items3: NSMutableArray = ["Part 1","Part 2","Part 3","Part 4"]
        var items4: NSMutableArray = ["Part 1","Part 2","Part 3","Part 4"]
        var items5: NSMutableArray = ["Part 1","Part 2","Part 3","Part 4"]
        
        var section1: Dictionary = [String:NSMutableArray]()
        var section2: Dictionary = [String:NSMutableArray]()
        var section3: Dictionary = [String:NSMutableArray]()
        var section4: Dictionary = [String:NSMutableArray]()
        var section5: Dictionary = [String:NSMutableArray]()
        var sections: Array = [Dictionary<String,NSMutableArray>]()
       
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        let bgColor = UIColor.green.withAlphaComponent(0.1)
            self.MyTableView.backgroundColor = bgColor
        self.MyTableView.backgroundView?.backgroundColor = bgColor
        
        section1 = ["Level 1":items1]
        section2 = ["Level 2":items2]
        section3 = ["Level 3":items3]
        section4 = ["Level 4":items4]
        section5 = ["Level 5":items5]
        
        sections.append(section1)
        sections.append(section2)
        sections.append(section3)
        sections.append(section4)
        sections.append(section5)
        
        MyTableView.delegate = self
        MyTableView.dataSource = self
        
        }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let myView: UIView = UIView()
        let label:UILabel = UILabel()
        for (key) in sections[section].keys
    {
        label.text = key
    }
    label.sizeToFit()
    label.textColor = UIColor.black
    myView.addSubview(label)
    myView.backgroundColor = UIColor.green

    myView.tag = section

          myView  .addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tapHeader(gestureRecognizer:))))

        
        
        
    return myView
    }

        func numberOfSections(in tableView: UITableView) -> Int{
    return self.sections.count
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    switch section {
    case 0:
        return foldingflag1 ? 0 : self.items1.count
    case 1:
        return foldingflag2 ? 0 : self.items2.count
    case 2:
        return foldingflag3 ? 0 : self.items3.count
    case 3:
        return foldingflag4 ? 0 : self.items4.count
    case 4:
        return foldingflag5 ? 0 : self.items5.count
        default:
        return 0
       }
    }

            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier:  "cell", for:indexPath as IndexPath)
            for (value) in sections[indexPath.section].values
            {
                cell.textLabel?.text = value[indexPath.row] as? String
    }

    return cell
    }
       
            @objc func tapHeader(gestureRecognizer: UITapGestureRecognizer) {
            
                guard let section = gestureRecognizer.view?.tag as Int? else {
                return
            }
            

            
        
    switch section {
    case 0:
        foldingflag1 = foldingflag1 ? false : true
    case 1:
        foldingflag2 = foldingflag2 ? false : true
    case 2:
        foldingflag3 = foldingflag3 ? false : true
    case 3:
        foldingflag4 = foldingflag4 ? false : true
    case 4:
        foldingflag5 = foldingflag5 ? false : true

    default:break
                }
    MyTableView.reloadSections(NSIndexSet(index: section) as IndexSet, with: .none)
       }





    }


    
