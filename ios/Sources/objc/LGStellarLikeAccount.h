// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#import <Foundation/Foundation.h>
@class LGStellarLikeTransactionBuilder;
@protocol LGAmountCallback;
@protocol LGBigIntCallback;
@protocol LGBoolCallback;
@protocol LGStellarLikeFeeStatsCallback;
@protocol LGStringCallback;


@interface LGStellarLikeAccount : NSObject

/**
 * Checks if the current account exists on the stellar Network. If it doesn't the account needs to be activated by
 * sending an account creation operation with an amount of at least the base reserve.
 * @return Callback with a boolean indicating if the account exists on the Stellar network or not.
 */
- (void)exists:(nullable id<LGBoolCallback>)callback;

/**
 * Create a new transaction builder to create new transaction
 * @return The transaction builder
 */
- (nullable LGStellarLikeTransactionBuilder *)buildTransaction;

/** Broadcast the given raw transaction to the network. */
- (void)broadcastRawTransaction:(nonnull NSData *)tx
                       callback:(nullable id<LGStringCallback>)callback;

/** Get base reserve of the network */
- (void)getBaseReserve:(nullable id<LGAmountCallback>)callback;

/** Get sequence number to be used in the next transaction */
- (void)getSequence:(nullable id<LGBigIntCallback>)callback;

/** Get recommended fee */
- (void)getFeeStats:(nullable id<LGStellarLikeFeeStatsCallback>)callback;

@end