.class public final Lcom/lge/lgdrm/DrmContentMetaData;
.super Ljava/lang/Object;
.source "DrmContentMetaData.java"



# static fields
.field private static TAG:Ljava/lang/String;



# instance fields
.field public album:Ljava/lang/StringBuffer;

.field public author:Ljava/lang/StringBuffer;

.field public category:Ljava/lang/StringBuffer;

.field public classification:Ljava/lang/StringBuffer;

.field public copyRight:Ljava/lang/StringBuffer;

.field public coverURI:Ljava/lang/StringBuffer;

.field public description:Ljava/lang/StringBuffer;

.field public lyricsURI:Ljava/lang/StringBuffer;

.field public performer:Ljava/lang/StringBuffer;

.field public recordingYear:Ljava/lang/StringBuffer;

.field public title:Ljava/lang/StringBuffer;

.field public trackNumber:Ljava/lang/StringBuffer;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "DrmCmtMeta"

    sput-object v0, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/String;
    .registers 4
    .parameter "type"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, data:Ljava/lang/StringBuffer;
    packed-switch p1, :pswitch_data_32

    .line 238
    :goto_4
    if-nez v0, :cond_2c

    .line 240
    const/4 v1, 0x0

    .line 243
    :goto_7
    return-object v1

    .line 201
    :pswitch_8
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    .line 202
    goto :goto_4

    .line 204
    :pswitch_b
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    .line 205
    goto :goto_4

    .line 207
    :pswitch_e
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    .line 208
    goto :goto_4

    .line 210
    :pswitch_11
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    .line 211
    goto :goto_4

    .line 213
    :pswitch_14
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    .line 214
    goto :goto_4

    .line 216
    :pswitch_17
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    .line 217
    goto :goto_4

    .line 219
    :pswitch_1a
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    .line 220
    goto :goto_4

    .line 222
    :pswitch_1d
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    .line 223
    goto :goto_4

    .line 225
    :pswitch_20
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    .line 226
    goto :goto_4

    .line 228
    :pswitch_23
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    .line 229
    goto :goto_4

    .line 231
    :pswitch_26
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    .line 232
    goto :goto_4

    .line 234
    :pswitch_29
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    goto :goto_4

    .line 243
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 198
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public getDataList()[I
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, count:I
    const/16 v3, 0xd

    new-array v2, v3, [I

    .line 98
    .local v2, tmp:[I
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_10

    .line 100
    const/4 v3, 0x1

    aput v3, v2, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_10
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_19

    .line 105
    const/4 v3, 0x2

    aput v3, v2, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 108
    :cond_19
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_22

    .line 110
    const/4 v3, 0x3

    aput v3, v2, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_22
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_2b

    .line 115
    const/4 v3, 0x4

    aput v3, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 118
    :cond_2b
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_34

    .line 120
    const/4 v3, 0x5

    aput v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 123
    :cond_34
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_3d

    .line 125
    const/4 v3, 0x6

    aput v3, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 128
    :cond_3d
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_46

    .line 130
    const/4 v3, 0x7

    aput v3, v2, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 133
    :cond_46
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_50

    .line 135
    const/16 v3, 0x8

    aput v3, v2, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_50
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_5a

    .line 140
    const/16 v3, 0x9

    aput v3, v2, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 143
    :cond_5a
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_64

    .line 145
    const/16 v3, 0xa

    aput v3, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 148
    :cond_64
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_6e

    .line 150
    const/16 v3, 0xb

    aput v3, v2, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_6e
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_78

    .line 155
    const/16 v3, 0xc

    aput v3, v2, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_78
    if-nez v0, :cond_7c

    move-object v3, v5

    .line 172
    :goto_7b
    return-object v3

    .line 164
    :cond_7c
    new-array v1, v0, [I

    .line 165
    .local v1, list:[I
    if-nez v1, :cond_82

    move-object v3, v5

    .line 167
    goto :goto_7b

    .line 170
    :cond_82
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    .line 172
    goto :goto_7b
.end method

.method public setData(ILjava/lang/String;)I
    .registers 6
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v2, -0x1

    .line 275
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/16 v0, 0xc

    if-le p1, v0, :cond_12

    .line 277
    :cond_8
    sget-object v0, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setData() : Type is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 327
    :goto_11
    return v0

    .line 280
    :cond_12
    if-nez p2, :cond_1e

    .line 282
    sget-object v0, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setData() : Value is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 283
    goto :goto_11

    .line 287
    :cond_1e
    packed-switch p1, :pswitch_data_84

    .line 327
    :goto_21
    const/4 v0, 0x0

    goto :goto_11

    .line 290
    :pswitch_23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 293
    :pswitch_2b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 296
    :pswitch_33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 299
    :pswitch_3b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 302
    :pswitch_43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 305
    :pswitch_4b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 308
    :pswitch_53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 311
    :pswitch_5b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 314
    :pswitch_63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 317
    :pswitch_6b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 320
    :pswitch_73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 323
    :pswitch_7b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    goto :goto_21

    .line 287
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2b
        :pswitch_33
        :pswitch_3b
        :pswitch_43
        :pswitch_4b
        :pswitch_53
        :pswitch_5b
        :pswitch_63
        :pswitch_6b
        :pswitch_73
        :pswitch_7b
    .end packed-switch
.end method
