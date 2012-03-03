.class public final Lcom/lge/lgdrm/DrmContent;
.super Ljava/lang/Object;
.source "DrmContent.java"



# static fields
.field private static FLIconStatus:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmCnt"



# instance fields
.field protected agentType:I

.field protected autoRightState:Z

.field private cid:Ljava/lang/String;

.field private contentSize:J

.field protected contentType:I

.field private contentURL:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field protected filename:Ljava/lang/String;

.field protected index:I

.field private mediaType:I

.field private metadata:Lcom/lge/lgdrm/DrmContentMetaData;

.field private mimeType:Ljava/lang/String;

.field protected permisson:I

.field protected previewContent:I

.field private riURL:Ljava/lang/String;

.field protected rightState:I

.field private ttid:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 138
    const/4 v0, -0x1

    sput v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 120
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 122
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 142
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .parameter "filename"
    .parameter "index"
    .parameter "contentType"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 120
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 122
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 146
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 147
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    .line 148
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 150
    if-nez p3, :cond_18

    .line 175
    :cond_17
    :goto_17
    return-void

    .line 155
    :cond_18
    const/16 v0, 0x10

    if-le p3, v0, :cond_24

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_24

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_17

    .line 159
    :cond_24
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_2c

    .line 161
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_17

    .line 163
    :cond_2c
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_35

    .line 165
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_17

    .line 167
    :cond_35
    const/high16 v0, 0x8

    if-ne p3, v0, :cond_3d

    .line 169
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_17

    .line 171
    :cond_3d
    const/high16 v0, 0x10

    and-int/2addr v0, p3

    if-nez v0, :cond_46

    const/high16 v0, 0x80

    if-ne p3, v0, :cond_17

    .line 173
    :cond_46
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_17
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "filename"
    .parameter "index"
    .parameter "contentType"
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 120
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 122
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 194
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 195
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 196
    iput-object p4, p0, Lcom/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 197
    iput-object p5, p0, Lcom/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 198
    iput p6, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 200
    const/16 v0, 0x10

    if-le p3, v0, :cond_25

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_25

    .line 202
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    .line 220
    :cond_24
    :goto_24
    return-void

    .line 204
    :cond_25
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_2d

    .line 206
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_24

    .line 208
    :cond_2d
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_36

    .line 210
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_24

    .line 212
    :cond_36
    const/high16 v0, 0x8

    if-ne p3, v0, :cond_3e

    .line 214
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_24

    .line 216
    :cond_3e
    const/high16 v0, 0x10

    and-int/2addr v0, p3

    if-nez v0, :cond_47

    const/high16 v0, 0x80

    if-ne p3, v0, :cond_24

    .line 218
    :cond_47
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_24
.end method

.method public static getContentInfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "filename"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 414
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_7

    .line 416
    const/4 v0, 0x0

    .line 433
    :goto_6
    return-object v0

    .line 419
    :cond_7
    if-nez p0, :cond_11

    .line 421
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_11
    const/4 v0, 0x1

    if-lt p1, v0, :cond_17

    const/4 v0, 0x6

    if-le p1, v0, :cond_1f

    .line 425
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1f
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 430
    new-instance v0, Lcom/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_2d
    invoke-static {p1, p0, v1, v1}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static getContentType(Ljava/lang/String;)I
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 281
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 296
    :goto_6
    return v0

    .line 286
    :cond_7
    if-nez p0, :cond_11

    .line 288
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_11
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 293
    new-instance v0, Lcom/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1f
    invoke-static {p0, v1, v1}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentType(Ljava/lang/String;II)I

    move-result v0

    goto :goto_6
.end method

.method public static isForwardlockIconVisible()Z
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 602
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_8

    move v0, v2

    .line 619
    :goto_7
    return v0

    .line 607
    :cond_8
    sget v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 609
    invoke-static {}, Lcom/lge/lgdrm/DrmContent;->nativeIsForwardlockIconVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 611
    sput v3, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    .line 619
    :cond_15
    :goto_15
    sget v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    if-ne v0, v3, :cond_1e

    move v0, v3

    goto :goto_7

    .line 615
    :cond_1b
    sput v2, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    goto :goto_15

    :cond_1e
    move v0, v2

    .line 619
    goto :goto_7
.end method

.method private native nativeCheckPreviewContent(Ljava/lang/String;I)Z
.end method

.method private static native nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;
.end method

.method private native nativeGetContentSize(Ljava/lang/String;II)J
.end method

.method private static native nativeGetContentType(Ljava/lang/String;II)I
.end method

