//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/updates/GroupsProcessor.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/engine/KeyValueEngine.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/model/entity/content/ServiceGroupCreated.h"
#include "im/actor/model/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/model/entity/content/ServiceGroupUserAdded.h"
#include "im/actor/model/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/model/entity/content/ServiceGroupUserLeave.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/messages/entity/EntityConverter.h"
#include "im/actor/model/modules/updates/GroupsProcessor.h"
#include "im/actor/model/util/JavaUtil.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/List.h"

__attribute__((unused)) static void ImActorModelModulesUpdatesGroupsProcessor_onGroupDescChangedWithAMGroup_(ImActorModelModulesUpdatesGroupsProcessor *self, AMGroup *group);

@interface ImActorModelModulesUpdatesGroupsProcessor ()

- (void)onGroupDescChangedWithAMGroup:(AMGroup *)group;
@end

@implementation ImActorModelModulesUpdatesGroupsProcessor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  return [super initWithImActorModelModulesModules:modules];
}

- (void)applyGroupsWithJavaUtilCollection:(id<JavaUtilCollection>)updated
                              withBoolean:(jboolean)forced {
  JavaUtilArrayList *batch = [[JavaUtilArrayList alloc] init];
  for (ImActorModelApiGroup * __strong group in nil_chk(updated)) {
    AMGroup *saved = [((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:[((ImActorModelApiGroup *) nil_chk(group)) getId]];
    if (saved == nil) {
      [batch addWithId:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiGroup_(group)];
    }
    else if (forced) {
      AMGroup *upd = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiGroup_(group);
      [batch addWithId:upd];
      if (!AMJavaUtil_equalsEWithId_withId_([((AMGroup *) nil_chk(upd)) getAvatar], [saved getAvatar]) || ![((NSString *) nil_chk([upd getTitle])) isEqual:[saved getTitle]]) {
        ImActorModelModulesUpdatesGroupsProcessor_onGroupDescChangedWithAMGroup_(self, upd);
      }
    }
  }
  if ([batch size] > 0) {
    [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemsWithJavaUtilList:batch];
  }
}

- (void)onGroupInviteWithInt:(jint)groupId
                    withLong:(jlong)rid
                     withInt:(jint)inviterId
                    withLong:(jlong)date
                 withBoolean:(jboolean)isSilent {
  AMGroup *group = [((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:groupId];
  if (group != nil) {
    [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:[((AMGroup *) nil_chk([group changeMemberWithBoolean:YES])) addMemberWithInt:[self myUid] withInt:inviterId withLong:date withBoolean:inviterId == [self myUid]]];
    if (!isSilent) {
      if (inviterId == [self myUid]) {
        AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:inviterId withAMMessageStateEnum:AMMessageStateEnum_get_UNKNOWN() withAMAbsContent:[[AMServiceGroupCreated alloc] initWithNSString:[group getTitle]]];
        [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:[group peer]])) sendWithId:message];
      }
      else {
        AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:inviterId withAMMessageStateEnum:AMMessageStateEnum_get_SENT() withAMAbsContent:[[AMServiceGroupUserAdded alloc] initWithInt:[self myUid]]];
        [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:[group peer]])) sendWithId:message];
      }
    }
  }
}

- (void)onUserLeaveWithInt:(jint)groupId
                  withLong:(jlong)rid
                   withInt:(jint)uid
                  withLong:(jlong)date
               withBoolean:(jboolean)isSilent {
  AMGroup *group = [((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:groupId];
  if (group != nil) {
    if (uid == [self myUid]) {
      [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:[((AMGroup *) nil_chk([group clearMembers])) changeMemberWithBoolean:NO]];
    }
    else {
      [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:[group removeMemberWithInt:uid]];
    }
    if (!isSilent) {
      AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:uid withAMMessageStateEnum:uid == [self myUid] ? AMMessageStateEnum_get_SENT() : AMMessageStateEnum_get_UNKNOWN() withAMAbsContent:[[AMServiceGroupUserLeave alloc] init]];
      [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:[group peer]])) sendWithId:message];
    }
  }
}

- (void)onUserKickedWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)kicker
                   withLong:(jlong)date
                withBoolean:(jboolean)isSilent {
  AMGroup *group = [((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:groupId];
  if (group != nil) {
    if (uid == [self myUid]) {
      [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:[((AMGroup *) nil_chk([group clearMembers])) changeMemberWithBoolean:NO]];
    }
    else {
      [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:[group removeMemberWithInt:uid]];
    }
    if (!isSilent) {
      AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:kicker withAMMessageStateEnum:kicker == [self myUid] ? AMMessageStateEnum_get_SENT() : AMMessageStateEnum_get_UNKNOWN() withAMAbsContent:[[AMServiceGroupUserKicked alloc] initWithInt:uid]];
      [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:[group peer]])) sendWithId:message];
    }
  }
}

