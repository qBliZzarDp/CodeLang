//
//  LangList.swift
//  CodLang
//
//  Created by Алексей Филатов on 17.03.2021.
//

import UIKit

class LangList: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    var imageNameArray = ["C#", "Python", "Swift"]
    let aboutLang = ["its coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language cozts coool language coz",
"""
Python is an interpreted, high-level and general-purpose programming language. Python's design philosophy emphasizes code readability with its notable use of significant indentation. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects..

Python is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented and functional programming. Python is often described as a «batteries included» language due to its comprehensive standard library.

Guido van Rossum began working on Python in the late 1980's, as a successor to the ABC programming language, and first released it in 1991 as Python 0.9.0. Python 2.0 was released in 2000 and introduced new features, such as list comprehensions and a garbage collection system using reference counting and was discontinued with version 2.7.18 in 2020. Python 3.0 was released in 2008 and was a major revision of the language that is not completely backward-compatible and much Python 2 code does not run unmodified on Python 3. Python consistently ranks as one of the most popular programming languages.

Python was conceived in the late 1980s by Guido van Rossum at Centrum Wiskunde & Informatica (CWI) in the Netherlands as a successor to ABC programming language, which was inspired by SETL, capable of exception handling and interfacing with the Amoeba operating system. Its implementation began in December 1989. Van Rossum shouldered sole responsibility for the project, as the lead developer, until 12 July 2018, when he announced his "permanent vacation" from his responsibilities as Python's Benevolent Dictator For Life, a title the Python community bestowed upon him to reflect his long-term commitment as the project's chief decision-maker. He now shares his leadership as a member of a five-person steering council. In January 2019, active Python core developers elected Brett Cannon, Nick Coghlan, Barry Warsaw, Carol Willing and Van Rossum to a five-member "Steering Council" to lead the project. Guido van Rossum has since then withdrawn his nomination for the 2020 Steering council.

Python 2.0 was released on 16 October 2000 with many major new features, including a cycle-detecting garbage collector and support for Unicode.

Python 3.0 was released on 3 December 2008. It was a major revision of the language that is not completely backward-compatible. Many of its major features were backported to Python 2.6.x and 2.7.x version series. Releases of Python 3 include the 2to3 utility, which automates (at least partially) the translation of Python 2 code to Python 3.

Python 2.7's end-of-life date was initially set at 2015 then postponed to 2020 out of concern that a large body of existing code could not easily be forward-ported to Python 3. No more security patches or other improvements will be released for it. With Python 2's end-of-life, only Python 3.6.x and later are supported.

Python 3.9.2 and 3.8.8 were expedited as all versions of Python (including 2.7) had security issues, leading to possible remote code execution and web cache poisoning.
"""
                     , "It's SUPER COOL"]
    let cellReuseIdentifier = "Cell"
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.backgroundColor = .systemGray5
        return imageNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
          let cell:CustomCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! CustomCell
        cell.cellName.text = self.imageNameArray[indexPath.row]
        cell.cellName.numberOfLines = 1
        cell.cellName.textAlignment = .center
        cell.cellImage.image = UIImage(named: imageNameArray[indexPath.row])
          return cell
    }

    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let toDetailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC else { return }
        toDetailVC.deImage = imageNameArray[indexPath.row]
        toDetailVC.deInfo = aboutLang[indexPath.row]
        toDetailVC.deLabel = imageNameArray[indexPath.row]
        self.navigationController?.pushViewController(toDetailVC, animated: true)
        }
}
