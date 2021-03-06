import Foundation
import RxSwift
import Solana

public extension Api {
    func getTokenAccountsByDelegate(pubkey: String, mint: String? = nil, programId: String? = nil, configs: RequestConfiguration? = nil) -> Single<[TokenAccount<AccountInfo>]> {
        Single.create { emitter in
            self.getTokenAccountsByDelegate(pubkey: pubkey, mint: mint, programId: programId, configs: configs) {
                switch $0 {
                case .success(let balance):
                    emitter(.success(balance))
                case .failure(let error):
                    emitter(.failure(error))
                }
            }
            return Disposables.create()
        }
    }
}
