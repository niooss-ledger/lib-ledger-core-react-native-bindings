// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ripple_like_wallet.djinni

#import "RCTCoreLGRippleLikeTransactionBuilder.h"


@implementation RCTCoreLGRippleLikeTransactionBuilder
//Export module
RCT_EXPORT_MODULE(RCTCoreLGRippleLikeTransactionBuilder)

@synthesize bridge = _bridge;


+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseRelease:currentInstance withResolver: resolve rejecter:reject];
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseLogWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseFlushWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(isNull, isNull:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseIsNull:currentInstance withResolver:resolve rejecter:reject];
}
-(NSData *) hexStringToData: (NSString *)hexString 
{
    NSMutableData *data= [[NSMutableData alloc] init];
    unsigned char byte;
    char byteChars[3] = {'\0','\0','\0'};
    for (int i = 0; i < ([hexString length] / 2); i++)
    {
        byteChars[0] = [hexString characterAtIndex: i*2];
        byteChars[1] = [hexString characterAtIndex: i*2 + 1];
        byte = strtol(byteChars, NULL, 16);
        [data appendBytes:&byte length:1];
    }
    return data;
}

/**
 * Send funds to the given address. This method can be called multiple times to send to multiple addresses.
 * @param amount The value to send
 * @param address Address of the recipient
 * @return A reference on the same builder in order to chain calls.
 */
RCT_REMAP_METHOD(sendToAddress,sendToAddress:(NSDictionary *)currentInstance withParams:(NSDictionary *)amount
                                                                                address:(nonnull NSString *)address withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRippleLikeTransactionBuilder::sendToAddress, first argument should be an instance of LGRippleLikeTransactionBuilder", nil);
        return;
    }
    LGRippleLikeTransactionBuilder *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRippleLikeTransactionBuilder::sendToAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGAmount *rctParam_amount = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    LGAmount *objcParam_0 = (LGAmount *)[rctParam_amount.objcImplementations objectForKey:amount[@"uid"]];
    LGRippleLikeTransactionBuilder * objcResult = [currentInstanceObj sendToAddress:objcParam_0 address:address];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeTransactionBuilder *rctImpl_objcResult = (RCTCoreLGRippleLikeTransactionBuilder *)[self.bridge moduleForName:@"CoreLGRippleLikeTransactionBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeTransactionBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRippleLikeTransactionBuilder::sendToAddress", nil);
        return;
    }

}

/**
 * Send all available funds to the given address.
 * @param address Address of the recipient
 * @return A reference on the same builder in order to chain calls.
 */
RCT_REMAP_METHOD(wipeToAddress,wipeToAddress:(NSDictionary *)currentInstance withParams:(nonnull NSString *)address withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRippleLikeTransactionBuilder::wipeToAddress, first argument should be an instance of LGRippleLikeTransactionBuilder", nil);
        return;
    }
    LGRippleLikeTransactionBuilder *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRippleLikeTransactionBuilder::wipeToAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGRippleLikeTransactionBuilder * objcResult = [currentInstanceObj wipeToAddress:address];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeTransactionBuilder *rctImpl_objcResult = (RCTCoreLGRippleLikeTransactionBuilder *)[self.bridge moduleForName:@"CoreLGRippleLikeTransactionBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeTransactionBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRippleLikeTransactionBuilder::wipeToAddress", nil);
        return;
    }

}

/**
 * Set fees (in drop) the originator is willing to pay
 * @return A reference on the same builder in order to chain calls.
 */
RCT_REMAP_METHOD(setFees,setFees:(NSDictionary *)currentInstance withParams:(NSDictionary *)fees withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRippleLikeTransactionBuilder::setFees, first argument should be an instance of LGRippleLikeTransactionBuilder", nil);
        return;
    }
    LGRippleLikeTransactionBuilder *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRippleLikeTransactionBuilder::setFees, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGAmount *rctParam_fees = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    LGAmount *objcParam_0 = (LGAmount *)[rctParam_fees.objcImplementations objectForKey:fees[@"uid"]];
    LGRippleLikeTransactionBuilder * objcResult = [currentInstanceObj setFees:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeTransactionBuilder *rctImpl_objcResult = (RCTCoreLGRippleLikeTransactionBuilder *)[self.bridge moduleForName:@"CoreLGRippleLikeTransactionBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeTransactionBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRippleLikeTransactionBuilder::setFees", nil);
        return;
    }

}

/**
 * Add a memo.
 * @return A reference on the same builder in order to chain calls.
 */
