### Closure

- Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures can capture and store references to any constants and variables from the context in which they’re defined.


## Why they made @nonescaping by default?

There are many different benefits of making non-escaping as by default. The most important benefits are performance and code optimisation by the compiler, because if the compiler knows that the closure is non-escaping, will take care about the memory allocation for the closure.

-  No need to use ` weak self ` this is the additional feature.

## @escaping


When we need to API calls where code is running asynchronously and execution time is unknown. It may consume some moment for fetcing data, so it's contains or hold memory after execution time finished it callback to caller. 
So escaping closure will remain in memory and therefore we have to add [Weak self] in closure body to avoid retain count/ cycle.

func downloadImage(imgURL: URL, completion: @escaping (UIImage?)->()){        
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
    
  
  ### Usage
  downloadImage(imgURL: imgURL) { [weak self] (img) in
            
   }

