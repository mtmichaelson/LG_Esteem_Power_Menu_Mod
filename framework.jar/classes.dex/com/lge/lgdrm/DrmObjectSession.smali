.class public final Lcom/lge/lgdrm/DrmObjectSession;
.super Ljava/lang/Object;
.source "DrmObjectSession.java"



# static fields
.field private static final PINIT_HND:I = 0x0

.field private static final PINIT_MAX:I = 0x2

.field private static final PINIT_SL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DrmObjSes"



# instance fields
.field bEndError:Z

.field private context:Landroid/content/Context;

.field private downloadAgent:I

.field private errorMsg:Ljava/lang/String;

.field private failReason:I

.field private nativeProcessHandle:I

.field private nativeSLType:I

.field private nativeSession:I

.field nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private redirectURL:Ljava/lang/String;

.field private storedFilename:Ljava/lang/String;

.field private validSession:Z

.field private waitFlag:Z



# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method protected constructor <init>(ILandroid/content/Context;I)V
    .registers 5
    .parameter "downloadAgent"
    .parameter "context"
    .parameter "session"

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    .line 310
    iput-object p2, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    .line 311
    iput p3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 314
    return-void
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeProcessEnd(IILjava/lang/String;)I
.end method

.method private native nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[I
.end method

.method private native nativeProcessStatus(I)I
.end method

.method private native nativeProcessUpdate(I[BII)I
.end method

.method private native nativeSetContentSize(IJ)I
.end method

.method private postWaitResult(Ljava/lang/String;IILjava/lang/String;)V
    .registers 21
    .parameter "resultReceiver"
    .parameter "result"
    .parameter "waitType"
    .parameter "filename"

    .prologue
    .line 1007
    const-string v13, "DrmObjSes"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "postWaitResult() : result = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " waitType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " filename = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-nez p1, :cond_41

    .line 1012
    const-string v13, "DrmObjSes"

    const-string/jumbo v14, "postWaitResult() : resultReceiver is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_40
    :goto_40
    return-void

    .line 1017
    :cond_41
    const-string v13, ";"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, component:[Ljava/lang/String;
    if-nez v3, :cond_55

    .line 1020
    const-string v13, "DrmObjSes"

    const-string/jumbo v14, "postWaitResult() : Fail to devide package;class"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1024
    :cond_55
    if-nez p4, :cond_60

    .line 1027
    const-string v13, "DrmObjSes"

    const-string/jumbo v14, "postWaitResult() : Filename is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1031
    :cond_60
    const/4 v4, 0x0

    .line 1034
    .local v4, content:Lcom/lge/lgdrm/DrmContent;
    :try_start_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object v13, v0

    move-object/from16 v0, p4

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v12

    .line 1035
    .local v12, session:Lcom/lge/lgdrm/DrmContentSession;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_71} :catch_8b

    move-result-object v4

    .line 1042
    .end local v12       #session:Lcom/lge/lgdrm/DrmContentSession;,
    :goto_72
    if-eqz v4, :cond_40

    .line 1048
    new-instance v13, Ljava/io/File;

    move-object v0, v13

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 1049
    .local v11, path:Landroid/net/Uri;
    if-nez v11, :cond_91

    .line 1051
    const-string v13, "DrmObjSes"

    const-string/jumbo v14, "postWaitResult() : Fail to make URI"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1037
    .end local v11       #path:Landroid/net/Uri;,
    :catch_8b
    move-exception v13

    move-object v8, v13

    .line 1039
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72

    .line 1056
    .end local v8       #e:Ljava/lang/Exception;,
    .restart local v11       #path:Landroid/net/Uri;,
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object v13, v0

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v14, v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1058
    const/4 v13, 0x0

    aget-object v13, v3, v13

    const-string v14, "com.android.providers.downloads"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 1061
    .local v5, downloadProvider:Z
    const/4 v13, 0x2

    move/from16 v0, p3

    move v1, v13

    if-eq v0, v1, :cond_b1

    if-eqz v5, :cond_102

    .line 1064
    :cond_b1
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.lge.lgdrm.action.DRM_PROCESS_RESULT"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v9, intent:Landroid/content/Intent;
    if-nez v9, :cond_c4

    .line 1067
    const-string v13, "DrmObjSes"

    const-string/jumbo v14, "postWaitResult() : Fail to new intent"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 1070
    :cond_c4
    const-string v13, "DrmObjSes"

    const-string/jumbo v14, "postWaitResult() : Intent (action wait result)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string v13, "com.lge.lgdrm.extra.WAIT_RESULT"

    move-object v0, v9

    move-object v1, v13

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v13, "com.lge.lgdrm.extra.WAIT_TYPE"

    move-object v0, v9

    move-object v1, v13

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    const-string v13, "com.lge.lgdrm.extra.FILE_NAME"

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v10, v9

    .line 1136
    .end local v9       #intent:Landroid/content/Intent;,
    .local v10, intent:Landroid/content/Intent;
    :goto_e8
    if-nez v5, :cond_f0

    const/4 v13, 0x2

    move/from16 v0, p3

    move v1, v13

    if-ne v0, v1, :cond_15e

    .line 1138
    :cond_f0
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f8} :catch_fa

    goto/16 :goto_40

    .line 1164
    :catch_fa
    move-exception v13

    move-object v8, v13

    move-object v9, v10

    .line 1167
    .end local v10       #intent:Landroid/content/Intent;,
    .restart local v8       #e:Ljava/lang/Exception;,
    .restart local v9       #intent:Landroid/content/Intent;,
    :goto_fd
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_40

    .line 1079
    .end local v8       #e:Ljava/lang/Exception;,
    .end local v9       #intent:Landroid/content/Intent;,
    :cond_102
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1080
    .restart local v9       #intent:Landroid/content/Intent;,
    if-nez v9, :cond_115

    .line 1082
    const-string v13, "DrmObjSes"

    const-string/jumbo v14, "postWaitResult() : Fail to new intent"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 1085
    :cond_115
    const-string v13, "DrmObjSes"

    const-string/jumbo v14, "postWaitResult() : Intent (action view)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v6, 0x0

    .line 1090
    .local v6, drmMime:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v7

    .line 1091
    .local v7, drmType:I
    and-int/lit8 v13, v7, 0x10

    if-eqz v13, :cond_13b

    .line 1093
    const-string v6, "application/vnd.oma.drm.message"

    .line 1109
    :goto_128
    invoke-virtual {v9, v11, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    invoke-virtual {v4}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v13

    packed-switch v13, :pswitch_data_1ae

    goto/16 :goto_40

    .line 1114
    :pswitch_134
    const-string v13, "com.lge.lgdrm.IMAGE_CATEGORY"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v10, v9

    .line 1115
    .end local v9       #intent:Landroid/content/Intent;,
    .restart local v10       #intent:Landroid/content/Intent;,
    goto :goto_e8

    .line 1095
    .end local v10       #intent:Landroid/content/Intent;,
    .restart local v9       #intent:Landroid/content/Intent;,
    :cond_13b
    and-int/lit16 v13, v7, 0x100

    if-eqz v13, :cond_142

    .line 1097
    const-string v6, "application/vnd.oma.drm.content"

    goto :goto_128

    .line 1099
    :cond_142
    and-int/lit16 v13, v7, 0x1000

    if-eqz v13, :cond_40

    .line 1101
    const-string v6, "application/vnd.oma.drm.dcf"

    goto :goto_128

    .line 1117
    :pswitch_149
    const-string v13, "com.lge.lgdrm.AUDIO_CATEGORY"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v10, v9

    .line 1118
    .end local v9       #intent:Landroid/content/Intent;,
    .restart local v10       #intent:Landroid/content/Intent;,
    goto :goto_e8

    .line 1120
    .end local v10       #intent:Landroid/content/Intent;,
    .restart local v9       #intent:Landroid/content/Intent;,
    :pswitch_150
    const-string v13, "com.lge.lgdrm.VIDEO_CATEGORY"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v10, v9

    .line 1121
    .end local v9       #intent:Landroid/content/Intent;,
    .restart local v10       #intent:Landroid/content/Intent;,
    goto :goto_e8

    .line 1123
    .end local v10       #intent:Landroid/content/Intent;,
    .restart local v9       #intent:Landroid/content/Intent;,
    :pswitch_157
    const-string v13, "com.lge.lgdrm.GAME_CATEGORY"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v10, v9

    .line 1124
    .end local v9       #intent:Landroid/content/Intent;,
    .restart local v10       #intent:Landroid/content/Intent;,
    goto :goto_e8

    .line 1143
    .end local v6       #drmMime:Ljava/lang/String;,
    .end local v7       #drmType:I,
    :cond_15e
    :try_start_15e
    invoke-virtual {v4}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v7

    .line 1144
    .restart local v7       #drmType:I,
    and-int/lit16 v13, v7, 0x100

    if-eqz v13, :cond_18e

    .line 1147
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.lge.lgdrm.action.RIGHTS_RECEIVED"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_16d} :catch_fa

    .line 1148
    .end local v10       #intent:Landroid/content/Intent;,
    .restart local v9       #intent:Landroid/content/Intent;,
    :try_start_16d
    const-string v13, "com.lge.lgdrm.extra.FILE_NAME"

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string v13, "com.lge.lgdrm.extra.CID"

    const/4 v14, 0x3

    invoke-virtual {v4, v14}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_188} :catch_18a

    goto/16 :goto_40

    .line 1164
    :catch_18a
    move-exception v13

    move-object v8, v13

    goto/16 :goto_fd

    .line 1154
    .end local v9       #intent:Landroid/content/Intent;,
    .restart local v10       #intent:Landroid/content/Intent;,
    :cond_18e
    :try_start_18e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    move v13, v0

    const/4 v14, 0x3

    if-eq v13, v14, :cond_40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    move v13, v0

    const/4 v14, 0x4

    if-eq v13, v14, :cond_40

    .line 1161
    const/high16 v13, 0x1000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1ab} :catch_fa

    move-object v9, v10

    .line 1168
    .end local v10       #intent:Landroid/content/Intent;,
    .restart local v9       #intent:Landroid/content/Intent;,
    goto/16 :goto_40

    .line 1111
    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_134
        :pswitch_149
        :pswitch_150
        :pswitch_157
    .end packed-switch