RCT_REMAP_METHOD(addMemo,addMemo:(NSDictionary *)currentInstance withParams:(NSDictionary *)memo withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRippleLikeTransactionBuilder::addMemo, first argument should be an instance of LGRippleLikeTransactionBuilder", nil);
        return;
    }
    LGRippleLikeTransactionBuilder *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRippleLikeTransactionBuilder::addMemo, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGRippleLikeMemo *rctParam_memo = (RCTCoreLGRippleLikeMemo *)[self.bridge moduleForName:@"CoreLGRippleLikeMemo"];
    LGRippleLikeMemo *objcParam_0 = (LGRippleLikeMemo *)[rctParam_memo.objcImplementations objectForKey:memo[@"uid"]];
    LGRippleLikeTransactionBuilder * objcResult = [currentInstanceObj addMemo:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeTransactionBuilder *rctImpl_objcResult = (RCTCoreLGRippleLikeTransactionBuilder *)[self.bridge moduleForName:@"CoreLGRippleLikeTransactionBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeTransactionBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRippleLikeTransactionBuilder::addMemo", nil);
        return;
    }

}

/** Build a transaction from the given builder parameters. */
RCT_REMAP_METHOD(build,build:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRippleLikeTransactionBuilder::build, first argument should be an instance of LGRippleLikeTransactionBuilder", nil);
        return;
    }
    LGRippleLikeTransactionBuilder *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRippleLikeTransactionBuilder::build, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGRippleLikeTransactionCallback *objcParam_0 = [[RCTCoreLGRippleLikeTransactionCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj build:objcParam_0];

}

/**
 * Creates a clone of this builder.
 * @return A copy of the current builder instance.
 */
RCT_REMAP_METHOD(clone,clone:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRippleLikeTransactionBuilder::clone, first argument should be an instance of LGRippleLikeTransactionBuilder", nil);
        return;
    }
    LGRippleLikeTransactionBuilder *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRippleLikeTransactionBuilder::clone, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGRippleLikeTransactionBuilder * objcResult = [currentInstanceObj clone];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeTransactionBuilder *rctImpl_objcResult = (RCTCoreLGRippleLikeTransactionBuilder *)[self.bridge moduleForName:@"CoreLGRippleLikeTransactionBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeTransactionBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRippleLikeTransactionBuilder::clone", nil);
        return;
    }

}

/** Reset the current instance to its initial state */
RCT_REMAP_METHOD(reset,reset:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRippleLikeTransactionBuilder::reset, first argument should be an instance of LGRippleLikeTransactionBuilder", nil);
        return;
    }
    LGRippleLikeTransactionBuilder *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRippleLikeTransactionBuilder::reset, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj reset];

}

RCT_REMAP_METHOD(parseRawUnsignedTransaction,parseRawUnsignedTransactionwithParams:(NSDictionary *)currency
                                                                    rawTransaction:(NSString *)rawTransaction withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    RCTCoreLGCurrency *rctParam_currency = (RCTCoreLGCurrency *)[self.bridge moduleForName:@"CoreLGCurrency"];
    LGCurrency *objcParam_0 = (LGCurrency *)[rctParam_currency.objcImplementations objectForKey:currency[@"uid"]];
    NSData *objcParam_1 = [self hexStringToData:rawTransaction];

    LGRippleLikeTransaction * objcResult = [LGRippleLikeTransactionBuilder parseRawUnsignedTransaction:objcParam_0 rawTransaction:objcParam_1];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeTransaction *rctImpl_objcResult = (RCTCoreLGRippleLikeTransaction *)[self.bridge moduleForName:@"CoreLGRippleLikeTransaction"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeTransaction", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRippleLikeTransactionBuilder::parseRawUnsignedTransaction", nil);
        return;
    }

}

RCT_REMAP_METHOD(parseRawSignedTransaction,parseRawSignedTransactionwithParams:(NSDictionary *)currency
                                                                rawTransaction:(NSString *)rawTransaction withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    RCTCoreLGCurrency *rctParam_currency = (RCTCoreLGCurrency *)[self.bridge moduleForName:@"CoreLGCurrency"];
    LGCurrency *objcParam_0 = (LGCurrency *)[rctParam_currency.objcImplementations objectForKey:currency[@"uid"]];
    NSData *objcParam_1 = [self hexStringToData:rawTransaction];

    LGRippleLikeTransaction * objcResult = [LGRippleLikeTransactionBuilder parseRawSignedTransaction:objcParam_0 rawTransaction:objcParam_1];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeTransaction *rctImpl_objcResult = (RCTCoreLGRippleLikeTransaction *)[self.bridge moduleForName:@"CoreLGRippleLikeTransaction"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeTransaction", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRippleLikeTransactionBuilder::parseRawSignedTransaction", nil);
        return;
    }

}
@end
