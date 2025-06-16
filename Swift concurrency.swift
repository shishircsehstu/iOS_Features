Swift concurrency automatically handles main thread dispatch for UI updates when you use @MainActor:
When use  @MainActor in a class or methods its automatically run in main thread and updates UI. 

Concurrency means doing multiple things at the same time (like downloading while scrolling)

Swift Concurrency is a modern, structured way to write asynchronous and concurrent code in Swift using:\

async / await
Task { }
Actors
TaskGroup
MainActor, @Sendable, @MainActor, etc.

Synchronous: The task blocks the current thread until it completes
Asynchronous: The task starts but allows the current thread to continue, with results delivered later
