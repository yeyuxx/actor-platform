//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/engine/SyncKeyValue.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/engine/KeyValueStorage.h"
#include "im/actor/model/droidkit/engine/SyncKeyValue.h"

@interface DKSyncKeyValue () {
 @public
  id<DKKeyValueStorage> storage_;
}
@end

J2OBJC_FIELD_SETTER(DKSyncKeyValue, storage_, id<DKKeyValueStorage>)

@implementation DKSyncKeyValue

- (instancetype)initWithDKKeyValueStorage:(id<DKKeyValueStorage>)storage {
  if (self = [super init]) {
    self->storage_ = storage;
  }
  return self;
}

- (void)putWithLong:(jlong)key
      withByteArray:(IOSByteArray *)data {
  @synchronized(self) {
    [((id<DKKeyValueStorage>) nil_chk(storage_)) addOrUpdateItemWithLong:key withByteArray:data];
  }
}

- (void)delete__WithLong:(jlong)key {
  @synchronized(self) {
    [((id<DKKeyValueStorage>) nil_chk(storage_)) removeItemWithLong:key];
  }
}

- (IOSByteArray *)getWithLong:(jlong)key {
  @synchronized(self) {
    return [((id<DKKeyValueStorage>) nil_chk(storage_)) getValueWithLong:key];
  }
}

- (void)copyAllFieldsTo:(DKSyncKeyValue *)other {
  [super copyAllFieldsTo:other];
  other->storage_ = storage_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKSyncKeyValue)
