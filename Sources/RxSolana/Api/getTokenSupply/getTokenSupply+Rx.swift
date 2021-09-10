import Foundation
import RxSwift
import Solana

public extension Api {
    func getTokenSupply(pubkey: String, commitment: Commitment? = nil) -> Single<TokenAmount> {
        Single.create { emitter in
            self.getTokenSupply(pubkey: pubkey, commitment: commitment) {
                switch $0 {
                case .success(let accounts):
                    emitter(.success(accounts))
                case .failure(let error):
                    emitter(.failure(error))
                }
            }
            return Disposables.create()
        }
    }
}
