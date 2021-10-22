//
//  ContentView.swift
//  InfoBrochure
//
//  Created by Shubham Arya on 1/14/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            ScrollView{
                VStack{
                    Text("Sortify 2.0 comes with some new exciting features that enhances your experience")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .trailing])
                    VStack(alignment: .leading, spacing: 20){
                                                
                        FeatureCell(color: .green, image: "note", headline: "Feature 1", subtitle: "Write a brief text describing the features of Feature 1 and how to to use.")
                        
                        FeatureCell(color: .orange, image: "pin", headline: "Feature 2", subtitle: "Write a brief text describing the features of Feature 2 and how to to use.")
                        
                        FeatureCell(color: .pink, image: "faceid", headline: "Feature 3", subtitle: "Write a brief text describing the features of Feature 3 and how to to use.")
                        
                        FeatureCell(color: .purple, image: "list.bullet.rectangle", headline: "Feature 4", subtitle: "Write a brief text describing the features of Feature 4 and how to to use.")
                                                
                        FeatureCell(color: .blue, image: "clock", headline: "Feature 5", subtitle: "Write a brief text describing the features of Feature 4 and how to to use.")
                        
                    }
                    .padding()
                    Spacer()
                    
                    Text("Short description about some other feature here that may not be as significant. Also can add a message from me.")
                        .font(.system(size: 18))
                        .padding([.leading, .bottom, .trailing])
                        .multilineTextAlignment(.center)
                    Text("Some more text can be added here. This is small in size and gray in color because it is insignificant.")
                        .font(.system(size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                    Spacer()
                    
                    NavigationLink(destination: SecondView()){
                        HStack{
                            Text("Next")
                            Image(systemName: "chevron.right")
                        }
                    }
                    .padding(.top)
                }
            }
            .navigationBarTitle("What's New in 2.0?")
            .padding()
            .edgesIgnoringSafeArea(.bottom)
            
            .navigationBarItems(leading:
                                    
                Button(action: {
                /// Button Action goes here
                //                    if let topController = UIApplication.kTopViewController() {
                //                      topController.dismiss(animated: true)
                //
                })
                {
                    Image(systemName: "xmark")
                        .foregroundColor(.red)
                }
            )
        }
    }
    
    struct FeatureCell: View {
        let color: Color
        let image: String
        let headline: String
        let subtitle: String
        var body: some View {
            HStack(alignment: .center) {
                Image(systemName: image)
                    .font(.system(size: 26,
                                  weight: .bold,
                                  design: .default))
                    .foregroundColor(color)
                    .padding(.trailing)
                VStack(alignment: .leading) {
                    Text(headline)
                        .font(.system(size: 20,
                                      weight: .semibold,
                                      design: .default))
                        .padding(.bottom, 1)
                    Text(subtitle)
                        .font(.system(size: 15, weight: .regular, design: .default))
                        .foregroundColor(.gray)
                    
                }
                Spacer()
            }
            .padding(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
