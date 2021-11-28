class ViewController: UIViewController {
    
    var dispatch = DispatchGroup()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imgURL = URL(string: "https://picsum.photos/id/131/4698/3166")!
        
        dispatch.enter()
        downloadImage(indx: 1, imgURL: imgURL) { [ self] img in
            print("Done ",1)
            dispatch.leave()
        }
        
        dispatch.enter()
        downloadImage(indx: 2, imgURL: imgURL) { [ self] img in
            print("Done ",2)
            dispatch.leave()
        }
        
        dispatch.enter()
        downloadImage(indx: 3, imgURL: imgURL) { [ self] img in
            print("Done ",3)
            dispatch.leave()
        }
        dispatch.notify(queue: .main) {
            print("All done!!")
        }
        
        
        print("All Running..")
        
    }
    
     func downloadImage(indx: Int,imgURL: URL, completion: @escaping (UIImage?)->()){
        
        print("Running.. ", indx)
        URLSession.shared.dataTask(with: imgURL) { (data, respnse, error) in
            if let error = error {
                print("Error: \(error)")
                
            }else if let data = data {
                
                DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    
                    if let img = image{
                        completion(img)
                    }else{
                        completion(nil)
                    }
                }
            }
        }.resume()
    }
  }
  
  
  Output::
-------------
Running..  1
Running..  2
Running..  3
All Runnfing..
Done  2
Done  3
Done  1
All done!!
