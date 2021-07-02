import SwiftUI

struct LazyImageView: View {
    
    @ObservedObject private var viewModel: LazyImageViewModel
    
    init(urlString: String) {
        viewModel = LazyImageViewModel(urlString: urlString)
    }
    
    var body: some View {
        viewModel.image?.resizable() ?? Image("placeholder").resizable()
    }
    
}
