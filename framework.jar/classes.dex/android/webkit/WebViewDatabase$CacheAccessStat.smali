.class Landroid/webkit/WebViewDatabase$CacheAccessStat;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheAccessStat"
.end annotation


# instance fields
.field mCacheAccessCounter:I

.field mCacheItemPriority:I

.field mContentLength:J

.field mLastAccessTime:J

.field mWeight:J



# direct methods
.method public constructor <init>(Landroid/webkit/CacheManager$CacheResult;)V
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    .line 209
    iput v2, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    .line 210
    iput v2, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheItemPriority:I

    .line 211
    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mContentLength:J

    .line 212
    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    .line 215
    iget v0, p1, Landroid/webkit/CacheManager$CacheResult;->accessCounter:I

    iput v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    .line 216
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->getCacheItemPriority(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheItemPriority:I

    .line 217
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mContentLength:J

    .line 218
    invoke-virtual {p0}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->hit()V

    .line 219
    return-void
.end method


# virtual methods
.method getCacheItemPriority(Ljava/lang/String;)I
    .registers 4
    .parameter "mimeType"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->getCacheStatId(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, id:I
    packed-switch v0, :pswitch_data_10

    .line 258
    const/4 v1, -0x1

    :goto_8
    return v1

    .line 252
    :pswitch_9
    const/4 v1, 0x2

    goto :goto_8

    .line 254
    :pswitch_b
    const/4 v1, 0x1

    goto :goto_8

    .line 256
    :pswitch_d
    const/4 v1, 0x0

    goto :goto_8

    .line 249
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method getCacheStatId(Ljava/lang/String;)I
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 229
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 230
    const/4 v0, 0x4

    .line 241
    :goto_9
    return v0

    .line 232
    :cond_a
    const-string v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 233
    :cond_1a
    const/4 v0, 0x3

    goto :goto_9

    .line 235
    :cond_1c
    const-string v0, "css"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 236
    const/4 v0, 0x2

    goto :goto_9

    .line 238
    :cond_26
    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 239
    const/4 v0, 0x1

    goto :goto_9

    .line 241
    :cond_30
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hit()V
    .registers 9

    .prologue
    .line 222
    iget v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    .line 224
    iget-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    invoke-static {}, Landroid/webkit/WebViewDatabase;->access$000()J

    move-result-wide v2

    iget v4, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheItemPriority:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    .line 225
    iget-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    invoke-static {}, Landroid/webkit/WebViewDatabase;->access$100()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mContentLength:J

    iget v6, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->normalize(J)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    .line 226
    return-void
.end method

.method normalize(J)I
    .registers 9
    .parameter "i"

    .prologue
    const-wide/16 v4, 0x0

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, normalized:I
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 265
    add-int/lit8 v1, v1, 0x1

    .line 267
    :cond_e
    const/16 v0, 0x10

    .local v0, index:I
    :goto_10
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1e

    .line 268
    shr-long v2, p1, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    .line 269
    add-int/2addr v1, v0

    shr-long/2addr p1, v0

    .line 267
    :cond_1b
    div-int/lit8 v0, v0, 0x2

    goto :goto_10

    .line 272
    :cond_1e
    const/4 v2, 0x1

    shr-long v2, p1, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_27

    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 275
    :cond_27
    const/16 v2, 0x20

    sub-int/2addr v2, v1

    return v2
.end method
