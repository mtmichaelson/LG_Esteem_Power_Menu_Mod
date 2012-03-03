.class Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;
.super Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$SimpleOnScrollGestureListener;
.source "SUIIndexedListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIIndexedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiTouchScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListView;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$SimpleOnScrollGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListView;Lcom/lge/sui/widget/list/SUIIndexedListView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListView;)V

    return-void
.end method


# virtual methods
.method public onFling(FF)Z
    .registers 13
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "SUIIndexedListView"

    .line 180
    const-string v5, "SUIIndexedListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFling() : velocityY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    iget-object v6, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v6}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 182
    .local v2, packedPosition:J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 183
    .local v1, groupPosition:I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 185
    .local v0, childPosition:I
    const/4 v4, 0x0

    .line 186
    .local v4, targetPosition:I
    cmpg-float v5, p2, v7

    if-gez v5, :cond_6c

    .line 187
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFlatListPosition(J)I

    move-result v4

    .line 195
    :cond_42
    :goto_42
    const-string v5, "SUIIndexedListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFling() : groupPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", targetPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/lge/sui/widget/list/SUIIndexedListView;->setSelectionFromTop(II)V

    .line 198
    return v8

    .line 188
    :cond_6c
    cmpl-float v5, p2, v7

    if-lez v5, :cond_42

    .line 189
    if-nez v0, :cond_7f

    .line 190
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    sub-int v6, v1, v8

    invoke-static {v6}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFlatListPosition(J)I

    move-result v4

    goto :goto_42

    .line 192
    :cond_7f
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFlatListPosition(J)I

    move-result v4

    goto :goto_42
.end method

.method public onScroll(FF)Z
    .registers 14
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v10, 0x1

    .line 159
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v8}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 160
    .local v2, packedPosition:J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 161
    .local v1, groupPosition:I
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v7}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 163
    .local v0, groupCount:I
    int-to-float v7, v0

    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v8}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, p2, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 164
    .local v4, scrollDistance:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lez v7, :cond_46

    .line 165
    add-int v5, v1, v4

    .line 166
    .local v5, targetGroupPosition:I
    if-lt v5, v0, :cond_47

    .line 167
    sub-int v5, v0, v10

    .line 172
    :cond_36
    :goto_36
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-static {v5}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFlatListPosition(J)I

    move-result v6

    .line 174
    .local v6, targetPosition:I
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lcom/lge/sui/widget/list/SUIIndexedListView;->setSelectionFromTop(II)V

    .line 176
    .end local v5       #targetGroupPosition:I,
    .end local v6       #targetPosition:I,
    :cond_46
    return v10

    .line 168
    .restart local v5       #targetGroupPosition:I,
    :cond_47
    if-gez v5, :cond_36

    .line 169
    const/4 v5, 0x0

    goto :goto_36
.end method
