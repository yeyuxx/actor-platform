//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/updates/MessagesProcessor.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/CryptoProvider.h"
#include "im/actor/model/api/Dialog.h"
#include "im/actor/model/api/EncryptedContentV1.h"
#include "im/actor/model/api/EncryptedDocumentV1.h"
#include "im/actor/model/api/EncryptedDocumentV1Ex.h"
#include "im/actor/model/api/EncryptedDocumentV1ExPhoto.h"
#include "im/actor/model/api/EncryptedDocumentV1VExideo.h"
#include "im/actor/model/api/EncryptedFileLocationV1.h"
#include "im/actor/model/api/EncryptedMessageV1.h"
#include "im/actor/model/api/EncryptedPackage.h"
#include "im/actor/model/api/EncryptedTextContentV1.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/api/HistoryMessage.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/MessageState.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/model/api/rpc/ResponseLoadHistory.h"
#include "im/actor/model/crypto/AesCipher.h"
#include "im/actor/model/crypto/RsaCipher.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/entity/ContentDescription.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/entity/content/FileRemoteSource.h"
#include "im/actor/model/entity/content/PhotoContent.h"
#include "im/actor/model/entity/content/ServiceUserRegistered.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/entity/content/VideoContent.h"
#include "im/actor/model/modules/Auth.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Notifications.h"
#include "im/actor/model/modules/messages/ConversationActor.h"
#include "im/actor/model/modules/messages/ConversationHistoryActor.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/messages/DialogsHistoryActor.h"
#include "im/actor/model/modules/messages/OwnReadActor.h"
#include "im/actor/model/modules/messages/PlainReceiverActor.h"
#include "im/actor/model/modules/messages/SenderActor.h"
#include "im/actor/model/modules/messages/entity/DialogHistory.h"
#include "im/actor/model/modules/messages/entity/EntityConverter.h"
#include "im/actor/model/modules/updates/MessagesProcessor.h"
#include "im/actor/model/modules/utils/RandomUtils.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

__attribute__((unused)) static void ImActorModelModulesUpdatesMessagesProcessor_onMessageWithAMPeer_withInt_withLong_withLong_withAMAbsContent_(ImActorModelModulesUpdatesMessagesProcessor *self, AMPeer *peer, jint senderUid, jlong date, jlong rid, AMAbsContent *msgContent);

@interface ImActorModelModulesUpdatesMessagesProcessor ()

- (void)onMessageWithAMPeer:(AMPeer *)peer
                    withInt:(jint)senderUid
                   withLong:(jlong)date
                   withLong:(jlong)rid
           withAMAbsContent:(AMAbsContent *)msgContent;
@end

@implementation ImActorModelModulesUpdatesMessagesProcessor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  return [super initWithImActorModelModulesModules:messenger];
}

- (void)onDialogsLoadedWithImActorModelApiRpcResponseLoadDialogs:(ImActorModelApiRpcResponseLoadDialogs *)dialogsResponse {
  JavaUtilArrayList *dialogs = [[JavaUtilArrayList alloc] init];
  jlong maxLoadedDate = JavaLangLong_MAX_VALUE;
  for (ImActorModelApiDialog * __strong dialog in nil_chk([((ImActorModelApiRpcResponseLoadDialogs *) nil_chk(dialogsResponse)) getDialogs])) {
    maxLoadedDate = JavaLangMath_minWithLong_withLong_([((ImActorModelApiDialog *) nil_chk(dialog)) getSortDate], maxLoadedDate);
    AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_([dialog getPeer]);
    AMAbsContent *msgContent = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessage_([dialog getMessage]);
    if (msgContent == nil) {
      continue;
    }
    [dialogs addWithId:[[ImActorModelModulesMessagesEntityDialogHistory alloc] initWithAMPeer:peer withInt:[dialog getUnreadCount] withLong:[dialog getSortDate] withLong:[dialog getRid] withLong:[dialog getDate] withInt:[dialog getSenderUid] withAMAbsContent:msgContent withAMMessageStateEnum:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessageStateEnum_([dialog getState])]];
  }
  if ([dialogs size] > 0) {
    [((DKActorRef *) nil_chk([self dialogsActor])) sendWithId:[[ImActorModelModulesMessagesDialogsActor_HistoryLoaded alloc] initWithJavaUtilList:dialogs]];
  }
  [((DKActorRef *) nil_chk([self dialogsHistoryActor])) sendWithId:[[ImActorModelModulesMessagesDialogsHistoryActor_LoadedMore alloc] initWithInt:[((id<JavaUtilList>) nil_chk([dialogsResponse getDialogs])) size] withLong:maxLoadedDate]];
}

