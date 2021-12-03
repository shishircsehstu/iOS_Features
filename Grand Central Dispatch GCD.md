### Grand Central Dispatch (GCD)
 GCD is used for API managing operations either asynchronously or synchronously. GCD can be used to manage heavy tasks to the background so that we can improve our app’s responsiveness.
 
1. Main Dispatch Queue
  Anything that modifies/update the UI must run on the main thread, it is common to use this to update the UI after completing work in a task on a concurrent queue.

  
        DispatchQueue.main.async {
            // Update your UI
        }
        
3. Concurrent Queues (Global Dispatch Queues)
