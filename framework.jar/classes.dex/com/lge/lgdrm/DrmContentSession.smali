.class public final Lcom/lge/lgdrm/DrmContentSession;
.super Ljava/lang/Object;
.source "DrmContentSession.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "DrmCntSes"



# instance fields
.field private contentList:[Lcom/lge/lgdrm/DrmContent;

.field private context:Landroid/content/Context;

.field private defaultContent:Lcom/lge/lgdrm/DrmContent;

.field private nativeSession:I

.field private nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private selectedContent:Lcom/lge/lgdrm/DrmContent;



# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V
    .registers 3
    .parameter "content"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 566
    iput-object p2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    .line 567
    return-void
.end method

.method private activateContent(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "url"
    .parameter "resultReceiver"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v7, "com.lge.lgdrm.extra.FILE_NAME"

    .line 1631
    invoke-virtual {p0, v6}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v1

    .line 1632
    .local v1, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v1, :cond_c

    move v3, v5

    .line 1701
    :goto_b
    return v3

    .line 1637
    :cond_c
    if-nez p1, :cond_10

    move v3, v5

    .line 1639
    goto :goto_b

    .line 1642
    :cond_10
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_1d

    .line 1644
    const-string v3, "DrmCntSes"

    const-string v4, "Use activity context instead"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_1d
    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    const/16 v4, 0x3000

    if-ne v3, v4, :cond_5b

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_5b

    .line 1655
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.lgdrm.action.DRM_ACTIVATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1656
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_36

    move v3, v5

    .line 1658
    goto :goto_b

    .line 1661
    :cond_36
    const-string v3, "com.lge.lgdrm.extra.ACTIVATION_URL"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    const-string v3, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, v1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1663
    const-string v3, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1664
    const-string v3, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1665
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 1667
    goto :goto_b

    .line 1671
    .end local v2       #intent:Landroid/content/Intent;,
    :cond_5b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1672
    .restart local v2       #intent:Landroid/content/Intent;,
    if-nez v2, :cond_66

    move v3, v5

    .line 1674
    goto :goto_b

    .line 1678
    :cond_66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1679
    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1683
    const-string v3, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, v1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1685
    if-eqz p2, :cond_91

    .line 1688
    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, component:[Ljava/lang/String;
    if-nez v0, :cond_8c

    move v3, v5

    .line 1691
    goto :goto_b

    .line 1694
    :cond_8c
    const-string v3, "com.lge.lgdrm.extra.RECEIVER_NAME"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1698
    .end local v0       #component:[Ljava/lang/String;,
    :cond_91
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 1701
    goto/16 :goto_b
.end method

.method public static getDrmTimeStatus(I)Z
    .registers 5
    .parameter "agentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 932
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_8

    move v1, v2

    .line 943
    :goto_7
    return v1

    .line 937
    :cond_8
    if-lt p0, v3, :cond_e

    const/16 v1, 0x8

    if-le p0, v1, :cond_16

    .line 939
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid agentType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 942
    :cond_16
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDrmTimeStatus(I)I

    move-result v0

    .line 943
    .local v0, status:I
    if-nez v0, :cond_1e

    move v1, v3

    goto :goto_7

    :cond_1e
    move v1, v2

    goto :goto_7
.end method

.method private native nativeActivateContent(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private native nativeConsumeRight(Ljava/lang/String;IIIJJ)I
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private static native nativeDrmOpen(Ljava/lang/String;II[B)I
.end method

.method private native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private native nativeGetContentList(Ljava/lang/String;)[Lcom/lge/lgdrm/DrmContent;
.end method

.method private native nativeGetDecryptionInfo(ILjava/lang/String;II)[B
.end method

.method private native nativeGetDrmTime()J
.end method

.method private static native nativeGetDrmTimeStatus(I)I
.end method

.method private native nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetRightInfo(Lcom/lge/lgdrm/DrmRight;Ljava/lang/String;III)I
.end method

.method private native nativeIsSettingsAvailable(Ljava/lang/String;II)I
.end method

.method private native nativeJudgeRight(Ljava/lang/String;III)I
.end method

.method private native nativeSetDecryptionInfo(ZILjava/lang/String;II)I
.end method

.method private static native nativeSetDrmTime(IJ)I
.end method

.method private native nativeSyncDrmTime(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static openDrmStream(Ljava/lang/String;[B)Lcom/lge/lgdrm/DrmStream;
    .registers 6
    .parameter "filename"
    .parameter "decInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1406
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_8

    move-object v1, v3

    .line 1426
    :goto_7
    return-object v1

    .line 1411
    :cond_8
    if-nez p0, :cond_12

    .line 1413
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter filename is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1415
    :cond_12
    if-nez p1, :cond_1c

    .line 1417
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter decInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1420
    :cond_1c
    invoke-static {p0, v2, v2, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;II[B)I

    move-result v0

    .line 1421
    .local v0, nativeHandle:I
    if-nez v0, :cond_24

    move-object v1, v3

    .line 1423
    goto :goto_7

    .line 1426
    :cond_24
    new-instance v1, Lcom/lge/lgdrm/DrmStream;

    invoke-direct {v1, p0, v0}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;I)V

    goto :goto_7
.end method

.method public static setDrmTime(IJ)I
    .registers 5
    .parameter "agentType"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1038
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 1040
    const/4 v0, -0x1

    .line 1057
    :goto_5
    return v0

    .line 1043
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1045
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_14
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x8

    if-le p0, v0, :cond_23

    .line 1050
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid agentType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_23
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_31

    .line 1054
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_31
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->nativeSetDrmTime(IJ)I

    move-result v0

    goto :goto_5
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .registers 7
    .parameter "session"
    .parameter "requestType"
    .parameter "httpMethod"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 1722
    iput p1, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1725
    new-instance v0, Lcom/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 1726
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_f

    .line 1728
    const/4 v0, -0x1

    .line 1735
    :goto_e
    return v0

    .line 1730
    :cond_f
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 1731
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 1732
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 1733
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    .line 1735
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private startDldClient(Lcom/lge/lgdrm/DrmContent;)I
    .registers 11
    .parameter "content"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1751
    iget v3, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    move v1, v6

    .line 1753
    .local v1, downloadAgent:I
    :goto_a
    new-instance v2, Lcom/lge/lgdrm/DrmObjectSession;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    iget v4, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {v2, v1, v3, v4}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    .line 1754
    .local v2, session:Lcom/lge/lgdrm/DrmObjectSession;
    if-nez v2, :cond_23

    .line 1756
    iget v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {p0, v3, v6}, Lcom/lge/lgdrm/DrmContentSession;->nativeDestroySession(II)V

    .line 1757
    iput v5, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1758
    iput-object v7, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    move v3, v8

    .line 1782
    :goto_1f
    return v3

    .line 1751
    .end local v1       #downloadAgent:I,
    .end local v2       #session:Lcom/lge/lgdrm/DrmObjectSession;,
    :cond_20
    const/4 v3, 0x4

    move v1, v3

    goto :goto_a

    .line 1765
    .restart local v1       #downloadAgent:I,
    .restart local v2       #session:Lcom/lge/lgdrm/DrmObjectSession;,
    :cond_23
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmDldClient;-><init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 1766
    .local v0, dldClient:Lcom/lge/lgdrm/DrmDldClient;
    if-nez v0, :cond_39

    .line 1769
    iget v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {p0, v3, v6}, Lcom/lge/lgdrm/DrmContentSession;->nativeDestroySession(II)V

    .line 1770
    iput v5, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1771
    iput-object v7, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    move v3, v8

    .line 1772
    goto :goto_1f

    .line 1776
    :cond_39
    iput v5, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1777
    iput-object v7, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 1780
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmDldClient;->start()V

    move v3, v5

    .line 1782
    goto :goto_1f
.end method


# virtual methods
.method public consumeRight(JJ)I
    .registers 15
    .parameter "startTime"
    .parameter "usedTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    const-string v3, "Invalid time"

    .line 1217
    cmp-long v0, p1, v1

    if-ltz v0, :cond_c

    cmp-long v0, p3, v1

    if-gez v0, :cond_14

    .line 1219
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_14
    cmp-long v0, p1, v1

    if-nez v0, :cond_24

    cmp-long v0, p3, v1

    if-nez v0, :cond_24

    .line 1223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v9

    .line 1227
    .local v9, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v9, :cond_2d

    .line 1229
    const/4 v0, -0x1

    .line 1238
    :goto_2c
    return v0

    .line 1232
    :cond_2d
    iget v0, v9, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_3e

    iget-boolean v0, v9, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_3e

    .line 1235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Select Right first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1238
    :cond_3e
    iget-object v1, v9, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, v9, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v3, v9, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iget v4, v9, Lcom/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/lge/lgdrm/DrmContentSession;->nativeConsumeRight(Ljava/lang/String;IIIJJ)I

    move-result v0

    goto :goto_2c
.end method

.method public destroySession()V
    .registers 1

    .prologue
    .line 589
    return-void
.end method

.method public getContent(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContent;
    .registers 7
    .parameter "cid"

    .prologue
    const/4 v4, 0x0

    .line 605
    if-nez p1, :cond_b

    .line 607
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter cid is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_b
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v2, :cond_11

    move-object v2, v4

    .line 640
    :goto_10
    return-object v2

    .line 614
    :cond_11
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v2, v2, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    move-object v2, v4

    .line 616
    goto :goto_10

    .line 619
    :cond_1a
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v2, v2, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 620
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    move-object v2, v4

    .line 622
    goto :goto_10

    .line 629
    :cond_27
    new-instance v0, Lcom/lge/lgdrm/DrmContent;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v2, v2, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v3, v3, Lcom/lge/lgdrm/DrmContent;->contentType:I

    invoke-direct {v0, v2, v1, v3}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 630
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_38

    move-object v2, v4

    .line 632
    goto :goto_10

    .line 635
    :cond_38
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v2, v2, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_44

    move-object v2, v4

    .line 637
    goto :goto_10

    :cond_44
    move-object v2, v0

    .line 640
    goto :goto_10
.end method

.method public getContentList()[Lcom/lge/lgdrm/DrmContent;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 652
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v1, :cond_8

    move-object v1, v4

    .line 702
    :goto_7
    return-object v1

    .line 658
    :cond_8
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    if-eqz v1, :cond_1f

    .line 660
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v1, v1

    new-array v0, v1, [Lcom/lge/lgdrm/DrmContent;

    .line 661
    .local v0, list:[Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_15

    move-object v1, v4

    .line 664
    goto :goto_7

    .line 668
    :cond_15
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 669
    goto :goto_7

    .line 672
    .end local v0       #list:[Lcom/lge/lgdrm/DrmContent;,
    :cond_1f
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v1, v1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_33

    .line 674
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/lge/lgdrm/DrmContent;

    .line 675
    .restart local v0       #list:[Lcom/lge/lgdrm/DrmContent;,
    if-nez v0, :cond_2d

    move-object v1, v4

    .line 678
    goto :goto_7

    .line 680
    :cond_2d
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    aput-object v1, v0, v3

    move-object v1, v0

    .line 682
    goto :goto_7

    .line 685
    .end local v0       #list:[Lcom/lge/lgdrm/DrmContent;,
    :cond_33
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v1, v1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentList(Ljava/lang/String;)[Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 686
    .restart local v0       #list:[Lcom/lge/lgdrm/DrmContent;,
    if-nez v0, :cond_3f

    move-object v1, v4

    .line 688
    goto :goto_7

    .line 691
    :cond_3f
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    aput-object v1, v0, v3

    .line 693
    array-length v1, v0

    new-array v1, v1, [Lcom/lge/lgdrm/DrmContent;

    iput-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    .line 694
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    if-nez v1, :cond_4e

    move-object v1, v4

    .line 696
    goto :goto_7

    .line 700
    :cond_4e
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 702
    goto :goto_7
.end method

.method public getDecryptionInfo()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1444
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1446
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1449
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1450
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_17

    .line 1452
    const/4 v1, 0x0

    .line 1461
    :goto_16
    return-object v1

    .line 1455
    :cond_17
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_28

    iget-boolean v1, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v1, :cond_28

    .line 1458
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1461
    :cond_28
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v2, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDecryptionInfo(ILjava/lang/String;II)[B

    move-result-object v1

    goto :goto_16
.end method

.method public getDrmTime()J
    .registers 3

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDrmTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRightList(I)[Lcom/lge/lgdrm/DrmRight;
    .registers 4
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 802
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x80

    if-le p1, v0, :cond_f

    .line 804
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rights selection is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;
    .registers 4
    .parameter "defaults"

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, temp:Lcom/lge/lgdrm/DrmContent;
    if-eqz p1, :cond_6

    .line 760
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 774
    :goto_5
    return-object v0

    .line 764
    :cond_6
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v1, :cond_d

    .line 766
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    goto :goto_5

    .line 770
    :cond_d
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    goto :goto_5
.end method

.method public getSelectedRight(Z)Lcom/lge/lgdrm/DrmRight;
    .registers 10
    .parameter "defaults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 878
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 879
    .local v6, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v6, :cond_a

    move-object v0, v7

    .line 902
    :goto_9
    return-object v0

    .line 884
    :cond_a
    iget v0, v6, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v0, v2, :cond_1b

    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_1b

    .line 887
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_1b
    new-instance v1, Lcom/lge/lgdrm/DrmRight;

    invoke-direct {v1, v6}, Lcom/lge/lgdrm/DrmRight;-><init>(Lcom/lge/lgdrm/DrmContent;)V

    .line 891
    .local v1, right:Lcom/lge/lgdrm/DrmRight;
    if-nez v1, :cond_24

    move-object v0, v7

    .line 893
    goto :goto_9

    .line 896
    :cond_24
    iget-object v2, v6, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v6, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v6, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iget v5, v6, Lcom/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetRightInfo(Lcom/lge/lgdrm/DrmRight;Ljava/lang/String;III)I

    move-result v0

    if-eqz v0, :cond_35

    move-object v0, v7

    .line 899
    goto :goto_9

    :cond_35
    move-object v0, v1

    .line 902
    goto :goto_9
.end method

.method public isActionSupported(I)Z
    .registers 10
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1261
    const/4 v1, -0x1

    .line 1264
    .local v1, retVal:I
    if-lt p1, v4, :cond_b

    const/16 v2, 0x8

    if-le p1, v2, :cond_13

    .line 1266
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid action"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1269
    :cond_13
    invoke-virtual {p0, v5}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1270
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1b

    move v2, v5

    .line 1348
    :goto_1a
    return v2

    .line 1275
    :cond_1b
    packed-switch p1, :pswitch_data_8e

    .line 1343
    :cond_1e
    :goto_1e
    const/4 v2, -0x1

    if-ne v1, v2, :cond_8c

    move v2, v5

    .line 1345
    goto :goto_1a

    .line 1278
    :pswitch_23
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2c

    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v2, v7, :cond_2e

    .line 1281
    :cond_2c
    const/4 v1, -0x1

    goto :goto_1e

    .line 1283
    :cond_2e
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1e

    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1e

    .line 1286
    const/4 v1, 0x0

    goto :goto_1e

    .line 1293
    :pswitch_3c
    iget-object v2, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v2, v3, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeIsSettingsAvailable(Ljava/lang/String;II)I

    move-result v1

    .line 1294
    if-nez v1, :cond_1e

    .line 1296
    if-eq p1, v6, :cond_4b

    const/4 v2, 0x4

    if-ne p1, v2, :cond_50

    .line 1298
    :cond_4b
    iput v4, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 1304
    :cond_4d
    :goto_4d
    iput-boolean v4, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    goto :goto_1e

    .line 1300
    :cond_50
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4d

    .line 1302
    iput v6, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    goto :goto_4d

    .line 1309
    :pswitch_56
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v4, :cond_62

    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v6, :cond_62

    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v2, v7, :cond_1e

    .line 1313
    :cond_62
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v2, v4, :cond_74

    .line 1315
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v3, 0x300

    if-eq v2, v3, :cond_72

    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v3, 0x301

    if-ne v2, v3, :cond_1e

    .line 1318
    :cond_72
    const/4 v1, 0x0

    goto :goto_1e

    .line 1323
    :cond_74
    const/4 v1, 0x0

    goto :goto_1e

    .line 1329
    :pswitch_76
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v2, v4, :cond_1e

    .line 1331
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v3, 0x51

    if-eq v2, v3, :cond_86

    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1e

    .line 1334
    :cond_86
    const/4 v1, 0x0

    goto :goto_1e

    :pswitch_88
    move v2, v5

    .line 1339
    goto :goto_1a

    :pswitch_8a
    move v2, v5

    .line 1340
    goto :goto_1a

    :cond_8c
    move v2, v4

    .line 1348
    goto :goto_1a

    .line 1275
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_23
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_76
        :pswitch_88
        :pswitch_56
        :pswitch_8a
    .end packed-switch
.end method

.method public isValidSession()Z
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_a

    .line 579
    const/4 v0, 0x0

    .line 581
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public judgeRight(IZ)I
    .registers 9
    .parameter "permission"
    .parameter "checkPreviewURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1151
    const/4 v1, 0x0

    .line 1154
    .local v1, preview:I
    if-lt p1, v5, :cond_8

    const/16 v3, 0x80

    if-le p1, v3, :cond_10

    .line 1156
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid permission"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1159
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1160
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_19

    .line 1162
    const/4 v3, -0x1

    .line 1180
    :goto_18
    return v3

    .line 1165
    :cond_19
    if-eqz p2, :cond_22

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_22

    move v3, v5

    .line 1168
    goto :goto_18

    .line 1171
    :cond_22
    if-nez p2, :cond_28

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    if-ne v3, v5, :cond_29

    .line 1173
    :cond_28
    const/4 v1, 0x1

    .line 1176
    :cond_29
    iput p1, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 1177
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v4, v1, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeJudgeRight(Ljava/lang/String;III)I

    move-result v2

    .line 1178
    .local v2, retVal:I
    iput v2, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    move v3, v2

    .line 1180
    goto :goto_18
.end method

.method public obtainNewRight(ILandroid/content/ComponentName;)I
    .registers 10
    .parameter "type"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1524
    const/4 v2, 0x0

    .line 1528
    .local v2, retVal:I
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1530
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Rights renewal is not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1532
    :cond_11
    if-nez p2, :cond_1b

    .line 1534
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Parameter resultReceiver is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1536
    :cond_1b
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v3, :cond_27

    .line 1538
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "context is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1541
    :cond_27
    invoke-virtual {p0, v6}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1542
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_2f

    move v3, v6

    .line 1575
    :goto_2e
    return v3

    .line 1547
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1548
    .local v1, intentReceiver:Ljava/lang/String;
    if-nez v1, :cond_52

    move v3, v6

    .line 1550
    goto :goto_2e

    .line 1553
    :cond_52
    const/4 v3, 0x1

    if-ne p1, v3, :cond_63

    .line 1555
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v4, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeActivateContent(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1570
    :cond_5f
    :goto_5f
    if-gtz v2, :cond_7b

    move v3, v6

    .line 1572
    goto :goto_2e

    .line 1557
    :cond_63
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5f

    .line 1559
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1560
    if-lez v2, :cond_5f

    .line 1563
    const/4 v3, -0x1

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->startDldClient(Lcom/lge/lgdrm/DrmContent;)I

    move-result v4

    if-ne v3, v4, :cond_5f

    .line 1565
    const/4 v2, -0x1

    goto :goto_5f

    :cond_7b
    move v3, v2

    .line 1575
    goto :goto_2e
.end method

.method public openDrmStream()Lcom/lge/lgdrm/DrmStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1366
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1368
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need proper permission to access drm"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1371
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1372
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_18

    move-object v2, v5

    .line 1389
    :goto_17
    return-object v2

    .line 1377
    :cond_18
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_29

    iget-boolean v2, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v2, :cond_29

    .line 1380
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Select Right first"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1383
    :cond_29
    iget-object v2, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {v2, v3, v4, v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;II[B)I

    move-result v1

    .line 1384
    .local v1, nativeHandle:I
    if-nez v1, :cond_37

    move-object v2, v5

    .line 1386
    goto :goto_17

    .line 1389
    :cond_37
    new-instance v2, Lcom/lge/lgdrm/DrmStream;

    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;I)V

    goto :goto_17
.end method

.method public selectContent(Lcom/lge/lgdrm/DrmContent;)I
    .registers 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 725
    if-nez p1, :cond_a

    .line 727
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter content is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_a
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_10

    .line 732
    const/4 v0, -0x1

    .line 742
    :goto_f
    return v0

    .line 735
    :cond_10
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    invoke-virtual {v0, p1}, Lcom/lge/lgdrm/DrmContent;->isSibling(Lcom/lge/lgdrm/DrmContent;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid content to this session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_20
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    .line 742
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public selectRight(Lcom/lge/lgdrm/DrmRight;)I
    .registers 5
    .parameter "right"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 833
    if-nez p1, :cond_a

    .line 835
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter right is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 839
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_13

    .line 841
    const/4 v1, -0x1

    return v1

    .line 844
    :cond_13
    invoke-virtual {p1, v0}, Lcom/lge/lgdrm/DrmRight;->isMatched(Lcom/lge/lgdrm/DrmContent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 846
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid right to this session"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 849
    :cond_21
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights selection is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDecryptionInfo(Z)I
    .registers 9
    .parameter "reset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1482
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1484
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1487
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 1488
    .local v6, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v6, :cond_17

    .line 1490
    const/4 v0, -0x1

    .line 1499
    :goto_16
    return v0

    .line 1493
    :cond_17
    if-nez p1, :cond_2a

    iget v0, v6, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_2a

    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_2a

    .line 1496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Select Right first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1499
    :cond_2a
    iget v2, v6, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v3, v6, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v6, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v5, v6, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeSetDecryptionInfo(ZILjava/lang/String;II)I

    move-result v0

    goto :goto_16
.end method

.method public syncDrmTime(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 969
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_f

    .line 971
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need proper permission to access drm"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 974
    :cond_f
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 976
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Time sync is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 978
    :cond_1e
    if-nez p1, :cond_28

    .line 980
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter resultReceiver is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    :cond_28
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v2, :cond_34

    .line 984
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 987
    :cond_34
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_43

    .line 989
    const-string v2, "DrmCntSes"

    const-string v3, "Use activity context instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1011
    :goto_42
    return v2

    .line 994
    :cond_43
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.lgdrm.action.DRM_SYNC_TIME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 995
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_4e

    move v2, v4

    .line 997
    goto :goto_42

    .line 1000
    :cond_4e
    invoke-virtual {p0, v4}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1001
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_56

    move v2, v4

    .line 1003
    goto :goto_42

    .line 1006
    :cond_56
    const-string v2, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    const-string v2, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    const-string v2, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1011
    const/4 v2, 0x1

    goto :goto_42
.end method

.method public uploadRight(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1597
    if-nez p1, :cond_b

    .line 1599
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter resultReceiver is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1601
    :cond_b
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 1603
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1606
    :cond_17
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1607
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1e

    .line 1609
    return v2

    .line 1612
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights upload is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
