import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        switch indexPath.row{
        case 0:
       let ViewController2 =
           self.storyboard?.instantiateViewController(withIdentifier:"SecondView") as!ViewController2
       
        self.navigationController?.pushViewController(ViewController2, animated: true)
       break
            
            
       
            
     
            
            
            
            
            
            
            
            
             
            
        default: break
        
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

        
}
}
