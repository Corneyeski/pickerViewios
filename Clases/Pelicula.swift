import Foundation
import UIKit

class Pelicula {
    
    private var titulo:String
    private var director: String
    private var año: Int
    private var genero: String

    init() {
        self.titulo = ""
        self.director = ""
        self.año = 0
        self.genero = ""
    }
    
    init (titulo: String, director: String, año: Int, genero: String) {
        self.titulo = titulo
        self.director = director
        self.año = año
        self.genero = genero
    }
    
//    init(titulo: String, director: String) {
//        self.titulo = titulo
//        self.director = director
//    }
    
//    convenience init (director: String, año: Int){
//        //self.init(titulo: "", director: "")
//        self.director = director
//        self.año = año
//    }
    
    func getTitulo() -> String{
        return self.titulo
    }
    func getDirector() -> String{
        return self.director
    }
    func getAño() -> Int{
        return self.año
    }
    func getGenero() -> String{
        return self.genero
    }
    
    func setTitulo(titulo: String) {
        self.titulo = titulo
    }
    
    func setDirector(director: String) {
        self.director = director
    }
    func setAño(año: Int) {
        self.año = año
    }
    func setGenero(genero: String) {
        self.genero = genero
    }
    
    func description() {
        print("\(self.titulo) \(self.director) \(self.año) \(self.genero)")
    }
}
