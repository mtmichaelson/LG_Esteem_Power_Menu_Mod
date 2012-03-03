.class Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SUIIndexedListCursorAdapter.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 509
    const-string v0, "SUIIndexedListCursorAdapter"

    const-string v1, "MyDataSetObserver : onChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    .line 511
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->notifyDataSetChanged()V

    .line 512
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 516
    const-string v0, "SUIIndexedListCursorAdapter"

    const-string v1, "MyDataSetObserver : onInvalidated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    .line 518
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->notifyDataSetInvalidated()V

    .line 519
    return-void
.end method
