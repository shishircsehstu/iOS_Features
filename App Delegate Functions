 func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("Will enter foreground")
    }
    
    func applicationDidEnterForeground(_ application: UIApplication) {
        print("Application did enter Foreground")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Application did enter background")
        shouldShowAppOpenAd = true
        
        let compositionModel = CompositionManager.sharedInstance.getActiveCompositionModel()
        
        if  compositionModel?.videoItem.videoAsset != nil{
            print("Composition Not nill")
        }
        else{
            print("Composition Nill")
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
        tryToPresentAd()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
        if isEditVcPresent{
           // CoreDataManager.sharedInstance.saveVideoAndAudioInfoInCoreData()
        }
    }
    
