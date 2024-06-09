//
//  ImageDownloader.swift
//  FilmArama
//
//  Created by Berke Özgüder on 7.05.2024.
//

import Foundation

class ImageDownloaderClient : ObservableObject {
    @Published var indirilenGorsel : Data?
    func gorselIndır(url: String) {
        
        guard let imageUrl = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageUrl) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            DispatchQueue.main.async {
                
            
            self.indirilenGorsel = data
            }
        }.resume()
    }
}
