//
//  ViewController.swift
//  minhaCalculadora
//
//  Created by Grazi Berti on 03/09/20.
//  Copyright © 2020 Grazi Berti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var number: String = ""
  var number2: String = ""
  var valortotal: Double?
  var operador: Int?
    
    
    @IBOutlet weak var pegaValor: UILabel!
    @IBOutlet weak var visor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pegaValor.text = ""
        
    }
    
    func operacao(){
        number = pegaValor.text!
        pegaValor.text = ""
    }
    
    // guadando e concatenando os números clicados
    
    @IBAction func numero0(_ sender: Any) {
        pegaValor.text = pegaValor.text! + "0"
    }
    @IBAction func numero1(_ sender: Any) {
        pegaValor.text = pegaValor.text! + "1"
    }
    
    @IBAction func numero2(_ sender: Any) {
        pegaValor.text = pegaValor.text! + "2"
        
    }
    
    @IBAction func numero3(_ sender: Any) {
        pegaValor.text = pegaValor.text! + "3"
    }
    
    @IBAction func numero4(_ sender: Any) {
        pegaValor.text = pegaValor.text! + "4"
    }
    
   
    
    @IBAction func numero5(_ sender: Any) {
        pegaValor.text = pegaValor.text! + "5"
    }
    
    @IBAction func numero6(_ sender: Any) {
        pegaValor.text = pegaValor.text! + "6"
    }

    
    @IBAction func numero7(_ sender: Any) {
        pegaValor.text = pegaValor.text! + "7"
    }
    
    @IBAction func numero8(_ sender: Any) {
          pegaValor.text = pegaValor.text! + "8"
    }
    
    @IBAction func numero9(_ sender: Any) {
          pegaValor.text = pegaValor.text! + "9"
    }
    @IBAction func soma(_ sender: Any) {
        operador = 1
        operacao()
    }
    
    @IBAction func subtracao(_ sender: Any) {
        operador = 2
        operacao()
    }
    
    
    @IBAction func multiplicacao(_ sender: Any) {
        operador = 3
        operacao()
    }
    
    @IBAction func divisao(_ sender: Any) {
        operador = 4
        operacao()
    }
    
    @IBAction func negativo(_ sender: Any) {
        operador = 5
        operacao()
    }
    
    @IBAction func porcentagem(_ sender: Any) {
        operador = 6
        operacao()
    }
    
    @IBAction func limpar(_ sender: Any) {
        pegaValor.text = ""
        number = ""
        number2 = ""
    }
    @IBAction func igual(_ sender: Any) {
        number2 = pegaValor.text!
        var conta: Double = 0
        let num1 = Double(number)!
        let num2 = Double(number2)!
        
        if operador == 1{
            conta = num1 + num2
            visor.text = "\(number) + \(number2)"
            print(conta)
        }
        else if operador == 2{
            conta = num1 - num2
            visor.text = "\(number) - \(number2)"
            
        }
        else if operador == 3{
            conta = num1 * num2
            visor.text = "\(number) * \(number2)"
            print(conta)
        }
        else if operador == 4 {
            conta = num1 / num2
            visor.text = "\(number) / \(number2)"
            print(conta)
        }
        else if operador == 5 {
            
        
        }
        else if operador == 6 {
            
        
        }
        print(conta)
        let exibir = String(conta)
        pegaValor.text = exibir
        
    }
     
    
}

