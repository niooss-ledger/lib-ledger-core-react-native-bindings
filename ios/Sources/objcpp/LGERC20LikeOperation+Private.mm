// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from erc20.djinni

#import "LGERC20LikeOperation+Private.h"
#import "LGERC20LikeOperation.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGBigInt+Private.h"
#import "LGOperationType+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGERC20LikeOperation ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::ERC20LikeOperation>&)cppRef;

@end

@implementation LGERC20LikeOperation {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::ERC20LikeOperation>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::ERC20LikeOperation>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)getHash {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getHash();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getNonce {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getNonce();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getGasPrice {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getGasPrice();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getGasLimit {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getGasLimit();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getUsedGas {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getUsedGas();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getSender {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getSender();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getReceiver {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getReceiver();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getValue();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)getData {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getData();
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSDate *)getTime {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getTime();
        return ::djinni::Date::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (LGOperationType)getOperationType {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getOperationType();
        return ::djinni::Enum<::ledger::core::api::OperationType, LGOperationType>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)getStatus {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getStatus();
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable NSNumber *)getBlockHeight {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getBlockHeight();
        return ::djinni::Optional<std::experimental::optional, ::djinni::I64>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto ERC20LikeOperation::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto ERC20LikeOperation::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGERC20LikeOperation>(cpp);
}

}  // namespace djinni_generated

@end
