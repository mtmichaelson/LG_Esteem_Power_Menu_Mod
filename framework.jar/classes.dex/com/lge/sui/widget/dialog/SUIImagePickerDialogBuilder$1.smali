.class Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$1;
.super Ljava/lang/Object;
.source "SUIImagePickerDialogBuilder.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->create()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$1;->this$0:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 72
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$1;->this$0:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;

    invoke-static {v0}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->access$000(Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;)Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$OnImageClickListener;

    move-result-object v0

    check-cast p1, Landroid/widget/GridView;

    .end local p1       #parent:Landroid/widget/AdapterView;,, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Landroid/widget/ImageView;

    .end local p2       
    invoke-interface {v0, p1, p2, p3}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$OnImageClickListener;->onImageClick(Landroid/widget/GridView;Landroid/widget/ImageView;I)V

    .line 73
    return-void
.end method
