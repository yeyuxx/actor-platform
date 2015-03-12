//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/messages/entity/EntityConverter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/AvatarImage.h"
#include "im/actor/model/api/DocumentEx.h"
#include "im/actor/model/api/DocumentExPhoto.h"
#include "im/actor/model/api/DocumentExVideo.h"
#include "im/actor/model/api/DocumentMessage.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/MessageState.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/PeerType.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExChangedAvatar.h"
#include "im/actor/model/api/ServiceExChangedTitle.h"
#include "im/actor/model/api/ServiceExGroupCreated.h"
#include "im/actor/model/api/ServiceExUserAdded.h"
#include "im/actor/model/api/ServiceExUserKicked.h"
#include "im/actor/model/api/ServiceExUserLeft.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/api/Sex.h"
#include "im/actor/model/api/TextMessage.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/AvatarImage.h"
#include "im/actor/model/entity/ContactRecord.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/entity/GroupMember.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/Sex.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/entity/content/FileRemoteSource.h"
#include "im/actor/model/entity/content/PhotoContent.h"
#include "im/actor/model/entity/content/ServiceContent.h"
#include "im/actor/model/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/model/entity/content/ServiceGroupCreated.h"
#include "im/actor/model/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/model/entity/content/ServiceGroupUserAdded.h"
#include "im/actor/model/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/model/entity/content/ServiceGroupUserLeave.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/entity/content/VideoContent.h"
#include "im/actor/model/modules/messages/entity/EntityConverter.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@implementation ImActorModelModulesMessagesEntityEntityConverter

+ (AMMessageStateEnum *)convertWithImActorModelApiMessageStateEnum:(ImActorModelApiMessageStateEnum *)state {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessageStateEnum_(state);
}

+ (AMAvatar *)convertWithImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_(avatar);
}

+ (AMAvatarImage *)convertWithImActorModelApiAvatarImage:(ImActorModelApiAvatarImage *)avatarImage {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_(avatarImage);
}

+ (AMFileReference *)convertWithImActorModelApiFileLocation:(ImActorModelApiFileLocation *)location
                                               withNSString:(NSString *)fileName
                                                    withInt:(jint)size {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFileLocation_withNSString_withInt_(location, fileName, size);
}

+ (AMSexEnum *)convertWithImActorModelApiSexEnum:(ImActorModelApiSexEnum *)sex {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiSexEnum_(sex);
}

+ (AMUser *)convertWithImActorModelApiUser:(ImActorModelApiUser *)user {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(user);
}

+ (AMGroup *)convertWithImActorModelApiGroup:(ImActorModelApiGroup *)group {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiGroup_(group);
}

+ (JavaUtilArrayList *)convertWithJavaUtilList:(id<JavaUtilList>)members
                                       withInt:(jint)admin {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithJavaUtilList_withInt_(members, admin);
}

+ (AMPeerTypeEnum *)convertWithImActorModelApiPeerTypeEnum:(ImActorModelApiPeerTypeEnum *)peerType {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeerTypeEnum_(peerType);
}

+ (AMPeer *)convertWithImActorModelApiPeer:(ImActorModelApiPeer *)peer {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(peer);
}

+ (AMAbsContent *)convertWithImActorModelApiMessage:(ImActorModelApiMessage *)content {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessage_(content);
}

+ (AMFastThumb *)convertWithImActorModelApiFastThumb:(ImActorModelApiFastThumb *)fastThumb {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFastThumb_(fastThumb);
}

- (instancetype)init {
  return [super init];
}

@end

AMMessageStateEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessageStateEnum_(ImActorModelApiMessageStateEnum *state) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  if (state == nil) {
    return AMMessageStateEnum_get_UNKNOWN();
  }
  switch ([state ordinal]) {
    case ImActorModelApiMessageState_READ:
    return AMMessageStateEnum_get_READ();
    case ImActorModelApiMessageState_RECEIVED:
    return AMMessageStateEnum_get_RECEIVED();
    case ImActorModelApiMessageState_SENT:
    return AMMessageStateEnum_get_SENT();
    default:
    return AMMessageStateEnum_get_UNKNOWN();
  }
}

AMAvatar *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_(ImActorModelApiAvatar *avatar) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  if (avatar == nil) {
    return nil;
  }
  return [[AMAvatar alloc] initWithAMAvatarImage:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_([((ImActorModelApiAvatar *) nil_chk(avatar)) getSmallImage]) withAMAvatarImage:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_([avatar getLargeImage]) withAMAvatarImage:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_([avatar getFullImage])];
}

AMAvatarImage *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_(ImActorModelApiAvatarImage *avatarImage) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  if (avatarImage == nil) {
    return nil;
  }
  return [[AMAvatarImage alloc] initWithInt:[((ImActorModelApiAvatarImage *) nil_chk(avatarImage)) getWidth] withInt:[avatarImage getHeight] withAMFileReference:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFileLocation_withNSString_withInt_([avatarImage getFileLocation], @"avatar.jpg", [avatarImage getFileSize])];
}

