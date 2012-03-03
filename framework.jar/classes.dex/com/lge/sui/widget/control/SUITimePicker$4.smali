.class Lcom/lge/sui/widget/control/SUITimePicker$4;
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
    .line 542
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUITimePicker$4;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 546
    .local p1, parent:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<*>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$4;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUITimePicker$4;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/lge/sui/widget/control/SUITimePicker;->updateTime(II)V

    .line 547
    return-void
.end method

.method public onNothingSelected(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/sui/widget/control/SUIPickerAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, parent:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<*>;"
    invoke-virtual {p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getCount()I

    move-result v2

    add-int v0, v1, v2

    .line 553
    .local v0, position:I
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUITimePicker$4;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUITimePicker$4;->this$0:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->updateTime(II)V

    .line 554
    return-void
.end method
