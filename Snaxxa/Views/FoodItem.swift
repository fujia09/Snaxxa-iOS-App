import SwiftUI

struct DrinkItem: View {
    
    var drink:Drink
    
    var body: some View {
        VStack(alignment: .center, spacing: 16.0) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
//                .frame(width:500,height:300)
//                .padding(.trailing, 400)
//                .padding(.leading, 400)
                .cornerRadius(5)
                .shadow(radius: 10)
        VStack(){
            Text(drink.name)
                .font(.headline)
                .foregroundColor(.primary)
            Text(drink.description)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .lineLimit(2).frame(height:40)
                .foregroundColor(.primary)
                
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