AMFileReference *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFileLocation_withNSString_withInt_(ImActorModelApiFileLocation *location, NSString *fileName, jint size) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  return [[AMFileReference alloc] initWithLong:[((ImActorModelApiFileLocation *) nil_chk(location)) getFileId] withLong:[location getAccessHash] withInt:size withNSString:fileName];
}

AMSexEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiSexEnum_(ImActorModelApiSexEnum *sex) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  if (sex == nil) {
    return AMSexEnum_get_UNKNOWN();
  }
  switch ([sex ordinal]) {
    case ImActorModelApiSex_FEMALE:
    return AMSexEnum_get_FEMALE();
    case ImActorModelApiSex_MALE:
    return AMSexEnum_get_MALE();
    default:
    case ImActorModelApiSex_UNKNOWN:
    return AMSexEnum_get_UNKNOWN();
  }
}

AMUser *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(ImActorModelApiUser *user) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  JavaUtilArrayList *res = [[JavaUtilArrayList alloc] init];
  [res addWithId:[[AMContactRecord alloc] initWithInt:0 withLong:0 withInt:AMContactRecord_get_TYPE_PHONE_() withNSString:JreStrcat("J", [((ImActorModelApiUser *) nil_chk(user)) getPhone]) withNSString:@"Mobile"]];
  return [[AMUser alloc] initWithInt:[user getId] withLong:[user getAccessHash] withNSString:[user getName] withNSString:[user getLocalName] withAMAvatar:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_([user getAvatar]) withAMSexEnum:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiSexEnum_([user getSex]) withJavaUtilList:res];
}

AMGroup *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiGroup_(ImActorModelApiGroup *group) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  return [[AMGroup alloc] initWithInt:[((ImActorModelApiGroup *) nil_chk(group)) getId] withLong:[group getAccessHash] withNSString:[group getTitle] withAMAvatar:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_([group getAvatar]) withJavaUtilList:ImActorModelModulesMessagesEntityEntityConverter_convertWithJavaUtilList_withInt_([group getMembers], [group getCreatorUid]) withInt:[group getCreatorUid] withBoolean:[group isMember]];
}

JavaUtilArrayList *ImActorModelModulesMessagesEntityEntityConverter_convertWithJavaUtilList_withInt_(id<JavaUtilList> members, jint admin) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  JavaUtilArrayList *res = [[JavaUtilArrayList alloc] init];
  for (ImActorModelApiMember * __strong m in nil_chk(members)) {
    [res addWithId:[[AMGroupMember alloc] initWithInt:[((ImActorModelApiMember *) nil_chk(m)) getUid] withInt:[m getInviterUid] withLong:[m getDate] withBoolean:[m getUid] == admin]];
  }
  return res;
}

AMPeerTypeEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeerTypeEnum_(ImActorModelApiPeerTypeEnum *peerType) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  switch ([peerType ordinal]) {
    case ImActorModelApiPeerType_EMAIL:
    return AMPeerTypeEnum_get_EMAIL();
    case ImActorModelApiPeerType_GROUP:
    return AMPeerTypeEnum_get_GROUP();
    default:
    case ImActorModelApiPeerType_PRIVATE:
    return AMPeerTypeEnum_get_PRIVATE();
  }
}

AMPeer *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(ImActorModelApiPeer *peer) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  return [[AMPeer alloc] initWithAMPeerTypeEnum:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeerTypeEnum_([((ImActorModelApiPeer *) nil_chk(peer)) getType]) withInt:[peer getId]];
}

