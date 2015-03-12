//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/bser/Bser.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserParser.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "java/io/IOException.h"

@interface BSBser ()
- (instancetype)init;
@end

@implementation BSBser

+ (id)parseWithBSBserObject:(BSBserObject *)res
            withBSDataInput:(BSDataInput *)inputStream {
  return BSBser_parseWithBSBserObject_withBSDataInput_(res, inputStream);
}

+ (id)parseWithBSBserObject:(BSBserObject *)res
              withByteArray:(IOSByteArray *)data {
  return BSBser_parseWithBSBserObject_withByteArray_(res, data);
}

- (instancetype)init {
  return [super init];
}

@end

id BSBser_parseWithBSBserObject_withBSDataInput_(BSBserObject *res, BSDataInput *inputStream) {
  BSBser_init();
  BSBserValues *reader = [[BSBserValues alloc] initWithImActorModelDroidkitBserUtilSparseArray:BSBserParser_deserializeWithBSDataInput_(inputStream)];
  [((BSBserObject *) nil_chk(res)) parseWithBSBserValues:reader];
  return res;
}

id BSBser_parseWithBSBserObject_withByteArray_(BSBserObject *res, IOSByteArray *data) {
  BSBser_init();
  return ((BSBserObject *) BSBser_parseWithBSBserObject_withBSDataInput_(res, [[BSDataInput alloc] initWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_]));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSBser)
