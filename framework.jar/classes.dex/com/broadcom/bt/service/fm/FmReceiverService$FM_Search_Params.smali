.class Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;
.super Ljava/lang/Object;
.source "FmReceiverService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FM_Search_Params"
.end annotation


# instance fields
.field private mStFreq:I

.field private mStRssi:I

.field private mStSeekSuccess:Z

.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;



# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZ)V
    .registers 5
    .parameter
    .parameter "Freq"
    .parameter "Rssi"
    .parameter "SeekSuccess"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStFreq:I

    .line 113
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStRssi:I

    .line 114
    iput-boolean p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStSeekSuccess:Z

    .line 115
    return-void
.end method

.method static synthetic access$1300(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStFreq:I

    return v0
.end method

.method static synthetic access$1400(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStRssi:I

    return v0
.end method

.method static synthetic access$1500(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStSeekSuccess:Z

    return v0
.end method
