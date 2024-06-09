//
//  ContentView.swift
//  FilmArama
//
//  Created by Berke Özgüder on 5.05.2024.
//

import SwiftUI

struct FilmListeView: View {
    
    @ObservedObject var filmListeViewModel : FilmListeViewModel
    
    @State var aranacakFilm = ""
    
    init() {
        self.filmListeViewModel = FilmListeViewModel()
    }
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                
                TextField("Ara", text: $aranacakFilm, onEditingChanged: { _ in
                }, onCommit: {
                    self.filmListeViewModel.filmAramasiYap(filmIsmi: aranacakFilm.trimmingCharacters(in: .whitespacesAndNewlines).addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? aranacakFilm)
                }).padding()
                    .textFieldStyle(PlainTextFieldStyle())
                
                List(filmListeViewModel.filmler, id: \.imdbId) { film in
                    
                    NavigationLink(destination: DetailView(imdbId: film.imdbId),
                                   label:  { HStack {
                        PrivateImage(url: film.poster)
                            .frame(width: 90, height: 130)
                        
                        
                        VStack(alignment: .leading)  {
                            Text(film.title)
                                .font(.title3)
                                .foregroundStyle(.black)
                            
                            Text(film.year)
                                .foregroundStyle(Color.blue)
                        }
                    }
                    })
                    }
                   
                    
                }.navigationTitle("IMDB Film Listesi")
            }
        }
    }


#Preview {
    FilmListeView()
}