.method private native nativeGetMetaData(Lcom/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeIsForwardlockIconVisible()Z
.end method

.method private setBasicInfo(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "index"
    .parameter "contentType"
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    .line 685
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 686
    iput-object p3, p0, Lcom/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 687
    iput-object p4, p0, Lcom/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 688
    iput p5, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 690
    const/16 v0, 0x10

    if-le p2, v0, :cond_14

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_14

    .line 692
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    .line 710
    :cond_13
    :goto_13
    return-void

    .line 694
    :cond_14
    const/16 v0, 0x3000

    if-ne p2, v0, :cond_1c

    .line 696
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13

    .line 698
    :cond_1c
    const/high16 v0, 0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_25

    .line 700
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13

    .line 702
    :cond_25
    const/high16 v0, 0x8

    if-ne p2, v0, :cond_2d

    .line 704
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13

    .line 706
    :cond_2d
    const/high16 v0, 0x10

    and-int/2addr v0, p2

    if-nez v0, :cond_36

    const/high16 v0, 0x80

    if-ne p2, v0, :cond_13

    .line 708
    :cond_36
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13
.end method

.method private setBasicInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    .line 723
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 724
    iput-object p2, p0, Lcom/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 725
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 726
    return-void
.end method


# virtual methods
.method public checkPreviewContent()Z
    .registers 3

    .prologue
    .line 460
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 462
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmContent;->nativeCheckPreviewContent(Ljava/lang/String;I)Z

    move-result v0

    .line 465
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getContentInfo(I)Ljava/lang/String;
    .registers 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 317
    if-lt p1, v1, :cond_8

    if-le p1, v4, :cond_10

    .line 319
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_10
    if-ne p1, v1, :cond_15

    .line 324
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 387
    :goto_14
    return-object v0

    .line 326
    :cond_15
    if-ne p1, v2, :cond_1a

    .line 328
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    goto :goto_14

    .line 332
    :cond_1a
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v0, v2, :cond_24

    move-object v0, v3

    .line 334
    goto :goto_14

    .line 337
    :cond_24
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3d

    .line 339
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 341
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    goto :goto_14

    .line 344
    :cond_2e
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    goto :goto_14

    .line 348
    :cond_3d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_56

    .line 350
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 352
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    goto :goto_14

    .line 355
    :cond_47
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    goto :goto_14

    .line 360
    :cond_56
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v0, v2, :cond_5c

    move-object v0, v3

    .line 362
    goto :goto_14

    .line 365
    :cond_5c
    const/4 v0, 0x5

    if-ne p1, v0, :cond_75

    .line 367
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 369
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    goto :goto_14

    .line 372
    :cond_66
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    goto :goto_14

    .line 376
    :cond_75
    if-ne p1, v4, :cond_8d

    .line 378
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 380
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    goto :goto_14

    .line 383
    :cond_7e
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    goto :goto_14

    :cond_8d
    move-object v0, v3

    .line 387
    goto :goto_14
.end method

.method public getContentSize()J
    .registers 5

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 446
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 450
    :goto_a
    return-wide v0

    .line 449
    :cond_b
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentSize(Ljava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 450
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    goto :goto_a
.end method

.method public getContentType()I
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    return v0
.end method

.method public getDrmContentType()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    return v0
.end method

.method public getMetaData()Lcom/lge/lgdrm/DrmContentMetaData;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 518
    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    move-object v1, v4

    .line 547
    :goto_c
    return-object v1

    .line 524
    :cond_d
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    if-eqz v1, :cond_14

    .line 527
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    goto :goto_c

    .line 530
    :cond_14
    new-instance v0, Lcom/lge/lgdrm/DrmContentMetaData;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmContentMetaData;-><init>()V

    .line 531
    .local v0, meta:Lcom/lge/lgdrm/DrmContentMetaData;
    if-nez v0, :cond_1d

    move-object v1, v4

    .line 533
    goto :goto_c

    .line 536
    :cond_1d
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v3, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmContent;->nativeGetMetaData(Lcom/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2b

    move-object v1, v4

    .line 538
    goto :goto_c

    .line 541
    :cond_2b
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContent;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 544
    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    :cond_35
    move-object v1, v0

    .line 547
    goto :goto_c
.end method

.method public isActionSupported(I)Z
    .registers 4
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 498
    const/16 v0, 0xf

    if-eq p1, v0, :cond_c

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected isIdentical(Lcom/lge/lgdrm/DrmContent;)Z
    .registers 5
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 653
    if-nez p1, :cond_5

    move v0, v2

    .line 667
    :goto_4
    return v0

    .line 657
    :cond_5
    iget-object v0, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    .line 659
    goto :goto_4

    .line 663
    :cond_11
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    if-eq v0, v1, :cond_19

    move v0, v2

    .line 665
    goto :goto_4

    .line 667
    :cond_19
    const/4 v0, 0x1

    goto :goto_4
.end method

.method protected isSibling(Lcom/lge/lgdrm/DrmContent;)Z
    .registers 5
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 631
    if-nez p1, :cond_5

    move v0, v2

    .line 641
    :goto_4
    return v0

    .line 637
    :cond_5
    iget-object v0, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    .line 639
    goto :goto_4

    .line 641
    :cond_11
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public resetMetaData()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectPreviewContent(Z)V
    .registers 3
    .parameter "reset"

    .prologue
    .line 475
    if-eqz p1, :cond_6

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    .line 483
    :goto_5
    return-void

    .line 481
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    goto :goto_5
.end method

.method public setMetaData(Lcom/lge/lgdrm/DrmContentMetaData;)I
    .registers 4
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 569
    if-nez p1, :cond_a

    .line 571
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter metaData is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
