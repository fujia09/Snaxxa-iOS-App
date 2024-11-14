import SwiftUI

struct DrinkRow: View {
    
    var categoryName:String
    var drinks:[Drink]
    
        var body: some View {
            VStack(alignment: .leading) {

                Text(self.categoryName)
                    .font(.title)
                
                ScrollView{
                               ForEach(self.drinks,id: \.name){ drink in
                                
                                NavigationLink(destination: DrinkDetail(drink: drink))
                                {
                                
                                DrinkItem(drink: drink)
//                                    .frame(width:360.0)
//                                    .padding(.trailing, 30)
                                    
                                    
                                    
                                    
                               }
                           }
                       }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
