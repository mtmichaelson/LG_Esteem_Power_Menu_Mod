.class public final Lcom/lge/lgdrm/DrmStream;
.super Ljava/io/InputStream;
.source "DrmStream.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "DrmStream"



# instance fields
.field private b:[B

.field protected filename:Ljava/lang/String;

.field private nativeHandle:I



# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "filename"
    .parameter "nativeHandle"

    .prologue
    const-string v1, "DrmStream"

    .line 48
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    .line 49
    if-nez p1, :cond_14

    .line 51
    const-string v0, "DrmStream"

    const-string v0, "DrmStream() : Invalid file name"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_13
    return-void

    .line 55
    :cond_14
    if-nez p2, :cond_1e

    .line 57
    const-string v0, "DrmStream"

    const-string v0, "DrmStream() : Invalid native handle"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 61
    :cond_1e
    iput-object p1, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    goto :goto_13
.end method

.method private native nativeAvailable(I)I
.end method

.method private native nativeClose(I)V
.end method

.method private native nativeRead(I[BII)I
.end method

.method private native nativeSkip(IJ)J
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_c

    .line 71
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_c
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeAvailable(I)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_c

    .line 82
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_c
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 87
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .registers 2
    .parameter "readlimit"

    .prologue
    .line 92
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 106
    iget v1, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v1, :cond_e

    .line 108
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was not opened properly"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_e
    iget-object v1, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v4, v2}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    .line 112
    .local v0, nRead:I
    if-ne v0, v3, :cond_19

    move v1, v3

    .line 117
    :goto_18
    return v1

    :cond_19
    iget-object v1, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_18
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_c

    .line 126
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_c
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, nRead:I
    const/4 v0, 0x0

    .line 139
    .local v0, i:I
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_e

    .line 141
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File was not opened properly"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_e
    if-nez p1, :cond_19

    .line 146
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameter b is NULL"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_19
    or-int v2, p2, p3

    if-ltz v2, :cond_21

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_27

    .line 150
    :cond_21
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 153
    :cond_27
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/lge/lgdrm/DrmStream;->nativeRead(I[BII)I

    move-result v1

    .line 154
    if-nez v1, :cond_31

    .line 157
    const/4 v2, -0x1

    .line 166
    :goto_30
    return v2

    .line 159
    :cond_31
    if-gez v1, :cond_41

    .line 161
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 162
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 163
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_41
    move v2, v1

    .line 166
    goto :goto_30
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-eqz v0, :cond_d

    .line 175
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 179
    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    .line 173
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 186
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_e

    .line 188
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_e
    cmp-long v0, p1, v1

    if-gtz v0, :cond_14

    move-wide v0, v1

    .line 200
    :goto_13
    return-wide v0

    :cond_14
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/lgdrm/DrmStream;->nativeSkip(IJ)J

    move-result-wide v0

    goto :goto_13
.end method
