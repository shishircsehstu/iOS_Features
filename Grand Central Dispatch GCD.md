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

    Highest priority. For tasks that update the UI immediately or require instant results. Runs on the main thread or high-priority background threads.
    Animations, responding to touches, updating UI instantly

- userInitiated: Used for tasks like loading data from API, preventing the user from making interactions.
     High priority. Tasks initiated by the user that must complete quickly but not instantly.
     Opening a document, performing a quick calculation after a button tap
- utility: Used for tasks that do not need to be tracked by the user.
     Lower priority. For tasks that take time and the user is aware of the progress. Energy-efficient.
     Downloading files, importing data, showing a progress bar
  
- background: Used for tasks like saving data in the local database or any maintenance code which is not on high priority.
    Lowest priority. For tasks the user isn’t directly aware of.
    Prefetching data, syncing to cloud, cleanup
