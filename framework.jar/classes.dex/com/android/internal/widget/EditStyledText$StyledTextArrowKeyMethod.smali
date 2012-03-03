.class Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "EditStyledText.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextArrowKeyMethod"
.end annotation


# instance fields
.field mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

.field final synthetic this$0:Lcom/android/internal/widget/EditStyledText;



# direct methods
.method constructor <init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText$EditorManager;)V
    .registers 3
    .parameter
    .parameter "manager"

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->this$0:Lcom/android/internal/widget/EditStyledText;

    .line 1465
    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    .line 1466
    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    .line 1467
    return-void
.end method

.method private down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 11
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v7, 0x1

    .line 1518
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1519
    .local v2, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v0

    .line 1520
    .local v0, end:I
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1521
    .local v3, line:I
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_3d

    .line 1523
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v5, v6, :cond_36

    .line 1525
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 1526
    .local v1, h:F
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 1530
    .end local v1       #h:F,
    .local v4, to:I
    :goto_2a
    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    .line 1531
    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    move v5, v7

    .line 1534
    .end local v4       #to:I,
    :goto_35
    return v5

    .line 1528
    :cond_36
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .restart local v4       #to:I,
    goto :goto_2a

    .line 1534
    .end local v4       #to:I,
    :cond_3d
    const/4 v5, 0x0

    goto :goto_35
.end method

.method private executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"

    .prologue
    .line 1564
    const/4 v0, 0x0

    .line 1566
    .local v0, handled:Z
    packed-switch p3, :pswitch_data_24

    .line 1584
    :goto_4
    return v0

    .line 1568
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1569
    goto :goto_4

    .line 1571
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1572
    goto :goto_4

    .line 1574
    :pswitch_11
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1575
    goto :goto_4

    .line 1577
    :pswitch_17
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1578
    goto :goto_4

    .line 1580
    :pswitch_1d
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onFixSelectedItem()V

    .line 1581
    const/4 v0, 0x1

    goto :goto_4

    .line 1566
    :pswitch_data_24
    .packed-switch 0x13
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method

.method private getEndPos(Landroid/widget/TextView;)I
    .registers 5
    .parameter "widget"

    .prologue
    .line 1483
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 1484
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1488
    .local v0, end:I
    :goto_10
    return v0

    .line 1486
    .end local v0       #end:I,
    :cond_11
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .restart local v0       #end:I,
    goto :goto_10
.end method

.method private left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 1541
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1542
    .local v0, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 1543
    .local v1, to:I
    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    .line 1544
    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    .line 1545
    const/4 v2, 0x1

    return v2
.end method

.method private right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 1552
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1553
    .local v0, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 1554
    .local v1, to:I
    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    .line 1555
    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    .line 1556
    const/4 v2, 0x1

    return v2
.end method

.method private up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 11
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v7, 0x1

    .line 1495
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1496
    .local v2, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->getEndPos(Landroid/widget/TextView;)I

    move-result v0

    .line 1497
    .local v0, end:I
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1498
    .local v3, line:I
    if-lez v3, :cond_38

    .line 1500
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    sub-int v6, v3, v7

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v5, v6, :cond_31

    .line 1502
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 1503
    .local v1, h:F
    sub-int v5, v3, v7

    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 1507
    .end local v1       #h:F,
    .local v4, to:I
    :goto_25
    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    .line 1508
    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onCursorMoved()V

    move v5, v7

    .line 1511
    .end local v4       #to:I,
    :goto_30
    return v5

    .line 1505
    :cond_31
    sub-int v5, v3, v7

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .restart local v4       #to:I,
    goto :goto_25

    .line 1511
    .end local v4       #to:I,
    :cond_38
    const/4 v5, 0x0

    goto :goto_30
.end method


# virtual methods
.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->mManager:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1473
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1478
    :goto_c
    return v0

    .line 1475
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/EditStyledText$StyledTextArrowKeyMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1476
    const/4 v0, 0x1

    goto :goto_c

    .line 1478
    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method
