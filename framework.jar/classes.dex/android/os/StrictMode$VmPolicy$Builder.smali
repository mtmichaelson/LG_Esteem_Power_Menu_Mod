.class public final Landroid/os/StrictMode$VmPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$VmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMask:I



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 3
    .parameter "bit"

    .prologue
    .line 466
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 467
    return-object p0
.end method


# virtual methods
.method public build()Landroid/os/StrictMode$VmPolicy;
    .registers 4

    .prologue
    .line 480
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_d

    .line 483
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 485
    :cond_d
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    iget v1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$VmPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public detectAll()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .prologue
    .line 423
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .prologue
    .line 436
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .prologue
    .line 445
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .prologue
    .line 462
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .prologue
    .line 452
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method
