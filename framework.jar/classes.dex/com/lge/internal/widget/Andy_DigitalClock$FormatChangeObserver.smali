.class Lcom/lge/internal/widget/Andy_DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "Andy_DigitalClock.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/widget/Andy_DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/internal/widget/Andy_DigitalClock;



# direct methods
.method public constructor <init>(Lcom/lge/internal/widget/Andy_DigitalClock;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_DigitalClock$FormatChangeObserver;->this$0:Lcom/lge/internal/widget/Andy_DigitalClock;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock$FormatChangeObserver;->this$0:Lcom/lge/internal/widget/Andy_DigitalClock;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_DigitalClock;->access$400(Lcom/lge/internal/widget/Andy_DigitalClock;)V

    .line 111
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock$FormatChangeObserver;->this$0:Lcom/lge/internal/widget/Andy_DigitalClock;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_DigitalClock;->access$200(Lcom/lge/internal/widget/Andy_DigitalClock;)V

    .line 112
    return-void
.end method
