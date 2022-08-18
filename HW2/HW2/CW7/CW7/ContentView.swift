//
//  ContentView.swift
//  CW7
//
//  Created by fawziah hussain on 17/08/2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
        Image("STUDENT")
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 200)
            Text("سجل الطلبه ")
                .font(.title)
        
            HStack {
                ScrollView {
                ForEach(student) { student in
                    Divider()
                    Text(" الاسم: ")
                    Text("\(student.fullName)")
                    Divider()
                    Text(" السنة : ")
                    Text("\(student.year)")
                    Divider()
                    Text(" العمر : ")
                    Text("\(student.age)")
                    Divider()
                  
                    
                   
                
                    
                }
                }
            }
            HStack{
               
            Text("عدد الطلبة المسجلين : 3")
                .font(.title)
                .foregroundColor(Color.black)
                Image(systemName: "exclamationmark.square.fill")
                    .foregroundColor(Color.blue)
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
