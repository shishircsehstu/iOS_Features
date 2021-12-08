### loadView
This method use when view Controller create from code .Its good not to do anything on this method .If view Controller made from .xib or storyboard.

```
  override func loadView() {
        super.loadView()
        print("Load done..")
    }
    
```
### viewDidLoad
This Method is loaded once in view controller life cycle .Its Called When all the view are loaded. 

```
 override func viewDidLoad() {
        super.viewDidLoad()
    }
    
```
### viewWillAppear
This Method is called every time before the view are visible to and before any animation are configured
```
 override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
```
