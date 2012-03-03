.class Lcom/lge/sui/widget/control/SUIDigitPicker$1;
.super Ljava/lang/Object;
.source "SUIDigitPicker.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIDigitPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$1;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$1;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->access$002(Lcom/lge/sui/widget/control/SUIDigitPicker;Z)Z

    .line 120
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$1;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->selectionChanged()V

    .line 121
    return-void
.end method
