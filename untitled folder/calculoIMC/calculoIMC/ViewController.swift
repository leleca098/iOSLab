//
//  ViewController.swift
//  calculoIMC
//
//  Created by iOSLab on 20/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var category: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcular(_ sender: Any) {
        guard let weight = Double(weight.text ?? ""),
              let height = Double(height.text ?? "") else {
            return
        }
        let imc = weight/(height*height)
        result.text = "O seu IMC é \(String(format:"%.2f", imc))"
        
        //verificar categoria
    
        var checkCategory: String
        switch imc {
        case ..<16.9:
            checkCategory = "Muito abaixo do peso."
        case 17...18.4:
            checkCategory = "Abaixo do peso."
        case 18.5...24.9:
            checkCategory = "Peso normal."
        case 25...29.9:
            checkCategory = "Acima do peso."
        case 30...34.9:
            checkCategory = "Obesidade grau I."
        case 35...40:
            checkCategory = "Obesidade grau II."
        case 40...:
            checkCategory = "Obesidade grau III."
        default:
            checkCategory = "Erro"
        }
        //exibir categoria
        
        category.text = checkCategory
    }
    
}

