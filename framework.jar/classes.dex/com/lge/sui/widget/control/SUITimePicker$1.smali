.class Lcom/lge/sui/widget/control/SUITimePicker$1;
.super Ljava/lang/Object;
.source "SUITimePicker.java"


# interfaces
.implements Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/control/SUITimePicker;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/control/SUITimePicker;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/control/SUITimePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUITimePicker$1;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/sui/widget/control/SUIPickerAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, parent:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<*>;"
    if-nez p3, :cond_16

    .line 429
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$1;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUITimePicker$1;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v1

    rem-int/lit8 v1, v1, 0xc

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUITimePicker$1;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/sui/widget/control/SUITimePicker;->updateTime(II)V

    .line 439
    :goto_15
    return-void

    .line 435
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$1;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUITimePicker$1;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v1

    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0xc

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUITimePicker$1;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/sui/widget/control/SUITimePicker;->updateTime(II)V

    goto :goto_15
.end method

.method public onNothingSelected(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/sui/widget/control/SUIPickerAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, parent:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<*>;"
    return-void
.end method
