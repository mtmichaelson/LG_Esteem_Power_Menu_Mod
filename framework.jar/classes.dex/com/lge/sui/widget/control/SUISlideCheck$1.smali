.class Lcom/lge/sui/widget/control/SUISlideCheck$1;
.super Ljava/lang/Object;
.source "SUISlideCheck.java"


# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerScrollListener;


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
    .line 66
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUISlideCheck$1;->this$0:Lcom/lge/sui/widget/control/SUISlideCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public onScrollStarted()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method
