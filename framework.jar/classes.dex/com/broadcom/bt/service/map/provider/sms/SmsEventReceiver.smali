.class public Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsEventReceiver.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;
    }
.end annotation


# static fields
.field protected static final ACTION_MESSAGE_DELETED_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT"

.field protected static final ACTION_MESSAGE_SENT_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_SENT_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

.field protected static final ACTION_MMSAPP_MESSAGE_SENT:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field protected static final ACTION_MMSAPP_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

.field public static final D:Z = true

.field protected static final MMSAPP_MSG_STATUS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver"

.field protected static final MMSAPP_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field protected static final MMSAPP_SMS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.mms.transaction.SmsReceiver"

.field private static final ORDER_BY_SMS_RECEIVED:Ljava/lang/String; = "_id DESC "

.field private static final PROJECTION_SMS_RECEIVED:[Ljava/lang/String; = null

.field private static final SELECTION_SMS_RECEIVED:Ljava/lang/String; = "type = 1 AND protocol = ? AND address = ? AND body = ?"

.field public static final TAG:Ljava/lang/String; = "MAP.SmsEventReceiver"



# instance fields
.field final intentExtraName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 95
    const-string v0, "MapURI"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->intentExtraName:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    .line 115
    iget-object v0, p1, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    return-void
.end method

.method private processMessageDeletedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "SMS"

    const-string v5, "MAP.SmsEventReceiver"

    .line 156
    const-string v2, "MAP.SmsEventReceiver"

    const-string/jumbo v2, "processMessageDeletedAction()"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "deletedMessageId"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 164
    .local v0, lMsgId:Ljava/lang/Long;
    const-string v2, "deletedFolderId"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 165
    .local v1, nMboxId:I
    const-string v2, "MAP.SmsEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMessageDeletedAction() lMsgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MBoxId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v2

    if-nez v2, :cond_61

    .line 168
    const-string v2, "MAP.SmsEventReceiver"

    const-string v2, "MAP notification not enabled...Skipping event but deleting message id from map"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v3, "SMS"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeleteFromMAPOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_60
    return-void

    .line 174
    :cond_61
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v3, "SMS"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60
.end method

.method private processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .registers 16
    .parameter "ctx"
    .parameter "msg"
    .parameter "retryCount"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    const-string v11, "MAP.SmsEventReceiver"

    .line 252
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 253
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 254
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, -0x1

    .line 255
    .local v9, messageId:I
    const/4 v7, 0x0

    .line 257
    .local v7, hasError:Z
    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 258
    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 259
    const-string v0, ""

    aput-object v0, v4, v2

    .line 260
    const/4 v8, 0x0

    .local v8, i:I
    :goto_24
    array-length v0, p2

    if-ge v8, v0, :cond_45

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v8

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 260
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 266
    :cond_45
    :try_start_45
    const-string v0, "MAP.SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying for SMS inbox message: protocol identifier= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", originating address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disaplay message body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    const-string/jumbo v3, "type = 1 AND protocol = ? AND address = ? AND body = ?"

    const-string v5, "_id DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    if-eqz v6, :cond_ab

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 273
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_a1} :catch_b3

    move-result v9

    .line 283
    :goto_a2
    if-eqz v6, :cond_a8

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 285
    const/4 v6, 0x0

    .line 287
    :cond_a8
    if-eqz v7, :cond_be

    .line 303
    :goto_aa
    return-void

    .line 276
    :cond_ab
    :try_start_ab
    const-string v0, "MAP.SmsEventReceiver"

    const-string v1, "Querying for SMS inbox message: Either cursor is null or no rows returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b2} :catch_b3

    goto :goto_a2

    .line 279
    :catch_b3
    move-exception v0

    move-object v10, v0

    .line 280
    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "MAP.SmsEventReceiver"

    const-string v0, "Error querying database"

    invoke-static {v11, v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v7, 0x1

    goto :goto_a2

    .line 292
    .end local v10       #t:Ljava/lang/Throwable;,
    :cond_be
    const-string v0, "MAP.SmsEventReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, -0x1

    if-eq v9, v0, :cond_e7

    .line 295
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v1, "SMS"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/inbox"

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa

    .line 297
    :cond_e7
    const/4 v0, 0x5

    if-ge p3, v0, :cond_f9

    .line 298
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_aa

    .line 301
    :cond_f9
    const-string v0, "MAP.SmsEventReceiver"

    const-string v0, "Unable to process SMS receive. Retry count exceeded."

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa
.end method

.method private processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "ctx"
    .parameter "intent"

    .prologue
    const-string v7, "MAP.SmsEventReceiver"

    .line 222
    const-string v5, "MAP.SmsEventReceiver"

    const-string/jumbo v5, "processMessageReceivedAction()"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 227
    const-string v5, "MAP.SmsEventReceiver"

    const-string v5, "MAP notification not enabled...Skipping event"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_19
    return-void

    .line 233
    :cond_1a
    const/4 v3, 0x0

    .line 234
    .local v3, pdus:[Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 235
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_34

    const-string/jumbo v5, "pdus"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    if-eqz v3, :cond_34

    array-length v5, v3

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3c

    .line 237
    :cond_34
    const-string v5, "MAP.SmsEventReceiver"

    const-string v5, "Unable to get pdus. Not processing SMS received event"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 241
    :cond_3c
    array-length v5, v3

    new-array v4, v5, [Landroid/telephony/SmsMessage;

    .line 242
    .local v4, smsMessages:[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_40
    array-length v5, v3

    if-ge v2, v5, :cond_52

    .line 243
    aget-object v5, v3, v2

    check-cast v5, [B

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v4, v2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 247
    :cond_52
    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    goto :goto_19
.end method

.method private processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "SMS"

    const-string v5, "MAP.SmsEventReceiver"

    .line 178
    const-string v3, "MAP.SmsEventReceiver"

    const-string/jumbo v3, "processMessageSentAction()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v3, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->sendMmsAppMessageSentEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 185
    :cond_1b
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 187
    const-string v3, "MAP.SmsEventReceiver"

    const-string v3, "MAP notification not enabled...Skipping event"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_2a
    return-void

    .line 192
    :cond_2b
    const/4 v0, 0x0

    .line 193
    .local v0, messageId:Ljava/lang/String;
    const-string v3, "MapURI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 194
    .local v1, messageUri:Landroid/net/Uri;
    if-nez v1, :cond_3e

    .line 195
    const-string v3, "MAP.SmsEventReceiver"

    const-string v3, "Unable to get Message URI for message"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 198
    :cond_3e
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->getResultCode()I

    move-result v2

    .line 201
    .local v2, resultCode:I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_6b

    .line 203
    const-string v3, "MAP.SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message sent successfully. MessageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS"

    const-string v4, "/outbox"

    invoke-virtual {v3, v6, v0, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 208
    :cond_6b
    const-string v3, "MAP.SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". ResultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ErrorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "errorCode"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS"

    const-string v4, "/failed"

    invoke-virtual {v3, v6, v0, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    const-string v2, "MAP.SmsEventReceiver"

    const-string/jumbo v3, "processMessageStatusReceivedAction()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v2, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 312
    invoke-direct/range {p0 .. p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->sendMmsAppMessageStatusReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 315
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 317
    const-string v2, "MAP.SmsEventReceiver"

    const-string v3, "MAP notification not enabled...Skipping event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local p1       
    :goto_29
    return-void

    .line 323
    .restart local p1       
    :cond_2a
    const-string v2, "MapURI"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 324
    .local v3, messageUri:Landroid/net/Uri;
    if-nez v3, :cond_3f

    .line 325
    const-string v2, "MAP.SmsEventReceiver"

    const-string v3, "Unable to process message status. Invalid messageUri"

    .end local v3       #messageUri:Landroid/net/Uri;,
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 328
    .restart local v3       #messageUri:Landroid/net/Uri;,
    :cond_3f
    const-string v2, "MAP.SmsEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got message URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v10, -0x1

    .line 330
    .local v10, folderType:I
    const/4 v8, 0x0

    .line 332
    .local v8, c:Landroid/database/Cursor;
    :try_start_5d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 334
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 335
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_7b} :catch_a1

    move-result v10

    .line 340
    :cond_7c
    :goto_7c
    if-eqz v8, :cond_82

    .line 341
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 342
    const/4 v8, 0x0

    .line 345
    :cond_82
    invoke-static {v10}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, folderPath:Ljava/lang/String;
    if-nez v9, :cond_ab

    .line 347
    const-string v2, "MAP.SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3       #messageUri:Landroid/net/Uri;,
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid folder path for folder type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 337
    .end local v9       #folderPath:Ljava/lang/String;,
    .restart local v3       #messageUri:Landroid/net/Uri;,
    :catch_a1
    move-exception v2

    move-object v15, v2

    .line 338
    .local v15, t:Ljava/lang/Throwable;
    const-string v2, "MAP.SmsEventReceiver"

    const-string v4, "Error querying database"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    .line 350
    .end local v15       #t:Ljava/lang/Throwable;,
    .restart local v9       #folderPath:Ljava/lang/String;,
    :cond_ab
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 352
    .local v12, messageId:Ljava/lang/String;
    const-string/jumbo v2, "pdu"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1       
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 353
    .local v13, pdu:[B
    if-eqz v13, :cond_fc

    .line 355
    invoke-static {v13}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v11

    .line 356
    .local v11, message:Landroid/telephony/SmsMessage;
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v14

    .line 357
    .local v14, status:I
    if-nez v14, :cond_d8

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v2, v0

    const-string v3, "SMS"

    .end local v3       #messageUri:Landroid/net/Uri;,
    invoke-virtual {v2, v3, v12, v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 360
    .restart local v3       #messageUri:Landroid/net/Uri;,
    :cond_d8
    const-string v2, "MAP.SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3       #messageUri:Landroid/net/Uri;,
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deliverying message. ErrorCode= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v2, v0

    const-string v3, "SMS"

    invoke-virtual {v2, v3, v12, v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 365
    .end local v11       #message:Landroid/telephony/SmsMessage;,
    .end local v14       #status:I,
    .restart local v3       #messageUri:Landroid/net/Uri;,
    :cond_fc
    const-string v2, "MAP.SmsEventReceiver"

    const-string v3, "Got delivery report with no pdus"

    .end local v3       #messageUri:Landroid/net/Uri;,
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29
.end method

.method private sendMmsAppMessageSentEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "errorCode"

    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 371
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.SmsReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v1, "errorCode"

    const-string v1, "errorCode"

    const/4 v1, 0x0

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v1, "MapURI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method private sendMmsAppMessageStatusReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 380
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.MessageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v1, "MapURI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    return-void
.end method


# virtual methods
.method public createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .parameter "filter"

    .prologue
    .line 142
    if-nez p1, :cond_7

    .line 143
    new-instance p1, Landroid/content/IntentFilter;

    .end local p1       
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .restart local p1       
    :cond_7
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "MAP.SmsEventReceiver"

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, action:Ljava/lang/String;
    const-string v1, "MAP.SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 139
    :goto_29
    return-void

    .line 125
    :cond_2a
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_29

    .line 127
    :cond_36
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_29

    .line 129
    :cond_42
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_29

    .line 131
    :cond_4e
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_29

    .line 133
    :cond_5a
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageDeletedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_29

    .line 137
    :cond_66
    const-string v1, "MAP.SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to process action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
