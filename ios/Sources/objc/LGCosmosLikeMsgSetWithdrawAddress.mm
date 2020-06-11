// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMsgSetWithdrawAddress.h"


@implementation LGCosmosLikeMsgSetWithdrawAddress

- (nonnull instancetype)initWithDelegatorAddress:(nonnull NSString *)delegatorAddress
                                 withdrawAddress:(nonnull NSString *)withdrawAddress
{
    if (self = [super init]) {
        _delegatorAddress = [delegatorAddress copy];
        _withdrawAddress = [withdrawAddress copy];
    }
    return self;
}

+ (nonnull instancetype)CosmosLikeMsgSetWithdrawAddressWithDelegatorAddress:(nonnull NSString *)delegatorAddress
                                                            withdrawAddress:(nonnull NSString *)withdrawAddress
{
    return [[self alloc] initWithDelegatorAddress:delegatorAddress
                                  withdrawAddress:withdrawAddress];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p delegatorAddress:%@ withdrawAddress:%@>", self.class, (void *)self, self.delegatorAddress, self.withdrawAddress];
}

@end