- (void)onMessagesLoadedWithAMPeer:(AMPeer *)peer
withImActorModelApiRpcResponseLoadHistory:(ImActorModelApiRpcResponseLoadHistory *)historyResponse {
  JavaUtilArrayList *messages = [[JavaUtilArrayList alloc] init];
  jlong maxLoadedDate = JavaLangLong_MAX_VALUE;
  for (ImActorModelApiHistoryMessage * __strong historyMessage in nil_chk([((ImActorModelApiRpcResponseLoadHistory *) nil_chk(historyResponse)) getHistory])) {
    maxLoadedDate = JavaLangMath_minWithLong_withLong_([((ImActorModelApiHistoryMessage *) nil_chk(historyMessage)) getDate], maxLoadedDate);
    AMAbsContent *content = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessage_([historyMessage getMessage]);
    if (content == nil) {
      continue;
    }
    AMMessageStateEnum *state = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessageStateEnum_([historyMessage getState]);
    [messages addWithId:[[AMMessage alloc] initWithLong:[historyMessage getRid] withLong:[historyMessage getDate] withLong:[historyMessage getDate] withInt:[historyMessage getSenderUid] withAMMessageStateEnum:state withAMAbsContent:content]];
  }
  if ([messages size] > 0) {
    [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_HistoryLoaded alloc] initWithJavaUtilList:messages]];
  }
  [((DKActorRef *) nil_chk([self conversationHistoryActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationHistoryActor_LoadedMore alloc] initWithInt:[((id<JavaUtilList>) nil_chk([historyResponse getHistory])) size] withLong:maxLoadedDate]];
}

- (void)onMessageWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                 withInt:(jint)senderUid
                                withLong:(jlong)date
                                withLong:(jlong)rid
              withImActorModelApiMessage:(ImActorModelApiMessage *)content {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  AMAbsContent *msgContent = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessage_(content);
  if (msgContent == nil) {
    return;
  }
  ImActorModelModulesUpdatesMessagesProcessor_onMessageWithAMPeer_withInt_withLong_withLong_withAMAbsContent_(self, peer, senderUid, date, rid, msgContent);
}

