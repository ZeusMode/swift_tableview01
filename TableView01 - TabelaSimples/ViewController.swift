//
//  ViewController.swift
//  TableView01 - TabelaSimples
//
//  Created by Wesley Cintra Nascimento on 21/10/16.
//  Copyright © 2016 Wesley Cintra Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // id da celula da tableView
    let idCell = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - TableView DataSources
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clubes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: idCell)
//        
//        if cell == nil {
//            cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
//        }
        
        // TIPOS DE TABELA
        // Simples
        //let cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
        // Com subtitulo
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: idCell)
        
        cell.textLabel?.text = clubes[indexPath.row]
        
        if indexPath.row < 4 {
            cell.detailTextLabel?.text = "São Paulo"
        } else {
            cell.detailTextLabel?.text = "outros estados"
        }
        
        // Com imagem
        cell.imageView?.image = UIImage(named: "star")
        cell.imageView?.highlightedImage = UIImage(named: "star2")
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // MARK: - Propriedades
    let clubes = [
        "Corínthians", "Palmeiras", "Santos", "São Paulo",
        "Grêmio", "Internacional", "Atlético PR", "Curitiba",
        "Figueirense", "Joinvile", "Criciúma", "Botafogo",
        "Flamengo", "Fluminense", "Vasco", "Atlético MG",
        "Cruzeiro", "Bahia", "Vitória", "Náutico", "Santa Cruz",
        "Sport"
    ]
    
    // MARK: - Delegates
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let alerta = UIAlertController(title: clubes[indexPath.row], message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alerta.addAction(action)
        present(alerta, animated: true, completion: nil)
    }
    
    // Definir altura da celulas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
}

