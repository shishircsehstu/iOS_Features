## Operation Queue

Operation Queue is a special queue to which we can add our operations to have them executed on a separate thread. It is a kind of FIFO queue.

    
    
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
Output
-----------
- Start
- Fake End
- Ended 2450000035000000
- Ended