- (void)onEncryptedMessageWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                          withInt:(jint)senderUid
                                         withLong:(jlong)date
                                         withLong:(jlong)keyHash
                                    withByteArray:(IOSByteArray *)aesEncryptedKey
                                    withByteArray:(IOSByteArray *)message {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  id<ImActorModelCryptoRsaCipher> cipher = [((id<AMCryptoProvider>) nil_chk([self crypto])) createRSAOAEPSHA1CipherWithByteArray:[((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAuthModule])) getPublicKey] withByteArray:[((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAuthModule])) getPrivateKey]];
  IOSByteArray *aesKey = [((id<ImActorModelCryptoRsaCipher>) nil_chk(cipher)) decryptWithByteArray:aesEncryptedKey];
  if (aesKey == nil) {
    return;
  }
  IOSByteArray *key = ImActorModelModulesUpdatesMessagesProcessor_substringWithByteArray_withInt_withInt_(aesKey, ((IOSByteArray *) nil_chk(aesKey))->size_ - 16 - 32, 32);
  IOSByteArray *iv = ImActorModelModulesUpdatesMessagesProcessor_substringWithByteArray_withInt_withInt_(aesKey, aesKey->size_ - 16, 16);
  id<ImActorModelCryptoAesCipher> aesCipher = [((id<AMCryptoProvider>) nil_chk([self crypto])) createAESCBCPKS7CipherWithByteArray:key withByteArray:iv];
  @try {
    IOSByteArray *decryptedRawMessage = [((id<ImActorModelCryptoAesCipher>) nil_chk(aesCipher)) decryptWithByteArray:message];
    jint len = ImActorModelModulesUpdatesMessagesProcessor_readIntWithByteArray_withInt_(decryptedRawMessage, 0);
    IOSByteArray *res = ImActorModelModulesUpdatesMessagesProcessor_substringWithByteArray_withInt_withInt_(decryptedRawMessage, 4, len);
    ImActorModelApiEncryptedPackage *encryptedPackage = ((ImActorModelApiEncryptedPackage *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiEncryptedPackage alloc] init], res));
    if ([((ImActorModelApiEncryptedPackage *) nil_chk(encryptedPackage)) getV2Message] != nil) {
    }
    else {
      if ([((JavaLangInteger *) nil_chk([encryptedPackage getV1MessageType])) intValue] != 1) {
        return;
      }
      ImActorModelApiEncryptedMessageV1 *messageV1 = ((ImActorModelApiEncryptedMessageV1 *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiEncryptedMessageV1 alloc] init], [encryptedPackage getV1Message]));
      if ([[((ImActorModelApiEncryptedMessageV1 *) nil_chk(messageV1)) getContent] isKindOfClass:[ImActorModelApiEncryptedTextContentV1 class]]) {
        ImActorModelApiEncryptedTextContentV1 *text = (ImActorModelApiEncryptedTextContentV1 *) check_class_cast([messageV1 getContent], [ImActorModelApiEncryptedTextContentV1 class]);
        ImActorModelModulesUpdatesMessagesProcessor_onMessageWithAMPeer_withInt_withLong_withLong_withAMAbsContent_(self, peer, senderUid, date, [messageV1 getRid], [[AMTextContent alloc] initWithNSString:[((ImActorModelApiEncryptedTextContentV1 *) nil_chk(text)) getText]]);
      }
      else if ([[messageV1 getContent] isKindOfClass:[ImActorModelApiEncryptedDocumentV1 class]]) {
        ImActorModelApiEncryptedDocumentV1 *document = (ImActorModelApiEncryptedDocumentV1 *) check_class_cast([messageV1 getContent], [ImActorModelApiEncryptedDocumentV1 class]);
        AMAbsContent *content;
        NSString *name = [((ImActorModelApiEncryptedDocumentV1 *) nil_chk(document)) getName];
        NSString *mimeType = [document getMimeType];
        AMFastThumb *fastThumb = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFastThumb_([document getFastThumb]);
        AMFileRemoteSource *fileRemoteSource = [[AMFileRemoteSource alloc] initWithAMFileReference:[[AMFileReference alloc] initWithLong:[((ImActorModelApiEncryptedFileLocationV1 *) nil_chk([document getFileLocation])) getFileId] withLong:[((ImActorModelApiEncryptedFileLocationV1 *) nil_chk([document getFileLocation])) getAccessHash] withInt:[((ImActorModelApiEncryptedFileLocationV1 *) nil_chk([document getFileLocation])) getFileSize] withNSString:[document getName]]];
        if ([[document getExtension] isKindOfClass:[ImActorModelApiEncryptedDocumentV1ExPhoto class]]) {
          ImActorModelApiEncryptedDocumentV1ExPhoto *photo = (ImActorModelApiEncryptedDocumentV1ExPhoto *) check_class_cast([document getExtension], [ImActorModelApiEncryptedDocumentV1ExPhoto class]);
          content = [[AMPhotoContent alloc] initWithAMFileSource:fileRemoteSource withNSString:mimeType withNSString:name withAMFastThumb:fastThumb withInt:[((ImActorModelApiEncryptedDocumentV1ExPhoto *) nil_chk(photo)) getWidth] withInt:[photo getHeight]];
        }
        else if ([[document getExtension] isKindOfClass:[ImActorModelApiEncryptedDocumentV1VExideo class]]) {
          ImActorModelApiEncryptedDocumentV1VExideo *video = (ImActorModelApiEncryptedDocumentV1VExideo *) check_class_cast([document getExtension], [ImActorModelApiEncryptedDocumentV1VExideo class]);
          content = [[AMVideoContent alloc] initWithAMFileSource:fileRemoteSource withNSString:mimeType withNSString:name withAMFastThumb:fastThumb withInt:[((ImActorModelApiEncryptedDocumentV1VExideo *) nil_chk(video)) getDuration] withInt:[video getWidth] withInt:[video getHeight]];
        }
        else {
          content = [[AMDocumentContent alloc] initWithAMFileSource:fileRemoteSource withNSString:mimeType withNSString:name withAMFastThumb:fastThumb];
        }
        ImActorModelModulesUpdatesMessagesProcessor_onMessageWithAMPeer_withInt_withLong_withLong_withAMAbsContent_(self, peer, senderUid, date, [messageV1 getRid], content);
      }
    }
  }
  @catch (JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
}

