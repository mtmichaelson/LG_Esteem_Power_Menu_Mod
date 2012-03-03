.class Lcom/lge/sui/widget/control/SUIGeneralPicker$1;
.super Ljava/lang/Object;
.source "SUIGeneralPicker.java"


# interfaces
.implements Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/control/SUIGeneralPicker;->initialize([Ljava/util/List;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/control/SUIGeneralPicker;

.field final synthetic val$index:I



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/control/SUIGeneralPicker;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$1;->this$0:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    iput p2, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 124
    .local p1, parent:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<*>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$1;->this$0:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    iget v1, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$1;->val$index:I

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$1;->this$0:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    invoke-static {v2}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->access$000(Lcom/lge/sui/widget/control/SUIGeneralPicker;)[Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$1;->val$index:I

    aget-object v2, v2, v3

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->updateData(ILjava/lang/String;)V

    .line 125
    return-void
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
    .line 128
    .local p1, parent:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<*>;"
    return-void
.end method
