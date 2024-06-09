import SwiftUI

struct DetailView: View {
    
    let imdbId: String
    
    @ObservedObject var filmDetayViewModel = DetailViewModel()
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Spacer(minLength: 150)

            HStack {
                Spacer()
                PrivateImage(url: filmDetayViewModel.filmDetayi?.poster ?? "").frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.4, alignment: .center)
                Spacer()
            }
            
            Text("Adı: \(filmDetayViewModel.filmDetayi?.title ?? "Film adı gösterilecek")")
                .bold()
                .padding()
            
            Text("Yılı: \(filmDetayViewModel.filmDetayi?.year ?? "Film yılı gösterilecek")")
                .padding()
            
            Text("Tip: \(filmDetayViewModel.filmDetayi?.type ?? "Film tipi gösterilecek")")

                .padding()
            
            Text("Aktörler: \(filmDetayViewModel.filmDetayi?.actors ?? "Film Aktörleri gösterilecek")")
                .padding()
            
            
            Text("Kategori: \(filmDetayViewModel.filmDetayi?.genre ?? "Film kategorisi gösterilecek")")
                .padding()
            
            
            Text("Süre: \(filmDetayViewModel.filmDetayi?.runtime ?? "Film süresi gösterilecek")")
                .padding()
            
            Text("Yayınlanma Tarihi: \(filmDetayViewModel.filmDetayi?.released ?? "Film yayınlanma tarihi gösterilecek")")
                .padding()
            
            Text("IMDB Reytingi: \(filmDetayViewModel.filmDetayi?.imdbRating ?? "Film reytingi gösterilecek")")
                .padding()
            

            Spacer(minLength: 220)
        }.onAppear {
            self.filmDetayViewModel.filmDetayiAl(imdbID: imdbId)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(imdbId: "reokofpsa")
    }
}
