.class Lcom/lge/sui/widget/control/SUIImagePicker$1;
.super Ljava/lang/Object;
.source "SUIImagePicker.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/control/SUIImagePicker;->setOnImageClickListener(Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/control/SUIImagePicker;

.field final synthetic val$clickListener:Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/control/SUIImagePicker;Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIImagePicker$1;->this$0:Lcom/lge/sui/widget/control/SUIImagePicker;

    iput-object p2, p0, Lcom/lge/sui/widget/control/SUIImagePicker$1;->val$clickListener:Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIImagePicker$1;->val$clickListener:Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIImagePicker$1;->this$0:Lcom/lge/sui/widget/control/SUIImagePicker;

    check-cast p2, Landroid/widget/ImageView;

    .end local p2       
    invoke-interface {v0, v1, p2, p3}, Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;->onImageClick(Lcom/lge/sui/widget/control/SUIImagePicker;Landroid/widget/ImageView;I)V

    .line 79
    return-void
.end method
