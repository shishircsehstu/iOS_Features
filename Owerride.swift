class Video{
    func duration(){
        print("2 mins")
    }
    func getSize(asset: PHAsset)->Double{
        return asset.duration
    }
}
class Image: Video{
    override func duration() {
        print("No duration for image")
    }
}

let ob = Image()
ob.duration()
ob.getSize(asset: YourAsset)
