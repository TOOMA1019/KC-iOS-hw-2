//
//  ContentView.swift
//  HW2
//
//  Created by fawziah hussain on 15/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var  numb1 = ""
    @State var numb2 = ""
    @State var numb3 = ""
    @State var numb4 = ""
    @State var m = ""
    @State var ms = ""
    @State var total  =  0.0
    var body: some View {
        ZStack{
            VStack{
                        
            Image("KFC")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 130)
                Text("قائمة الطعام")
                    .font(.title3)
                    .fontWeight(.semibold)
                VStack{
                    HStack {
                        Text("mighty zinger")
                            .font(.title3)
                        Spacer()
                        Text("1.700 KD")
                        TextField("الكمية", text:  $numb1)
                            .background(.white)
                    }.padding()
                    VStack{
                        HStack {
                            Text("big filler box ")
                                .font(.title3)
                                
                            Spacer()
                            Text("2.550 KD")
                            TextField("الكمية", text: $numb2)
                                .background(.white)
                        }.padding()
                    }
                    VStack{
                        HStack {
                            Text("twister meal ")
                                .font(.title3)
                            Spacer()
                            Text("1.500 KD")
                            TextField("الكمية", text: $numb3)
                                .background(.white)
                        }.padding()
                    }
                    VStack{
                        HStack {
                            Text("chocolate cake ")
                                .font(.title3)
                            Spacer()
                            Text("1.700 KD")
                            TextField("الكمية", text: $numb4)
                                .background(.white)
                        }.padding()
                    }
        }.background(Color.gray.opacity(0.2))
                HStack{
               
                TextField("المبلغ", text:$m)
                    .padding()
                    .background(.gray.opacity(0.1))
                    Text("ادخل المبلغ الذي لديك الان")
                        .font(.title3)
                    
                    
                
    }
                Button {
                    let p1 = 1.700 * (Double (numb1) ?? 0)
                    let p2 = 2.550 * (Double (numb2) ?? 0)
                    let p3 = 1.500 * (Double (numb3) ?? 0)
                    let p4 = 1.700 * (Double (numb4) ?? 0)
                  total =  p1+p2+p3+p4
                    
                    if Double(m) ?? 0.0 < total && Double(m) ?? 0.0 != 0.0{
                        ms = " المبلغ غير كافي "
                                            }
                    else if Double(m) ?? 0.0 == 0.0{
                        ms = " ادخل المبلغ"
                    }
                    else {
                        ms = " تمت العمليه بنجاح"
                    }
                } label: {
                    Text("اضغط لمعرفه الفاتوره")
                        .foregroundColor(.white)
                        .padding()
                        .background(.red)
                        .cornerRadius(15)
                }
Text("\(total):المبلغ الاجمالي")
                Text(ms)
}
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
      }
    }
  

