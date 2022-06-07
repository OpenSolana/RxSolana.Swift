import Foundation
import RxSwift
import Solana

public extension Api {
    func getTokenAccountsByOwner(pubkey: String, mint: String? = nil, programId: String? = nil, configs: RequestConfiguration? = nil) -> Single<[TokenAccount<AccountInfo>]> {
        Single.create { emitter in
            self.getTokenAccountsByOwner(pubkey: pubkey, mint: mint, programId: programId, configs: configs) { (result: Result<[TokenAccount<AccountInfo>], Error>) in
                switch result {
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
