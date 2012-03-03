.class public Lcom/lge/sui/widget/control/SUIToggleButtonGroup;
.super Landroid/widget/LinearLayout;
.source "SUIToggleButtonGroup.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/control/SUIToggleButtonGroup$OnButtonStateChangedListener;
    }
.end annotation


# instance fields
.field mChangedListener:Lcom/lge/sui/widget/control/SUIToggleButtonGroup$OnButtonStateChangedListener;

.field mEndIndex:I

.field mIsBack:Z

.field mSet:Z

.field mStartIndex:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    .line 30
    iput v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    .line 32
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mSet:Z

    .line 33
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mIsBack:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    .line 30
    iput v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    .line 32
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mSet:Z

    .line 33
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mIsBack:Z

    .line 58
    const v0, 0x1030017

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->setBackgroundColor(I)V

    .line 59
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->initView()V

    .line 60
    return-void
.end method

.method private checkButtonState(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 212
    .local v0, startChild:Landroid/widget/ToggleButton;
    if-eqz v0, :cond_e

    .line 213
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mSet:Z

    .line 215
    :cond_e
    return-void
.end method

.method private initView()V
    .registers 4

    .prologue
    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method private setCheckTouchedView(IIZ)V
    .registers 11
    .parameter "start"
    .parameter "end"
    .parameter "back"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 108
    if-ne p1, p2, :cond_22

    move v2, v5

    .line 110
    .local v2, isClick:Z
    :goto_5
    const/4 v0, 0x0

    .line 112
    .local v0, child:Landroid/widget/ToggleButton;
    if-nez p3, :cond_26

    .line 113
    move v1, p1

    .local v1, i:I
    :goto_9
    add-int/lit8 v4, p2, 0x1

    if-ge v1, v4, :cond_42

    .line 114
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0       #child:Landroid/widget/ToggleButton;,
    check-cast v0, Landroid/widget/ToggleButton;

    .line 116
    .restart local v0       #child:Landroid/widget/ToggleButton;,
    if-nez v2, :cond_1f

    if-eqz v0, :cond_1f

    .line 117
    iget-boolean v4, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mSet:Z

    if-nez v4, :cond_24

    move v4, v5

    :goto_1c
    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 113
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .end local v0       #child:Landroid/widget/ToggleButton;,
    .end local v1       #i:I,
    .end local v2       #isClick:Z,
    :cond_22
    move v2, v6

    .line 108
    goto :goto_5

    .restart local v0       #child:Landroid/widget/ToggleButton;,
    .restart local v1       #i:I,
    .restart local v2       #isClick:Z,
    :cond_24
    move v4, v6

    .line 117
    goto :goto_1c

    .line 121
    .end local v1       #i:I,
    :cond_26
    move v1, p1

    .restart local v1       #i:I,
    :goto_27
    sub-int v4, p2, v5

    if-le v1, v4, :cond_42

    .line 122
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0       #child:Landroid/widget/ToggleButton;,
    check-cast v0, Landroid/widget/ToggleButton;

    .line 124
    .restart local v0       #child:Landroid/widget/ToggleButton;,
    if-nez v2, :cond_3d

    if-eqz v0, :cond_3d

    .line 125
    iget-boolean v4, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mSet:Z

    if-nez v4, :cond_40

    move v4, v5

    :goto_3a
    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 121
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_40
    move v4, v6

    .line 125
    goto :goto_3a

    .line 131
    :cond_42
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mChangedListener:Lcom/lge/sui/widget/control/SUIToggleButtonGroup$OnButtonStateChangedListener;

    if-eqz v4, :cond_55

    .line 132
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 133
    .local v3, tb:Landroid/widget/ToggleButton;
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mChangedListener:Lcom/lge/sui/widget/control/SUIToggleButtonGroup$OnButtonStateChangedListener;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    invoke-interface {v4, v3, v5, p2}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup$OnButtonStateChangedListener;->onStateChanged(Landroid/widget/ToggleButton;ZI)V

    .line 136
    .end local v3       #tb:Landroid/widget/ToggleButton;,
    :cond_55
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "child"
    .parameter "params"

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    return-void
.end method

.method public getCheckedChildList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ToggleButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ToggleButton;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1e

    .line 79
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 81
    .local v0, child:Landroid/widget/ToggleButton;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 82
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 85
    .end local v0       #child:Landroid/widget/ToggleButton;,
    :cond_1e
    return-object v2
.end method

.method public getChildIndex(Landroid/widget/ToggleButton;)I
    .registers 5
    .parameter "view"

    .prologue
    .line 97
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 98
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 100
    .local v0, child:Landroid/widget/ToggleButton;
    if-ne v0, p1, :cond_11

    move v2, v1

    .line 104
    .end local v0       #child:Landroid/widget/ToggleButton;,
    :goto_10
    return v2

    .line 97
    .restart local v0       #child:Landroid/widget/ToggleButton;,
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    .end local v0       #child:Landroid/widget/ToggleButton;,
    :cond_14
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 155
    .local v7, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 157
    .local v5, viewHeight:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 158
    .local v2, locX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 159
    .local v3, locY:F
    int-to-float v8, v7

    div-float v8, v2, v8

    float-to-int v0, v8

    .line 160
    .local v0, currentIndex:I
    int-to-float v8, v5

    sub-float/2addr v8, v3

    float-to-int v6, v8

    .line 162
    .local v6, viewLocY:I
    if-ltz v6, :cond_1d

    if-le v6, v5, :cond_26

    :cond_1d
    move v1, v10

    .line 164
    .local v1, isOut:Z
    :goto_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_80

    .line 206
    :cond_25
    :goto_25
    return v11

    .end local v1       #isOut:Z,
    :cond_26
    move v1, v11

    .line 162
    goto :goto_1e

    .line 167
    .restart local v1       #isOut:Z,
    :pswitch_28
    iput v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    iput v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    .line 168
    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    invoke-direct {p0, v8}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->checkButtonState(I)V

    goto :goto_25

    .line 172
    :pswitch_32
    iput v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    .line 174
    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    iget v9, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    if-ne v8, v9, :cond_25

    .line 175
    iput v11, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    iput v11, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    goto :goto_25

    .line 180
    :pswitch_3f
    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    if-eq v0, v8, :cond_25

    .line 182
    iget v4, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    .line 183
    .local v4, mBefore:I
    iput v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    .line 184
    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    iget v9, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    if-ge v8, v9, :cond_7e

    move v8, v10

    :goto_4e
    iput-boolean v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mIsBack:Z

    .line 186
    iget-boolean v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mIsBack:Z

    if-nez v8, :cond_61

    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    if-le v4, v8, :cond_61

    .line 187
    iput v4, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    .line 188
    iput-boolean v10, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mIsBack:Z

    .line 190
    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    invoke-direct {p0, v8}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->checkButtonState(I)V

    .line 193
    :cond_61
    iget-boolean v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mIsBack:Z

    if-eqz v8, :cond_72

    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    if-ge v4, v8, :cond_72

    .line 194
    iput v4, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    .line 195
    iput-boolean v11, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mIsBack:Z

    .line 197
    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    invoke-direct {p0, v8}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->checkButtonState(I)V

    .line 200
    :cond_72
    if-nez v1, :cond_25

    .line 201
    iget v8, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStartIndex:I

    iget v9, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEndIndex:I

    iget-boolean v10, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mIsBack:Z

    invoke-direct {p0, v8, v9, v10}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->setCheckTouchedView(IIZ)V

    goto :goto_25

    :cond_7e
    move v8, v11

    .line 184
    goto :goto_4e

    .line 164
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_28
        :pswitch_32
        :pswitch_3f
    .end packed-switch
.end method

.method public setOnButtonChangedListener(Lcom/lge/sui/widget/control/SUIToggleButtonGroup$OnButtonStateChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mChangedListener:Lcom/lge/sui/widget/control/SUIToggleButtonGroup$OnButtonStateChangedListener;

    .line 219
    return-void
.end method