- (void)onMessageWithAMPeer:(AMPeer *)peer
                    withInt:(jint)senderUid
                   withLong:(jlong)date
                   withLong:(jlong)rid
           withAMAbsContent:(AMAbsContent *)msgContent {
  ImActorModelModulesUpdatesMessagesProcessor_onMessageWithAMPeer_withInt_withLong_withLong_withAMAbsContent_(self, peer, senderUid, date, rid, msgContent);
}

+ (jint)readIntWithByteArray:(IOSByteArray *)bytes
                     withInt:(jint)offset {
  return ImActorModelModulesUpdatesMessagesProcessor_readIntWithByteArray_withInt_(bytes, offset);
}

+ (IOSByteArray *)substringWithByteArray:(IOSByteArray *)src
                                 withInt:(jint)start
                                 withInt:(jint)len {
  return ImActorModelModulesUpdatesMessagesProcessor_substringWithByteArray_withInt_withInt_(src, start, len);
}

- (void)onMessageReadWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                    withLong:(jlong)startDate
                                    withLong:(jlong)readDate {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_MessageRead alloc] initWithLong:startDate]];
}

- (void)onMessageEncryptedReadWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                             withLong:(jlong)rid
                                             withLong:(jlong)readDate {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_MessageEncryptedRead alloc] initWithLong:rid]];
}

- (void)onMessageReceivedWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                        withLong:(jlong)startDate
                                        withLong:(jlong)receivedDate {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_MessageReceived alloc] initWithLong:startDate]];
}

- (void)onMessageEncryptedReceivedWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                                 withLong:(jlong)rid
                                                 withLong:(jlong)receivedDate {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived alloc] initWithLong:rid]];
}

- (void)onMessageReadByMeWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                        withLong:(jlong)startDate {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self ownReadActor])) sendWithId:[[ImActorModelModulesMessagesOwnReadActor_MessageReadByMe alloc] initWithAMPeer:peer withLong:startDate]];
}

- (void)onMessageEncryptedReadByMeWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                                 withLong:(jlong)rid {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self ownReadActor])) sendWithId:[[ImActorModelModulesMessagesOwnReadActor_MessageReadByMeEncrypted alloc] initWithAMPeer:peer withLong:rid]];
}

- (void)onMessageDeleteWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                              withJavaUtilList:(id<JavaUtilList>)rids {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_MessagesDeleted alloc] initWithJavaUtilList:rids]];
  [((DKActorRef *) nil_chk([self ownReadActor])) sendWithId:[[ImActorModelModulesMessagesOwnReadActor_MessageDeleted alloc] initWithAMPeer:peer withJavaUtilList:rids]];
}

- (void)onMessageSentWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer
                                    withLong:(jlong)rid
                                    withLong:(jlong)date {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_MessageSent alloc] initWithLong:rid withLong:date]];
  [((DKActorRef *) nil_chk([self sendActor])) sendWithId:[[ImActorModelModulesMessagesSenderActor_MessageSent alloc] initWithAMPeer:peer withLong:rid]];
  [((DKActorRef *) nil_chk([self ownReadActor])) sendWithId:[[ImActorModelModulesMessagesOwnReadActor_NewOutMessage alloc] initWithAMPeer:peer withLong:rid withLong:date withBoolean:NO]];
}

