

import Foundation

/// Make model according to json formetter

struct allData: Codable{
    var myData: [allItems]
    var status: String
}

struct allItems: Codable{
    var title: String
    var items: [String]
}    


func fetchData(){
        
        guard let path = Bundle.main.path(forResource: "myData", ofType: ".json") else{
            return
        }
        
        let url = URL(fileURLWithPath: path)
        do{
            let jsonData = try Data(contentsOf: url)
            allDataInfo = try JSONDecoder().decode(allData.self, from: jsonData)
            guard let allDataInfo = allDataInfo else{ return }
            print(allDataInfo.myData.count)
            print("status :: ",allDataInfo.status )
            
            for itm in allDataInfo.myData{
                
                print(itm.title," :: ")
                for items in itm.items{
                    print(items)
                }
                print("\n")
            }
        }
        catch{
            print(error.localizedDescription)
        }
    }

// Sample Json file

{
    "myData": [
        {
            "title": "Fruites",
            "items": [
                "Apple",
                "Orange",
                "Banana",
                "Malta"
            ]
        },
        {
            "title": "Cars",
            "items": [
                "BMW",
                "Mercedes-Benz",
                "Honda",
                "Kawasaki",
                "Volkswagen"
            ]
        },
        {
            "title": "Country",
            "items": [
                "Bangladesh",
                "Turky",
                "Palestine",
                "Siriya"
            ]
        }
    ],
    "status": "okay"
}

