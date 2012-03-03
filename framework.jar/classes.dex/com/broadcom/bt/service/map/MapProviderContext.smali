.class public Lcom/broadcom/bt/service/map/MapProviderContext;
.super Ljava/lang/Object;
.source "MapProviderContext.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MAP.MapProviderContext"



# instance fields
.field mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

.field mFeatureMessageFilter:Z

.field mFeatureMessageOffsetBrowsing:Z

.field mFolderMappings:[Ljava/lang/String;

.field public mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

.field mMseInstanceId:I

.field mProviderDSDisplayName:Ljava/lang/String;

.field mProviderDSId:Ljava/lang/String;

.field mProviderDisplayName:Ljava/lang/String;

.field mProviderId:Ljava/lang/String;

.field mProviderRootPath:Ljava/lang/String;

.field mProviderType:B

.field mSessions:Ljava/util/Vector;



# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .registers 11
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"
    .parameter "callback"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const-string/jumbo v0, "root"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    .line 200
    new-instance v0, Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/MapMessageIdMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    .line 212
    iput-byte p1, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    .line 213
    iput-object p2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    .line 216
    iput-object p5, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    .line 217
    iput-boolean p6, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFeatureMessageFilter:Z

    .line 218
    iput-boolean p7, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFeatureMessageOffsetBrowsing:Z

    .line 219
    iput-object p8, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFolderMappings:[Ljava/lang/String;

    .line 220
    iput-object p9, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .line 221
    return-void
.end method


# virtual methods
.method declared-synchronized addSession(ILjava/lang/String;)V
    .registers 10
    .parameter "session_id"
    .parameter "dev_name"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    new-instance v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;-><init>(Lcom/broadcom/bt/service/map/MapProviderContext;Lcom/broadcom/bt/service/map/MapProviderContext;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 240
    monitor-exit p0

    return-void

    .line 239
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMAPMsgId(Ljava/lang/String;)J
    .registers 6
    .parameter "sProviderMsgId"

    .prologue
    .line 306
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 307
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_17

    .line 310
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 311
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 313
    :cond_17
    return-wide v0
.end method

.method getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 290
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 291
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1c

    .line 293
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 294
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1c
    return-wide v0
.end method

.method getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "sProviderMsgId"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getFolderEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProviderMsgId(J)Ljava/lang/String;
    .registers 4
    .parameter "sMAPMsgId"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .registers 5
    .parameter "session_id"

    .prologue
    .line 253
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 254
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 255
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mSessionId:I
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_1e

    if-ne v2, p1, :cond_19

    move-object v2, v1

    .line 259
    .end local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :goto_17
    monitor-exit p0

    return-object v2

    .line 253
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 259
    .end local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_1c
    const/4 v2, 0x0

    goto :goto_17

    .line 253
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isEqual(BLjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 228
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method isEqual(Ljava/lang/String;B)Z
    .registers 4
    .parameter "provider_id"
    .parameter "provider_type"

    .prologue
    .line 233
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p2, v0, :cond_e

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method removeMAPMsgId(Ljava/lang/String;)V
    .registers 3
    .parameter "sProviderMsgId"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeEntry(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeFolderEntry(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method declared-synchronized removeSession(I)V
    .registers 5
    .parameter "session_id"

    .prologue
    .line 243
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 244
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 245
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mSessionId:I

    if-ne v2, p1, :cond_1d

    .line 246
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_20

    .line 250
    .end local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_1b
    monitor-exit p0

    return-void

    .line 243
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setMAPMsgFolder(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 271
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 272
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_17

    .line 275
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeFolderEntry(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_16
    return-wide v0

    .line 280
    :cond_17
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 281
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method
