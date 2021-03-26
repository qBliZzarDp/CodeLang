import UIKit

class LangListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    var langArray = [
        Language(title: "Python", description: "It is Python", image: UIImage(named: "Python")),
        Language(title: "C#", description: "It is C# lang", image: UIImage(named: "C#")),
        Language(title: "Swift", description: "It's Swift", image: UIImage(named: "Swift"))
    ]
    let cellReuseIdentifier = "Cell"
    
    func configureTableView() {
        tableView.backgroundColor = .systemGray5
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return langArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! CustomCell
        let lang = langArray[indexPath.row]
        cell.set(language: lang)
        cell.cellName.numberOfLines = 1
        cell.cellName.textAlignment = .center
          return cell
    }

    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let toDetailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC else { return }
        let lang = langArray[indexPath.row]
        toDetailVC.deImage = lang.image
        toDetailVC.deInfo = lang.description
        toDetailVC.deLabel = lang.title
        self.navigationController?.pushViewController(toDetailVC, animated: true)
        }
}
