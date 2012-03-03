.class public final Lcom/lge/lgdrm/DrmCertManager;
.super Ljava/lang/Object;
.source "DrmCertManager.java"



# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getIndex()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 141
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 143
    const/4 v0, -0x1

    .line 151
    :goto_5
    return v0

    .line 146
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 148
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_14
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static getInformation(I)Ljava/lang/String;
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 195
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 197
    const/4 v0, 0x0

    .line 209
    :goto_5
    return-object v0

    .line 200
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 202
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_14
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1a

    const/4 v0, 0x2

    if-le p0, v0, :cond_22

    .line 207
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_22
    invoke-static {p0}, Lcom/lge/lgdrm/DrmCertManager;->nativeGetCertificateInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static isTestSet()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 222
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_7

    move v0, v2

    .line 237
    :goto_6
    return v0

    .line 227
    :cond_7
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_15

    .line 229
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_15
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 234
    const/4 v0, 0x1

    goto :goto_6

    :cond_1f
    move v0, v2

    .line 237
    goto :goto_6
.end method

.method public static load(ZLjava/lang/String;)I
    .registers 5
    .parameter "loadOnDemand"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 255
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_7

    .line 257
    const/4 v0, -0x1

    .line 269
    :goto_6
    return v0

    .line 260
    :cond_7
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_15

    .line 262
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_15
    if-eqz p0, :cond_1d

    .line 267
    const/4 v0, 0x4

    invoke-static {v0, v2, p1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 269
    :cond_1d
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_6
.end method

.method private static native nativeGetCertificateInformation(I)Ljava/lang/String;
.end method

.method private static native nativeManageCertificate(IILjava/lang/String;)I
.end method

.method private static native nativeWriteCertificate(I[B)I
.end method

.method public static reset()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 165
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 167
    const/4 v0, -0x1

    .line 175
    :goto_5
    return v0

    .line 170
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 172
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_14
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static setIndex(I)I
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 117
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 119
    const/4 v0, -0x1

    .line 127
    :goto_5
    return v0

    .line 122
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 124
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_14
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static verify()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 91
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 93
    const/4 v0, -0x1

    .line 101
    :goto_5
    return v0

    .line 96
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 98
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_14
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static write(I[B)I
    .registers 4
    .parameter "type"
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 55
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 57
    const/4 v0, -0x1

    .line 75
    :goto_5
    return v0

    .line 60
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_14
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1a

    const/4 v0, 0x4

    if-le p0, v0, :cond_22

    .line 67
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_22
    if-nez p1, :cond_2c

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2c
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmCertManager;->nativeWriteCertificate(I[B)I

    move-result v0

    goto :goto_5
.end method
