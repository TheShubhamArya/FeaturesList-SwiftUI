//
//  ContentView.swift
//  InfoBrochure
//
//  Created by Shubham Arya on 1/14/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            HStack{
                Button(action: {
                    /// Button Action goes here
//                    if let topController = UIApplication.kTopViewController() {
//                      topController.dismiss(animated: true)
//                     }
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.red)
                        .frame(width: 40, height: 40)
                }
                Spacer()
            }
            VStack{
                Text("Sortify version 2.0")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                    .padding(.top)
                Text("What's new in this version?")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .trailing])
                VStack(alignment: .leading, spacing: 20){
                    
                    HStack{
                        Image(systemName: "note")
                            .font(.system(size: 30))
                            .foregroundColor(.green)
                            .padding(.trailing)
                            .font(.system(size: 20))
                        
                        VStack (alignment: .leading){
                            Text("Feature 1")
                                .bold()
                                .font(.system(size: 20))
                                .multilineTextAlignment(.leading)
                            
                            Text("Write a brief text describing the features of Feature 1 and how to to use.")
                                .multilineTextAlignment(.leading)
                            
                        }
                    }
                    //.padding(.top)
                    
                    HStack{
                        Image(systemName: "pin")
                            .foregroundColor(.orange)
                            .padding(.trailing)
                            .font(.system(size: 30))
                        
                        VStack (alignment: .leading){
                            Text("Feature 2")
                                .bold()
                                .font(.system(size: 20))
                                .multilineTextAlignment(.leading)
                            
                            Text("Write a brief text describing the features of Feature 2 and how to to use.")
                                .multilineTextAlignment(.leading)
                            
                        }
                    }
                    HStack{
                        Image(systemName: "faceid")
                            .font(.system(size: 30))
                            .foregroundColor(.pink)
                            .padding(.trailing)
                        
                        VStack (alignment: .leading){
                            Text("Feature 3")
                                .bold()
                                .font(.system(size: 20))
                                .multilineTextAlignment(.leading)
                            
                            Text("Write a brief text describing the features of Feature 3 and how to to use.")
                                .multilineTextAlignment(.leading)
                            
                        }
                    }
                    
                    HStack{
                        Image(systemName: "list.bullet.rectangle")
                            .font(.system(size: 27))
                            .foregroundColor(.purple)
                            .padding(.trailing)
                        
                        VStack (alignment: .leading){
                            Text("Feature 4")
                                .bold()
                                .font(.system(size: 20))
                                .multilineTextAlignment(.leading)
                            
                            Text("Write a brief text describing the features of Feature 4 and how to to use.")
                                .multilineTextAlignment(.leading)
                            
                        }
                    }
                    
                    HStack{
                        Image(systemName: "clock")
                            .font(.system(size: 30))
                            .foregroundColor(.blue)
                            .padding(.trailing)
                        
                        VStack (alignment: .leading){
                            Text("Feature 5")
                                .bold()
                                .font(.system(size: 20))
                                .multilineTextAlignment(.leading)
                            
                            Text("Write a brief text describing the features of Feature 4 and how to to use.")
                                .multilineTextAlignment(.leading)
                        }
                        
                    }
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
                
                
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
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
