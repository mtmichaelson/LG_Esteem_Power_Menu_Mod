.class Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "SUIPickerAdapterView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIPickerAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 843
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Lcom/lge/sui/widget/control/SUIPickerAdapterView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 843
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;-><init>(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 845
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget-boolean v0, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_a

    .line 849
    invoke-virtual {p0, p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 853
    :goto_9
    return-void

    .line 851
    :cond_a
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-static {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->access$200(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)V

    goto :goto_9
.end method
