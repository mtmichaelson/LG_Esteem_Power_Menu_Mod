.class public final Lcom/lge/lgdrm/DrmContentManager;
.super Ljava/lang/Object;
.source "DrmContentManager.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "DrmCntMngr"



# instance fields
.field private contentType:I

.field private filename:Ljava/lang/String;



# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "filename"
    .parameter "contentType"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    .line 86
    iput p2, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    .line 87
    return-void
.end method

.method private native nativeDeleteRights(Ljava/lang/String;)I
.end method

.method private native nativePostprocessDistributedContent(Ljava/lang/String;)I
.end method

.method private native nativePreprocessDistributeContent(Ljava/lang/String;)I
.end method


# virtual methods
.method public backupContent(Ljava/lang/String;)I
    .registers 4
    .parameter "dstFilename"

    .prologue
    .line 179
    const-string v0, "DrmCntMngr"

    const-string v1, "backupContent() : Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, -0x1

    return v0
.end method

.method public copyContent(Ljava/lang/String;)I
    .registers 3
    .parameter "dstFilename"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public deleteContent()I
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public deleteRights()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 102
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_e
    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x51

    if-lt v0, v1, :cond_21

    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-gt v0, v1, :cond_21

    .line 108
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentManager;->nativeDeleteRights(Ljava/lang/String;)I

    move-result v0

    .line 111
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public moveContent(Ljava/lang/String;)I
    .registers 3
    .parameter "dstFilename"

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public postprocessDistributedContent()I
    .registers 3

    .prologue
    .line 225
    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_8

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentManager;->nativePostprocessDistributedContent(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public preprocessDistributeContent()I
    .registers 3

    .prologue
    .line 207
    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_1a

    .line 211
    :cond_13
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentManager;->nativePreprocessDistributeContent(Ljava/lang/String;)I

    move-result v0

    .line 213
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public renameContent(Ljava/lang/String;)I
    .registers 3
    .parameter "dstFilename"

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public restoreContent(Ljava/lang/String;)I
    .registers 4
    .parameter "dstFilename"

    .prologue
    .line 194
    const-string v0, "DrmCntMngr"

    const-string/jumbo v1, "restoreContent() : Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, -0x1

    return v0
.end method
