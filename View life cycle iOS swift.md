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
### viewWillLayoutSubviews
This method is called every time the frame changes like for example when rotate or it’s marked as needing layout. It’s the first step where the view bounds are final.

```
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }
```
### viewDidLayoutSubviews
- Make additional changes here after the view lays out its subviews.
```
   override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
```
### viewDidAppear
- This method gets called after the view controller appears on screen.
   ```
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
  ```
### viewWillDisappear
- This method called before the view are remove from the view hierarchy. 
### viewDidDisappear()
- After a view controller gets removed from the screen, this method gets called.
 ```
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
    }
 ```
 
