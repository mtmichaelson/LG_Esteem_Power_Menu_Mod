.class Lcom/lge/internal/widget/Andy_DigitalClock$1$1;
.super Ljava/lang/Object;
.source "Andy_DigitalClock.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/internal/widget/Andy_DigitalClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/internal/widget/Andy_DigitalClock$1;



# direct methods
.method constructor <init>(Lcom/lge/internal/widget/Andy_DigitalClock$1;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_DigitalClock$1$1;->this$1:Lcom/lge/internal/widget/Andy_DigitalClock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock$1$1;->this$1:Lcom/lge/internal/widget/Andy_DigitalClock$1;

    iget-object v0, v0, Lcom/lge/internal/widget/Andy_DigitalClock$1;->this$0:Lcom/lge/internal/widget/Andy_DigitalClock;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_DigitalClock;->access$200(Lcom/lge/internal/widget/Andy_DigitalClock;)V

    .line 75
    return-void
.end method
