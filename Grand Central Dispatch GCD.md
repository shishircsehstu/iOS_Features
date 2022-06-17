## Grand Central Dispatch (GCD)
 GCD is used for API managing operations either asynchronously or synchronously. GCD can be used to manage heavy tasks to the background so that we can improve our app’s responsiveness.
 
### 1. Main Dispatch Queue
  Anything that modifies/update the UI must run on the main thread, it is common to use this to update the UI after completing work in a task on a concurrent queue.

  
        DispatchQueue.main.async {
            // Update your UI
        }
        
### 2. Concurrent Queues (Global Dispatch Queues)
Concurrent queues execute one or more tasks in the same time. 
 
        DispatchQueue.global(qos: .background).async {
          //self.doSomething()
        }
        
## QoS (Quality of Service)

- userInteractive: Used for animations, or updating UI.

- userInitiated: Used for tasks like loading data from API, preventing the user from making interactions.

- utility: Used for tasks that do not need to be tracked by the user.

- background: Used for tasks like saving data in the local database or any maintenance code which is not on high priority.
