//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/storage/BaseStorageProvider.java
//

#ifndef _AMBaseStorageProvider_H_
#define _AMBaseStorageProvider_H_

@class AMPeer;
@protocol DKListEngine;
@protocol DKListStorage;

#include "J2ObjC_header.h"
#include "im/actor/model/StorageProvider.h"

@interface AMBaseStorageProvider : NSObject < AMStorageProvider > {
}

- (id<DKListEngine>)createContactsListWithDKListStorage:(id<DKListStorage>)storage;

- (id<DKListEngine>)createDialogsListWithDKListStorage:(id<DKListStorage>)storage;

- (id<DKListEngine>)createMessagesListWithAMPeer:(AMPeer *)peer
                               withDKListStorage:(id<DKListStorage>)storage;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(AMBaseStorageProvider)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMBaseStorageProvider ImActorModelStorageBaseStorageProvider;

J2OBJC_TYPE_LITERAL_HEADER(AMBaseStorageProvider)

#endif // _AMBaseStorageProvider_H_
