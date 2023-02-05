## Operation Queue

Operation Queue is a special queue to which we can add our operations to have them executed on a separate thread. It is a kind of FIFO queue. It allows us to add priorities to our tasks and add dependencies between them.

#Advantage 
- When you need to perform a task based on the outcome of another task, you might want to use operation queues to overcome the FIFO behavior of dispatch queues.
- Dispatch queues don’t allow you to set priorities. If your tasks need to be prioritized, you need to use operation queues.
- Operation queues allow you to cancel an already scheduled task. Since GCD is not exactly known for its transparency, this is not easily achievable with dispatch queues. There are some workarounds, but there is no good way to do this with GCD. Even then, once a task has started running in a dispatch queue, there is no stopping it. Operation queues, even though they don’t forcefully stop an already executing operation, set its canceled property to true. Each operation has ready, executing, and finished states. Finished is set to true when the execution is successfully completed. If there is a completion block associated with the operation, it is executed when the finished flag is set. In case of a canceled operation though, the canceled flag is set before the finished flag. So you can modify the completion block accordingly and handle the canceled scenario if needed. This would not be possible with GCD.

    
    
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
```
 Start
 Fake End
 Ended 2450000035000000
 Ended
 ```
