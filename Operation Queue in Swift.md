## Operation Queue


 private func calculate() {
        print("Start..")
        ProgressHUD.show()
        let queue = OperationQueue()
        let blockOperation = BlockOperation {
            
            var result = 0
            for i in 1...70000000 {
                result += i
            }
            
            print("Ended", result)
            OperationQueue.main.addOperation {
                ProgressHUD.dismiss()
                print("Ended")
               
            }
        }
        
        print("Fake End")
        queue.addOperation(blockOperation)
    }
