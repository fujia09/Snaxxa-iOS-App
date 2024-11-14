import SwiftUI

struct DrinkDetail: View {
    
    var drink:Drink
    
    var body: some View {
        List{
            ZStack(alignment:.bottom) {
                Image(drink.imageName)
                .resizable()
                .aspectRatio(contentMode:.fit)
//                Rectangle().frame(height:70).background(Color.black).opacity(0.25).blur(radius: 10)
                HStack{
                    VStack(alignment: .leading,spacing:8){
//                        Text(drink.name)
//                            .foregroundColor(.white)
//                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }.listRowInsets(EdgeInsets())
            //Zstack ends
            
            VStack(alignment: .leading) {
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    Spacer()
                }.padding(.top,50)
            }
            .padding(.top) //End of Vstack
            .padding(.bottom)

        } //End of list
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(false)
    }
}


struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
