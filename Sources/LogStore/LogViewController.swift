//  Created by dasdom on 09.05.20.
//  
//

import UIKit

public class LogViewController: UITableViewController {
  
  let logItems = LogStore.log
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
  }
  
  public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return logItems.count
  }
  
  public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    
    cell.textLabel?.text = logItems[indexPath.row]
    
    return cell
  }
}