- (void)onUserAddedWithInt:(jint)groupId
                  withLong:(jlong)rid
                   withInt:(jint)uid
                   withInt:(jint)adder
                  withLong:(jlong)date
               withBoolean:(jboolean)isSilent {
  AMGroup *group = [((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:groupId];
  if (group != nil) {
    [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:[group addMemberWithInt:uid withInt:adder withLong:date withBoolean:NO]];
    if (!isSilent) {
      AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:adder withAMMessageStateEnum:adder == [self myUid] ? AMMessageStateEnum_get_SENT() : AMMessageStateEnum_get_UNKNOWN() withAMAbsContent:[[AMServiceGroupUserAdded alloc] initWithInt:uid]];
      [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:[group peer]])) sendWithId:message];
    }
  }
}

- (void)onTitleChangedWithInt:(jint)groupId
                     withLong:(jlong)rid
                      withInt:(jint)uid
                 withNSString:(NSString *)title
                     withLong:(jlong)date
                  withBoolean:(jboolean)isSilent {
  AMGroup *group = [((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:groupId];
  if (group != nil) {
    if (![((NSString *) nil_chk([group getTitle])) isEqual:title]) {
      AMGroup *upd = [group editTitleWithNSString:title];
      [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:upd];
      ImActorModelModulesUpdatesGroupsProcessor_onGroupDescChangedWithAMGroup_(self, upd);
    }
    if (!isSilent) {
      AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:uid withAMMessageStateEnum:uid == [self myUid] ? AMMessageStateEnum_get_SENT() : AMMessageStateEnum_get_UNKNOWN() withAMAbsContent:[[AMServiceGroupTitleChanged alloc] initWithNSString:title]];
      [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:[group peer]])) sendWithId:message];
    }
  }
}

- (void)onAvatarChangedWithInt:(jint)groupId
                      withLong:(jlong)rid
                       withInt:(jint)uid
                  withAMAvatar:(AMAvatar *)avatar
                      withLong:(jlong)date
                   withBoolean:(jboolean)isSilent {
  AMGroup *group = [((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:groupId];
  if (group != nil) {
    if (!AMJavaUtil_equalsEWithId_withId_([group getAvatar], avatar)) {
      AMGroup *upd = [group editAvatarWithAMAvatar:avatar];
      [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:upd];
      ImActorModelModulesUpdatesGroupsProcessor_onGroupDescChangedWithAMGroup_(self, upd);
    }
    if (!isSilent) {
      AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:uid withAMMessageStateEnum:uid == [self myUid] ? AMMessageStateEnum_get_SENT() : AMMessageStateEnum_get_UNKNOWN() withAMAbsContent:[[AMServiceGroupAvatarChanged alloc] initWithAMAvatar:avatar]];
      [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:[group peer]])) sendWithId:message];
    }
  }
}

- (void)onMembersUpdatedWithInt:(jint)groupId
               withJavaUtilList:(id<JavaUtilList>)members {
  AMGroup *group = [((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:groupId];
  if (group != nil) {
    group = [group clearMembers];
    for (ImActorModelApiMember * __strong m in nil_chk(members)) {
      group = [group addMemberWithInt:[((ImActorModelApiMember *) nil_chk(m)) getUid] withInt:[m getInviterUid] withLong:[m getDate] withBoolean:[m getUid] == [((AMGroup *) nil_chk(group)) getAdminId]];
    }
    [((id<DKKeyValueEngine>) nil_chk([self groups])) addOrUpdateItemWithDKKeyValueItem:group];
  }
}

- (jboolean)hasGroupsWithJavaUtilCollection:(id<JavaUtilCollection>)gids {
  for (JavaLangInteger * __strong uid in nil_chk(gids)) {
    if ([((id<DKKeyValueEngine>) nil_chk([self groups])) getValueWithLong:[((JavaLangInteger *) nil_chk(uid)) intValue]] == nil) {
      return NO;
    }
  }
  return YES;
}

- (void)onGroupDescChangedWithAMGroup:(AMGroup *)group {
  ImActorModelModulesUpdatesGroupsProcessor_onGroupDescChangedWithAMGroup_(self, group);
}

@end

void ImActorModelModulesUpdatesGroupsProcessor_onGroupDescChangedWithAMGroup_(ImActorModelModulesUpdatesGroupsProcessor *self, AMGroup *group) {
  [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:[[ImActorModelModulesMessagesDialogsActor_GroupChanged alloc] initWithAMGroup:group]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesGroupsProcessor)