AMAbsContent *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessage_(ImActorModelApiMessage *content) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  if ([content isKindOfClass:[ImActorModelApiTextMessage class]]) {
    ImActorModelApiTextMessage *message = (ImActorModelApiTextMessage *) check_class_cast(content, [ImActorModelApiTextMessage class]);
    return [[AMTextContent alloc] initWithNSString:[((ImActorModelApiTextMessage *) nil_chk(message)) getText]];
  }
  else if ([content isKindOfClass:[ImActorModelApiServiceMessage class]]) {
    ImActorModelApiServiceMessage *message = (ImActorModelApiServiceMessage *) check_class_cast(content, [ImActorModelApiServiceMessage class]);
    ImActorModelApiServiceEx *ex = [((ImActorModelApiServiceMessage *) nil_chk(message)) getExt];
    if ([ex isKindOfClass:[ImActorModelApiServiceExChangedAvatar class]]) {
      ImActorModelApiServiceExChangedAvatar *avatar = (ImActorModelApiServiceExChangedAvatar *) check_class_cast(ex, [ImActorModelApiServiceExChangedAvatar class]);
      return [[AMServiceGroupAvatarChanged alloc] initWithAMAvatar:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_([((ImActorModelApiServiceExChangedAvatar *) nil_chk(avatar)) getAvatar])];
    }
    else if ([ex isKindOfClass:[ImActorModelApiServiceExChangedTitle class]]) {
      ImActorModelApiServiceExChangedTitle *title = (ImActorModelApiServiceExChangedTitle *) check_class_cast(ex, [ImActorModelApiServiceExChangedTitle class]);
      return [[AMServiceGroupTitleChanged alloc] initWithNSString:[((ImActorModelApiServiceExChangedTitle *) nil_chk(title)) getTitle]];
    }
    else if ([ex isKindOfClass:[ImActorModelApiServiceExUserAdded class]]) {
      ImActorModelApiServiceExUserAdded *userAdded = (ImActorModelApiServiceExUserAdded *) check_class_cast(ex, [ImActorModelApiServiceExUserAdded class]);
      return [[AMServiceGroupUserAdded alloc] initWithInt:[((ImActorModelApiServiceExUserAdded *) nil_chk(userAdded)) getAddedUid]];
    }
    else if ([ex isKindOfClass:[ImActorModelApiServiceExUserKicked class]]) {
      ImActorModelApiServiceExUserKicked *exUserKicked = (ImActorModelApiServiceExUserKicked *) check_class_cast(ex, [ImActorModelApiServiceExUserKicked class]);
      return [[AMServiceGroupUserKicked alloc] initWithInt:[((ImActorModelApiServiceExUserKicked *) nil_chk(exUserKicked)) getKickedUid]];
    }
    else if ([ex isKindOfClass:[ImActorModelApiServiceExUserLeft class]]) {
      return [[AMServiceGroupUserLeave alloc] init];
    }
    else if ([ex isKindOfClass:[ImActorModelApiServiceExGroupCreated class]]) {
      return [[AMServiceGroupCreated alloc] initWithNSString:@"Group created"];
    }
    else {
      return [[AMServiceContent alloc] initWithNSString:[message getText]];
    }
  }
  else if ([content isKindOfClass:[ImActorModelApiDocumentMessage class]]) {
    ImActorModelApiDocumentMessage *documentMessage = (ImActorModelApiDocumentMessage *) check_class_cast(content, [ImActorModelApiDocumentMessage class]);
    NSString *mimeType = [((ImActorModelApiDocumentMessage *) nil_chk(documentMessage)) getMimeType];
    NSString *name = [documentMessage getName];
    AMFastThumb *fastThumb = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFastThumb_([documentMessage getThumb]);
    AMFileReference *fileReference = [[AMFileReference alloc] initWithLong:[documentMessage getFileId] withLong:[documentMessage getAccessHash] withInt:[documentMessage getFileSize] withNSString:[documentMessage getName]];
    AMFileRemoteSource *source = [[AMFileRemoteSource alloc] initWithAMFileReference:fileReference];
    if ([[documentMessage getExt] isKindOfClass:[ImActorModelApiDocumentExPhoto class]]) {
      ImActorModelApiDocumentExPhoto *photo = (ImActorModelApiDocumentExPhoto *) check_class_cast([documentMessage getExt], [ImActorModelApiDocumentExPhoto class]);
      return [[AMPhotoContent alloc] initWithAMFileSource:source withNSString:mimeType withNSString:name withAMFastThumb:fastThumb withInt:[((ImActorModelApiDocumentExPhoto *) nil_chk(photo)) getW] withInt:[photo getH]];
    }
    else if ([[documentMessage getExt] isKindOfClass:[ImActorModelApiDocumentExVideo class]]) {
      ImActorModelApiDocumentExVideo *video = (ImActorModelApiDocumentExVideo *) check_class_cast([documentMessage getExt], [ImActorModelApiDocumentExVideo class]);
      return [[AMVideoContent alloc] initWithAMFileSource:source withNSString:mimeType withNSString:name withAMFastThumb:fastThumb withInt:[((ImActorModelApiDocumentExVideo *) nil_chk(video)) getDuration] withInt:[video getW] withInt:[video getH]];
    }
    else {
      return [[AMDocumentContent alloc] initWithAMFileSource:source withNSString:mimeType withNSString:name withAMFastThumb:fastThumb];
    }
  }
  return nil;
}

AMFastThumb *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFastThumb_(ImActorModelApiFastThumb *fastThumb) {
  ImActorModelModulesMessagesEntityEntityConverter_init();
  if (fastThumb == nil) {
    return nil;
  }
  return [[AMFastThumb alloc] initWithInt:[((ImActorModelApiFastThumb *) nil_chk(fastThumb)) getW] withInt:[fastThumb getH] withByteArray:[fastThumb getThumb]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesEntityEntityConverter)
