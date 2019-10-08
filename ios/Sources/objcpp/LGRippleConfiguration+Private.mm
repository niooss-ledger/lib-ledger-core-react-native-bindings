// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ripple_like_wallet.djinni

#import "LGRippleConfiguration+Private.h"
#import "LGRippleConfiguration.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGRippleConfiguration ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::RippleConfiguration>&)cppRef;

@end

@implementation LGRippleConfiguration {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::RippleConfiguration>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::RippleConfiguration>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}


namespace djinni_generated {

auto RippleConfiguration::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto RippleConfiguration::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGRippleConfiguration>(cpp);
}

}  // namespace djinni_generated

@end