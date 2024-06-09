//
//  DetailViewModel.swift
//  FilmArama
//
//  Created by Berke Özgüder on 7.05.2024.
//

import Foundation

class DetailViewModel: ObservableObject {
    
    @Published var filmDetayi : FilmDetailViewModel?
    let downloaderClient = DownloaderClient()
    
    func filmDetayiAl(imdbID : String) {
        downloaderClient.filmDetayiniIndir(imdbID: imdbID) { (sonuc) in
            switch sonuc {
            case.failure(let hata) :
                print(hata)
                
            case.success(let filmDetay) :
                self.filmDetayi = FilmDetailViewModel(detail: filmDetay)
                    }
                    
                }
            }
        }

struct FilmDetailViewModel {
    let detail : FilmDetail
    var title : String {
        detail.title
    }
    
    var poster :  String {
        detail.poster
    }
    
    var year : String {
        detail.year
    }
    
    var imdbId : String {
        detail.imdbId
    }
    
    var type : String {
        detail.type
    }
    
    var actors : String {
        detail.actors
    }
    var genre : String {
        detail.genre
    }
    var language : String {
        detail.language
    }
    
    var awards : String {
        detail.awards
    }
    var imdbRating : String {
        detail.imdbRating
    }
    var released : String {
        detail.released
    }
    var runtime : String {
        detail.runtime
    }
    var metascore : String {
        detail.metascore
    }
    var plot : String {
        detail.plot
    }
}