.end method

.method private setFailInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "failReason"
    .parameter "errorMsg"
    .parameter "redirectURL"

    .prologue
    .line 894
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->failReason:I

    .line 895
    iput-object p2, p0, Lcom/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 896
    iput-object p3, p0, Lcom/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    .line 897
    return-void
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .registers 7
    .parameter "session"
    .parameter "requestType"
    .parameter "httpMethod"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 927
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 930
    new-instance v0, Lcom/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 931
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_f

    .line 933
    const/4 v0, -0x1

    .line 941
    :goto_e
    return v0

    .line 936
    :cond_f
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 937
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 938
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 939
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    .line 941
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setStoredFilename(Ljava/lang/String;)V
    .registers 2
    .parameter "filename"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    .line 907
    return-void
.end method

.method private startDldClient()I
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 956
    iget v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19

    move v1, v6

    .line 958
    .local v1, downloadAgent:I
    :goto_9
    new-instance v2, Lcom/lge/lgdrm/DrmObjectSession;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    iget v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {v2, v1, v3, v4}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    .line 959
    .local v2, session:Lcom/lge/lgdrm/DrmObjectSession;
    if-nez v2, :cond_1c

    .line 962
    invoke-virtual {p0, v6}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move v3, v7

    .line 988
    :goto_18
    return v3

    .line 956
    .end local v1       #downloadAgent:I,
    .end local v2       #session:Lcom/lge/lgdrm/DrmObjectSession;,
    :cond_19
    const/4 v3, 0x4

    move v1, v3

    goto :goto_9

    .line 970
    .restart local v1       #downloadAgent:I,
    .restart local v2       #session:Lcom/lge/lgdrm/DrmObjectSession;,
    :cond_1c
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmDldClient;-><init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 971
    .local v0, dldClient:Lcom/lge/lgdrm/DrmDldClient;
    if-nez v0, :cond_2c

    .line 974
    invoke-virtual {p0, v6}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move v3, v7

    .line 975
    goto :goto_18

    .line 979
    :cond_2c
    iput v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 980
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 983
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmDldClient;->start()V

    .line 986
    iput-boolean v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    move v3, v5

    .line 988
    goto :goto_18
