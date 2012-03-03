.class Lcom/lge/sui/widget/window/SUITabHost$2;
.super Ljava/lang/Object;
.source "SUITabHost.java"


# interfaces
.implements Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/window/SUITabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/window/SUITabHost;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabHost$2;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .registers 5
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$2;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/window/SUITabHost;->setCurrentTab(I)V

    .line 105
    if-eqz p2, :cond_11

    .line 106
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$2;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-static {v0}, Lcom/lge/sui/widget/window/SUITabHost;->access$100(Lcom/lge/sui/widget/window/SUITabHost;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->requestFocus(I)Z

    .line 108
    :cond_11
    return-void
.end method
