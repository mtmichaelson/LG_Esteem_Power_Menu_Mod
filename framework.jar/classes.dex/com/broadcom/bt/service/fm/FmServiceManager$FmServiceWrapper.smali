.class Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
.super Ljava/lang/Object;
.source "FmServiceManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FmServiceWrapper"
.end annotation


# instance fields
.field private mIsStarted:Z

.field private mSvc:Lcom/broadcom/bt/service/framework/IBtService;



# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V
    .registers 3
    .parameter "eventLoop"
    .parameter "isStarted"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;

    .line 86
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;

    return-object v0
.end method