.end method


# virtual methods
.method public destroySession(I)V
    .registers 5
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 341
    if-ltz p1, :cond_6

    const/4 v0, 0x3

    if-le p1, v0, :cond_e

    .line 343
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_e
    if-nez p1, :cond_11

    .line 366
    :goto_10
    return-void

    .line 352
    :cond_11
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 353
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-eqz v0, :cond_21

    .line 356
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 364
    :cond_1c
    :goto_1c
    iput v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 365
    iput v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    goto :goto_10

    .line 358
    :cond_21
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_1c

    .line 361
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {p0, v0, p1}, Lcom/lge/lgdrm/DrmObjectSession;->nativeDestroySession(II)V

    goto :goto_1c
.end method

.method protected finalize()V
    .registers 3

    .prologue
    const-string v1, "DrmObjSes"

    .line 869
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-eqz v0, :cond_13

    .line 872
    const-string v0, "DrmObjSes"

    const-string v0, "finalize() : There still exists valid processing handle. Check impl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 881
    :cond_12
    :goto_12
    return-void

    .line 875
    :cond_13
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_12

    .line 878
    const-string v0, "DrmObjSes"

    const-string v0, "finalize() : There still exists valid session. Check impl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_12
.end method

.method public getFailInfo(I)Ljava/lang/String;
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_c

    .line 772
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 777
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 781
    :goto_11
    return-object v0

    .line 779
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 781
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    goto :goto_11

    .line 785
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailReason()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_c

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_c
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->failReason:I

    return v0
