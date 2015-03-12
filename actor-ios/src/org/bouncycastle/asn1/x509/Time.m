//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/Time.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/text/ParseException.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"
#include "java/util/Locale.h"
#include "java/util/SimpleTimeZone.h"
#include "org/bouncycastle/asn1/ASN1GeneralizedTime.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/ASN1UTCTime.h"
#include "org/bouncycastle/asn1/DERGeneralizedTime.h"
#include "org/bouncycastle/asn1/DERUTCTime.h"
#include "org/bouncycastle/asn1/x509/Time.h"

@implementation OrgBouncycastleAsn1X509Time

+ (OrgBouncycastleAsn1X509Time *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                        withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1X509Time_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)time {
  if (self = [super init]) {
    if (!([time isKindOfClass:[OrgBouncycastleAsn1ASN1UTCTime class]]) && !([time isKindOfClass:[OrgBouncycastleAsn1ASN1GeneralizedTime class]])) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"unknown object passed to Time"];
    }
    self->time_ = time;
  }
  return self;
}

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)time {
  if (self = [super init]) {
    JavaUtilSimpleTimeZone *tz = [[JavaUtilSimpleTimeZone alloc] initWithInt:0 withNSString:@"Z"];
    JavaTextSimpleDateFormat *dateF = [[JavaTextSimpleDateFormat alloc] initWithNSString:@"yyyyMMddHHmmss"];
    [dateF setTimeZoneWithJavaUtilTimeZone:tz];
    NSString *d = JreStrcat("$C", [dateF formatWithJavaUtilDate:time], 'Z');
    jint year = JavaLangInteger_parseIntWithNSString_([d substring:0 endIndex:4]);
    if (year < 1950 || year > 2049) {
      self->time_ = [[OrgBouncycastleAsn1DERGeneralizedTime alloc] initWithNSString:d];
    }
    else {
      self->time_ = [[OrgBouncycastleAsn1DERUTCTime alloc] initWithNSString:[d substring:2]];
    }
  }
  return self;
}

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)time
                  withJavaUtilLocale:(JavaUtilLocale *)locale {
  if (self = [super init]) {
    JavaUtilSimpleTimeZone *tz = [[JavaUtilSimpleTimeZone alloc] initWithInt:0 withNSString:@"Z"];
    JavaTextSimpleDateFormat *dateF = [[JavaTextSimpleDateFormat alloc] initWithNSString:@"yyyyMMddHHmmss" withJavaUtilLocale:locale];
    [dateF setTimeZoneWithJavaUtilTimeZone:tz];
    NSString *d = JreStrcat("$C", [dateF formatWithJavaUtilDate:time], 'Z');
    jint year = JavaLangInteger_parseIntWithNSString_([d substring:0 endIndex:4]);
    if (year < 1950 || year > 2049) {
      self->time_ = [[OrgBouncycastleAsn1DERGeneralizedTime alloc] initWithNSString:d];
    }
    else {
      self->time_ = [[OrgBouncycastleAsn1DERUTCTime alloc] initWithNSString:[d substring:2]];
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1X509Time *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509Time_getInstanceWithId_(obj);
}

- (NSString *)getTime {
  if ([time_ isKindOfClass:[OrgBouncycastleAsn1ASN1UTCTime class]]) {
    return [((OrgBouncycastleAsn1ASN1UTCTime *) nil_chk(((OrgBouncycastleAsn1ASN1UTCTime *) check_class_cast(time_, [OrgBouncycastleAsn1ASN1UTCTime class])))) getAdjustedTime];
  }
  else {
    return [((OrgBouncycastleAsn1ASN1GeneralizedTime *) nil_chk(((OrgBouncycastleAsn1ASN1GeneralizedTime *) check_class_cast(time_, [OrgBouncycastleAsn1ASN1GeneralizedTime class])))) getTime];
  }
}

- (JavaUtilDate *)getDate {
  @try {
    if ([time_ isKindOfClass:[OrgBouncycastleAsn1ASN1UTCTime class]]) {
      return [((OrgBouncycastleAsn1ASN1UTCTime *) nil_chk(((OrgBouncycastleAsn1ASN1UTCTime *) check_class_cast(time_, [OrgBouncycastleAsn1ASN1UTCTime class])))) getAdjustedDate];
    }
    else {
      return [((OrgBouncycastleAsn1ASN1GeneralizedTime *) nil_chk(((OrgBouncycastleAsn1ASN1GeneralizedTime *) check_class_cast(time_, [OrgBouncycastleAsn1ASN1GeneralizedTime class])))) getDate];
    }
  }
  @catch (JavaTextParseException *e) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$", @"invalid date string: ", [((JavaTextParseException *) nil_chk(e)) getMessage])];
  }
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return time_;
}

- (NSString *)description {
  return [self getTime];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509Time *)other {
  [super copyAllFieldsTo:other];
  other->time_ = time_;
}

@end

OrgBouncycastleAsn1X509Time *OrgBouncycastleAsn1X509Time_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1X509Time_init();
  return OrgBouncycastleAsn1X509Time_getInstanceWithId_([((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(obj)) getObject]);
}

OrgBouncycastleAsn1X509Time *OrgBouncycastleAsn1X509Time_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509Time_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1X509Time class]]) {
    return (OrgBouncycastleAsn1X509Time *) check_class_cast(obj, [OrgBouncycastleAsn1X509Time class]);
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1UTCTime class]]) {
    return [[OrgBouncycastleAsn1X509Time alloc] initWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1UTCTime *) check_class_cast(obj, [OrgBouncycastleAsn1ASN1UTCTime class])];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1GeneralizedTime class]]) {
    return [[OrgBouncycastleAsn1X509Time alloc] initWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1GeneralizedTime *) check_class_cast(obj, [OrgBouncycastleAsn1ASN1GeneralizedTime class])];
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$", @"unknown object in factory: ", [[nil_chk(obj) getClass] getName])];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509Time)
