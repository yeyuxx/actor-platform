//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/bser/BserValues.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/IncorrectTypeException.h"
#include "im/actor/model/droidkit/bser/UnknownFieldException.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface BSBserValues () {
 @public
  ImActorModelDroidkitBserUtilSparseArray *fields_;
}
@end

J2OBJC_FIELD_SETTER(BSBserValues, fields_, ImActorModelDroidkitBserUtilSparseArray *)

@implementation BSBserValues

- (instancetype)initWithImActorModelDroidkitBserUtilSparseArray:(ImActorModelDroidkitBserUtilSparseArray *)fields {
  if (self = [super init]) {
    self->fields_ = fields;
  }
  return self;
}

- (jlong)optLongWithInt:(jint)id_ {
  return [self getLongWithInt:id_ withLong:0];
}

- (jlong)getLongWithInt:(jint)id_ {
  if (![((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(fields_)) containsKeyWithInt:id_]) {
    @throw [[BSUnknownFieldException alloc] initWithNSString:JreStrcat("$I", @"Unable to find field #", id_)];
  }
  return [self getLongWithInt:id_ withLong:0];
}

- (jlong)getLongWithInt:(jint)id_
               withLong:(jlong)defValue {
  if ([((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(fields_)) containsKeyWithInt:id_]) {
    id obj = [fields_ getWithInt:id_];
    if ([obj isKindOfClass:[JavaLangLong class]]) {
      return [((JavaLangLong *) nil_chk((JavaLangLong *) check_class_cast(obj, [JavaLangLong class]))) longLongValue];
    }
    @throw [[BSIncorrectTypeException alloc] initWithNSString:JreStrcat("$$", @"Expected type: long, got ", [[nil_chk(obj) getClass] getSimpleName])];
  }
  return defValue;
}

- (jint)optIntWithInt:(jint)id_ {
  return BSUtils_convertIntWithLong_([self optLongWithInt:id_]);
}

- (jint)getIntWithInt:(jint)id_ {
  return BSUtils_convertIntWithLong_([self getLongWithInt:id_]);
}

- (jint)getIntWithInt:(jint)id_
              withInt:(jint)defValue {
  return BSUtils_convertIntWithLong_([self getLongWithInt:id_ withLong:defValue]);
}

- (jdouble)optDoubleWithInt:(jint)id_ {
  return JavaLangDouble_longBitsToDoubleWithLong_([self optLongWithInt:id_]);
}

- (jdouble)getDoubleWithInt:(jint)id_ {
  return JavaLangDouble_longBitsToDoubleWithLong_([self getLongWithInt:id_]);
}

- (jdouble)getDoubleWithInt:(jint)id_
                 withDouble:(jdouble)defValue {
  return JavaLangDouble_longBitsToDoubleWithLong_([self getLongWithInt:id_ withLong:JavaLangDouble_doubleToLongBitsWithDouble_(defValue)]);
}

- (jboolean)optBoolWithInt:(jint)id_ {
  return [self optLongWithInt:id_] != 0;
}

- (jboolean)getBoolWithInt:(jint)id_ {
  return [self getLongWithInt:id_] != 0;
}

- (jboolean)getBoolWithInt:(jint)id_
               withBoolean:(jboolean)defValue {
  return [self getLongWithInt:id_ withLong:defValue ? 1 : 0] != 0;
}

- (IOSByteArray *)optBytesWithInt:(jint)id_ {
  return [self getBytesWithInt:id_ withByteArray:nil];
}

- (IOSByteArray *)getBytesWithInt:(jint)id_ {
  if (![((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(fields_)) containsKeyWithInt:id_]) {
    @throw [[BSUnknownFieldException alloc] initWithNSString:JreStrcat("$I", @"Unable to find field #", id_)];
  }
  return [self getBytesWithInt:id_ withByteArray:nil];
}

- (IOSByteArray *)getBytesWithInt:(jint)id_
                    withByteArray:(IOSByteArray *)defValue {
  if ([((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(fields_)) containsKeyWithInt:id_]) {
    id obj = [fields_ getWithInt:id_];
    if ([obj isKindOfClass:[IOSByteArray class]]) {
      return (IOSByteArray *) check_class_cast(obj, [IOSByteArray class]);
    }
    @throw [[BSIncorrectTypeException alloc] initWithNSString:JreStrcat("$$", @"Expected type: byte[], got ", [[nil_chk(obj) getClass] getSimpleName])];
  }
  return defValue;
}

- (NSString *)optStringWithInt:(jint)id_ {
  return BSUtils_convertStringWithByteArray_([self optBytesWithInt:id_]);
}

- (NSString *)getStringWithInt:(jint)id_ {
  return BSUtils_convertStringWithByteArray_([self getBytesWithInt:id_]);
}

- (NSString *)getStringWithInt:(jint)id_
                  withNSString:(NSString *)defValue {
  return BSUtils_convertStringWithByteArray_([self getBytesWithInt:id_ withByteArray:[((NSString *) nil_chk(defValue)) getBytesWithCharsetName:@"UTF-8"]]);
}

- (id)optObjWithInt:(jint)id_
   withBSBserObject:(BSBserObject *)obj {
  IOSByteArray *data = [self optBytesWithInt:id_];
  if (data == nil) {
    return nil;
  }
  return ((BSBserObject *) BSBser_parseWithBSBserObject_withByteArray_(obj, data));
}

- (id)getObjWithInt:(jint)id_
   withBSBserObject:(BSBserObject *)obj {
  IOSByteArray *data = [self optBytesWithInt:id_];
  if (data == nil) {
    @throw [[BSUnknownFieldException alloc] initWithNSString:JreStrcat("$I", @"Unable to find field #", id_)];
  }
  return ((BSBserObject *) BSBser_parseWithBSBserObject_withBSDataInput_(obj, [[BSDataInput alloc] initWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_]));
}

- (jint)getRepeatedCountWithInt:(jint)id_ {
  if ([((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(fields_)) containsKeyWithInt:id_]) {
    id val = [fields_ getWithInt:id_];
    if ([JavaUtilList_class_() isInstance:val]) {
      return [((id<JavaUtilList>) nil_chk(((id<JavaUtilList>) check_protocol_cast(val, @protocol(JavaUtilList))))) size];
    }
    else {
      return 1;
    }
  }
  return 0;
}

- (id<JavaUtilList>)getRepeatedLongWithInt:(jint)id_ {
  JavaUtilArrayList *res = [[JavaUtilArrayList alloc] init];
  if ([((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(fields_)) containsKeyWithInt:id_]) {
    id val = [fields_ getWithInt:id_];
    if ([val isKindOfClass:[JavaLangLong class]]) {
      [res addWithId:(JavaLangLong *) check_class_cast(val, [JavaLangLong class])];
    }
    else if ([JavaUtilList_class_() isInstance:val]) {
      id<JavaUtilList> rep = (id<JavaUtilList>) check_protocol_cast(val, @protocol(JavaUtilList));
      for (id __strong val2 in nil_chk(rep)) {
        if ([val2 isKindOfClass:[JavaLangLong class]]) {
          [res addWithId:(JavaLangLong *) check_class_cast(val2, [JavaLangLong class])];
        }
        else {
          @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$$", @"Expected type: long, got ", [[nil_chk(val2) getClass] getSimpleName])];
        }
      }
    }
    else {
      @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$$", @"Expected type: long, got ", [[nil_chk(val) getClass] getSimpleName])];
    }
  }
  return res;
}

- (id<JavaUtilList>)getRepeatedIntWithInt:(jint)id_ {
  id<JavaUtilList> src = [self getRepeatedLongWithInt:id_];
  JavaUtilArrayList *res = [[JavaUtilArrayList alloc] init];
  for (JavaLangLong * __strong l in nil_chk(src)) {
    [res addWithId:JavaLangInteger_valueOfWithInt_(BSUtils_convertIntWithLong_([((JavaLangLong *) nil_chk(l)) longLongValue]))];
  }
  return res;
}

- (id<JavaUtilList>)getRepeatedBytesWithInt:(jint)id_ {
  JavaUtilArrayList *res = [[JavaUtilArrayList alloc] init];
  if ([((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(fields_)) containsKeyWithInt:id_]) {
    id val = [fields_ getWithInt:id_];
    if ([val isKindOfClass:[IOSByteArray class]]) {
      [res addWithId:(IOSByteArray *) check_class_cast(val, [IOSByteArray class])];
    }
    else if ([JavaUtilList_class_() isInstance:val]) {
      id<JavaUtilList> rep = (id<JavaUtilList>) check_protocol_cast(val, @protocol(JavaUtilList));
      for (id __strong val2 in nil_chk(rep)) {
        if ([val2 isKindOfClass:[IOSByteArray class]]) {
          [res addWithId:(IOSByteArray *) check_class_cast(val2, [IOSByteArray class])];
        }
        else {
          @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$$", @"Expected type: byte[], got ", [[nil_chk(val2) getClass] getSimpleName])];
        }
      }
    }
    else {
      @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$$", @"Expected type: byte[], got ", [[nil_chk(val) getClass] getSimpleName])];
    }
  }
  return res;
}

- (id<JavaUtilList>)getRepeatedStringWithInt:(jint)id_ {
  id<JavaUtilList> src = [self getRepeatedBytesWithInt:id_];
  JavaUtilArrayList *res = [[JavaUtilArrayList alloc] init];
  for (IOSByteArray * __strong l in nil_chk(src)) {
    [res addWithId:BSUtils_convertStringWithByteArray_(l)];
  }
  return res;
}

- (id<JavaUtilList>)getRepeatedObjWithInt:(jint)id_
                         withJavaUtilList:(id<JavaUtilList>)objs {
  JavaUtilArrayList *res = [[JavaUtilArrayList alloc] init];
  for (IOSByteArray * __strong v in nil_chk([self getRepeatedBytesWithInt:id_])) {
    [res addWithId:BSBser_parseWithBSBserObject_withBSDataInput_([((id<JavaUtilList>) nil_chk(objs)) removeWithInt:0], [[BSDataInput alloc] initWithByteArray:v withInt:0 withInt:((IOSByteArray *) nil_chk(v))->size_])];
  }
  return res;
}

- (void)copyAllFieldsTo:(BSBserValues *)other {
  [super copyAllFieldsTo:other];
  other->fields_ = fields_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSBserValues)