- (void)onChatClearWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_ClearConversation alloc] init]];
}

- (void)onChatDeleteWithImActorModelApiPeer:(ImActorModelApiPeer *)_peer {
  AMPeer *peer = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(_peer);
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:[[ImActorModelModulesMessagesConversationActor_DeleteConversation alloc] init]];
}

- (void)onUserRegisteredWithInt:(jint)uid
                       withLong:(jlong)date {
  jlong rid = ImActorModelModulesUtilsRandomUtils_nextRid();
  AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:uid withAMMessageStateEnum:AMMessageStateEnum_get_UNKNOWN() withAMAbsContent:[[AMServiceUserRegistered alloc] init]];
  [((DKActorRef *) nil_chk([self ownReadActor])) sendWithId:[[ImActorModelModulesMessagesOwnReadActor_NewMessage alloc] initWithAMPeer:[[AMPeer alloc] initWithAMPeerTypeEnum:AMPeerTypeEnum_get_PRIVATE() withInt:uid] withLong:rid withLong:date withBoolean:NO]];
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:AMPeer_userWithInt_(uid)])) sendWithId:message];
}

@end

void ImActorModelModulesUpdatesMessagesProcessor_onMessageWithAMPeer_withInt_withLong_withLong_withAMAbsContent_(ImActorModelModulesUpdatesMessagesProcessor *self, AMPeer *peer, jint senderUid, jlong date, jlong rid, AMAbsContent *msgContent) {
  jboolean isOut = [self myUid] == senderUid;
  AMMessage *message = [[AMMessage alloc] initWithLong:rid withLong:date withLong:date withInt:senderUid withAMMessageStateEnum:isOut ? AMMessageStateEnum_get_SENT() : AMMessageStateEnum_get_UNKNOWN() withAMAbsContent:msgContent];
  [((DKActorRef *) nil_chk([self conversationActorWithAMPeer:peer])) sendWithId:message];
  if (!isOut) {
    [((DKActorRef *) nil_chk([self ownReadActor])) sendWithId:[[ImActorModelModulesMessagesOwnReadActor_NewMessage alloc] initWithAMPeer:peer withLong:rid withLong:date withBoolean:NO]];
    [((ImActorModelModulesNotifications *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getNotifications])) onInMessageWithAMPeer:peer withInt:senderUid withLong:date withAMContentDescription:AMContentDescription_fromContentWithAMAbsContent_([message getContent])];
    [((DKActorRef *) nil_chk([self plainReceiveActor])) sendWithId:[[ImActorModelModulesMessagesPlainReceiverActor_MarkReceived alloc] initWithAMPeer:peer withLong:date]];
  }
  else {
    [((DKActorRef *) nil_chk([self ownReadActor])) sendWithId:[[ImActorModelModulesMessagesOwnReadActor_NewOutMessage alloc] initWithAMPeer:peer withLong:rid withLong:date withBoolean:NO]];
  }
}

jint ImActorModelModulesUpdatesMessagesProcessor_readIntWithByteArray_withInt_(IOSByteArray *bytes, jint offset) {
  ImActorModelModulesUpdatesMessagesProcessor_init();
  jint a = IOSByteArray_Get(nil_chk(bytes), offset) & (jint) 0xFF;
  jint b = IOSByteArray_Get(bytes, offset + 1) & (jint) 0xFF;
  jint c = IOSByteArray_Get(bytes, offset + 2) & (jint) 0xFF;
  jint d = IOSByteArray_Get(bytes, offset + 3) & (jint) 0xFF;
  return d + (LShift32(c, 8)) + (LShift32(b, 16)) + (LShift32(a, 24));
}

IOSByteArray *ImActorModelModulesUpdatesMessagesProcessor_substringWithByteArray_withInt_withInt_(IOSByteArray *src, jint start, jint len) {
  ImActorModelModulesUpdatesMessagesProcessor_init();
  IOSByteArray *res = [IOSByteArray newArrayWithLength:len];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(src, start, res, 0, len);
  return res;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesMessagesProcessor)
