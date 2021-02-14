import SwiftUI

struct OtherOperatorButtons: View {
    
    @ObservedObject var calc: Calc
    
    var body: some View {
        HStack {
            RadiusButton(title: "CLEAR", width: 170, color: Color.black) {
                calc.num1 = 0
                calc.num2 = 0
                calc.operatorType = .no
            }
            
            RadiusButton(title: "◀︎", width: 80, color: Color.black) {
                if calc.target == .num1 {
                    calc.num1 /= 10
                } else {
                    calc.num2 /= 10
                }
            }
        }
    }
}
