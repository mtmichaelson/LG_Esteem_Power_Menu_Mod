.class Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;



# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1542
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1542
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1544
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, p2, p3, p4, p5}, Landroid/widget/AutoCompleteTextView;->access$1500(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V

    .line 1545
    return-void
.end method
