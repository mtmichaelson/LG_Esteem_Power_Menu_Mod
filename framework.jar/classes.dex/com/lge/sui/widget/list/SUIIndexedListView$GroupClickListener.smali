.class Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;
.super Ljava/lang/Object;
.source "SUIIndexedListView.java"


# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIIndexedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListView;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListView;Lcom/lge/sui/widget/list/SUIIndexedListView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListView;)V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 11
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    .line 142
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v3, p3}, Lcom/lge/sui/widget/list/SUIIndexedListView;->isGroupExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 143
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v3}, Lcom/lge/sui/widget/list/SUIIndexedListView;->collapseAllGroup()V

    .line 148
    :goto_d
    invoke-static {p3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    .line 149
    .local v0, packedPosition:J
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v3, v0, v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFlatListPosition(J)I

    move-result v2

    .line 150
    .local v2, targetPosition:I
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/lge/sui/widget/list/SUIIndexedListView;->setSelectionFromTop(II)V

    .line 151
    const/4 v3, 0x1

    return v3

    .line 145
    .end local v0       #packedPosition:J,
    .end local v2       #targetPosition:I,
    :cond_1f
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v3}, Lcom/lge/sui/widget/list/SUIIndexedListView;->expandAllGroup()V

    goto :goto_d
.end method
