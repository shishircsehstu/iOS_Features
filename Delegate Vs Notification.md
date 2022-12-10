### Delegation
 - Delegation is an iOS application design pattern that is used for 1 to 1 relation or communication one class to another class. Delegate is the reference of class which is going to confirm to the protocol.
### Notification 

- Notification is used for 1 to many relation or communication. 


```
//for post 
 NotificationCenter.default.post(name: Notification.Name("RELOAD_COLLECTION_VIEW"), object:nil, userInfo: nil)
```

```
// for receive
NotificationCenter.default.addObserver(self, selector: #selector(reloadCollectonView), name: NSNotification.Name(rawValue: "RELOAD_COLLECTION_VIEW"), object: nil)
    
```
