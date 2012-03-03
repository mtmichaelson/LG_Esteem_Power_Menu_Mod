.class Lcom/lge/sui/widget/list/SUISectionScroller$1;
.super Ljava/lang/Object;
.source "SUISectionScroller.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/list/SUISectionScroller;->fillTextView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUISectionScroller;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/list/SUISectionScroller;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUISectionScroller$1;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    .line 181
    .local v0, packedPosition:J
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller$1;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-static {v3}, Lcom/lge/sui/widget/list/SUISectionScroller;->access$000(Lcom/lge/sui/widget/list/SUISectionScroller;)Lcom/lge/sui/widget/list/SUIIndexedListView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFlatListPosition(J)I

    move-result v2

    .line 182
    .local v2, targetPosition:I
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller$1;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-static {v3}, Lcom/lge/sui/widget/list/SUISectionScroller;->access$000(Lcom/lge/sui/widget/list/SUISectionScroller;)Lcom/lge/sui/widget/list/SUIIndexedListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/lge/sui/widget/list/SUIIndexedListView;->setSelectionFromTop(II)V

    .line 183
    return-void
.end method
