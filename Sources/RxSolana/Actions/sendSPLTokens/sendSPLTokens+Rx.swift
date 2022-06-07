import Foundation
import RxSwift
import Solana

extension Action {
    public func sendSPLTokens(
        mintAddress: String,
        from fromPublicKey: String,
        to destinationAddress: String,
        amount: UInt64,
        payer: Account
    ) -> Single<TransactionID> {
        Single.create { emitter in
            self.sendSPLTokens(mintAddress: mintAddress,
                               from: fromPublicKey,
                               to: destinationAddress,
                               amount: amount,
                               payer: payer
            ) { result in
                switch result {
                case .success(let transaction):
                    emitter(.success(transaction))
                    return
                case .failure(let error):
                    emitter(.failure(error))
                    return
                }
            }
            return Disposables.create()
        }
    }
}