.end method

.method public getNextRequest()Lcom/lge/lgdrm/DrmDldRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 812
    .local v0, request:Lcom/lge/lgdrm/DrmDldRequest;
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_e

    .line 814
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_e
    if-nez v0, :cond_18

    .line 818
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not exist next message"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    :cond_18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 823
    return-object v0
.end method

.method public getStoredFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isValidSession()Z
    .registers 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    return v0
.end method

.method public processEnd(ILandroid/content/ComponentName;)I
    .registers 9
    .parameter "userResponse"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 652
    const/4 v0, 0x0

    .line 654
    .local v0, intentReceiver:Ljava/lang/String;
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v2, :cond_f

    .line 656
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Init was not called successfully"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    :cond_f
    if-lt p1, v4, :cond_14

    const/4 v2, 0x3

    if-le p1, v2, :cond_1c

    .line 660
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 662
    :cond_1c
    iget-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v2, :cond_2a

    if-eq p1, v4, :cond_2a

    .line 665
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse. Only permit PROC_RESP_CANCEL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_2a
    if-eqz p2, :cond_4f

    .line 679
    iget-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    if-eqz v2, :cond_5f

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    :cond_4f
    :goto_4f
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v2, p1, v0}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessEnd(IILjava/lang/String;)I

    move-result v1

    .line 696
    .local v1, retVal:I
    iput v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 697
    iput-boolean v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 699
    const/4 v2, -0x1

    if-ne v1, v2, :cond_68

    .line 701
    iput-boolean v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    .line 716
    :cond_5e
    :goto_5e
    return v1

    .line 685
    .end local v1       #retVal:I,
    :cond_5f
    const-string v2, "DrmObjSes"

    const-string/jumbo v3, "processEnd() : Invalid resultReceiver. Setup only based on processStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 703
    .restart local v1       #retVal:I,
    :cond_68
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5e

    .line 705
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_75

    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5e

    .line 708
    :cond_75
    const/4 v1, 0x0

    .line 709
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmObjectSession;->startDldClient()I

    move-result v2

    if-eqz v2, :cond_5e

    .line 711
    const/4 v1, -0x1

    goto :goto_5e
.end method

.method public processInit(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .parameter "drmMimeType"
    .parameter "filename"
    .parameter "attribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 416
    const/4 v6, 0x0

    .line 418
    .local v6, nativeHnds:[I
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_e

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_e
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    iget v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[I

    move-result-object v6

    .line 424
    if-eqz v6, :cond_2d

    aget v0, v6, v7

    if-eqz v0, :cond_2d

    .line 430
    iput v7, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 433
    aget v0, v6, v7

    iput v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 434
    const/4 v0, 0x1

    aget v0, v6, v0

    iput v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    move v0, v7

    .line 438
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, -0x1

    goto :goto_2c
.end method

.method public processStatus()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 551
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_e

    .line 553
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_e
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v1, :cond_1a

    .line 557
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :cond_1a
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessStatus(I)I

    move-result v0

    .line 561
    .local v0, retVal:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 563
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 566
    :cond_25
    if-eq v0, v3, :cond_2a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    .line 568
    :cond_2a
    iput-boolean v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 575
    :goto_2c
    return v0

    .line 572
    :cond_2d
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    goto :goto_2c
.end method

.method public processUpdate([BI)I
    .registers 4
    .parameter "buf"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BII)I

    move-result v0

    return v0
.end method

.method public processUpdate([BII)I
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 492
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_c

    .line 494
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_c
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v1, :cond_18

    .line 498
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_18
    if-nez p1, :cond_22

    .line 502
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter buf is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    :cond_22
    if-ltz p3, :cond_27

    array-length v1, p1

    if-le p3, v1, :cond_2f

    .line 506
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_2f
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessUpdate(I[BII)I

    move-result v0

    .line 510
    .local v0, retVal:I
    if-eqz v0, :cond_3a

    .line 512
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 515
    :cond_3a
    return v0
.end method

.method public setContentSize(J)I
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_c

    .line 845
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_c
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v0, :cond_18

    .line 849
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was not called successfully"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_18
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_26

    .line 853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_26
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    .line 858
    const/4 v0, 0x0

    .line 862
    :goto_2c
    return v0

    :cond_2d
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/lgdrm/DrmObjectSession;->nativeSetContentSize(IJ)I

    move-result v0

    goto :goto_2c
.end method
