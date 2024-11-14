import SwiftUI

struct HomeView: View {
    
    var categories:[String:[Drink]]{
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue }
        )
    }
    
    var body: some View {
        TabView{
//            Image("NIS logo")
////                .frame(width:10,height:10)
//                .resizable()
//                .aspectRatio(contentMode:.fit)
            ScrollView {
                Image("NIS logo")
                    .resizable()
                    .scaledToFit()

                Text("About us")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)

                Text("Hi! \nWe are Fujia and Leon the founders of the business, Snaxxa. We are a B2B business aiming to promote the food items of other food businesses in this year's NIS International Food Festival.")
                    .padding(.horizontal)

                Text("Information of the event?")
                    .font(.title)
                    .bold()
                    .padding(.top)

                Text("The event will take place during May 27-28th in Nanjing International School")
                    .padding(.horizontal)
            }
            .navigationBarTitle("Discover")
                .tabItem{
                    Image(systemName: "info.circle.fill")
                    Text("About")
                }
                .navigationBarTitle(Text("NIS INTERNATIONAL FOOD FESTIVAL"))
                
                    
            NavigationView{
                List(categories.keys.sorted(), id: \.self) { key in DrinkRow(categoryName: "FOOD BUSINESSES".uppercased(), drinks:self.categories[key]!).padding(.top).padding(.bottom)
                }
            .navigationBarTitle(Text("NIS FOOD FESTIVAL"))
            }
            .tabItem{
                Image(systemName: "bag.circle.fill")
                Text("Discover")

        }

            }
        }

}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
