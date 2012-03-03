.class Lcom/lge/sui/widget/control/SUISlideCheck$3;
.super Ljava/lang/Object;
.source "SUISlideCheck.java"


# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/control/SUISlideCheck;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/control/SUISlideCheck;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/control/SUISlideCheck;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUISlideCheck$3;->this$0:Lcom/lge/sui/widget/control/SUISlideCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUISlideCheck$3;->this$0:Lcom/lge/sui/widget/control/SUISlideCheck;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUISlideCheck$3;->this$0:Lcom/lge/sui/widget/control/SUISlideCheck;

    invoke-static {v1}, Lcom/lge/sui/widget/control/SUISlideCheck;->access$100(Lcom/lge/sui/widget/control/SUISlideCheck;)Landroid/widget/SlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/sui/widget/control/SUISlideCheck;->access$002(Lcom/lge/sui/widget/control/SUISlideCheck;Z)Z

    .line 84
    return-void
.end method
