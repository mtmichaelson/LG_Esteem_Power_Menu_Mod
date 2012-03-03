.class public Lcom/android/music/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/RepeatingImageButton$RepeatListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "RepeatingImageButton-policy"



# instance fields
.field private mInterval:J

.field private mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/music/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/android/music/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    .line 150
    new-instance v0, Lcom/android/music/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/music/RepeatingImageButton$1;-><init>(Lcom/android/music/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 52
    invoke-virtual {p0, v2}, Lcom/android/music/RepeatingImageButton;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/android/music/RepeatingImageButton;->setLongClickable(Z)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/RepeatingImageButton;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/RepeatingImageButton;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .registers 9
    .parameter "last"

    .prologue
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 163
    .local v0, now:J
    iget-object v2, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_14

    .line 164
    iget-object v2, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    iget-wide v3, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    sub-long v3, v0, v3

    if-eqz p1, :cond_15

    const/4 v5, -0x1

    :goto_11
    invoke-interface {v2, p0, v3, v4, v5}, Lcom/android/music/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 166
    :cond_14
    return-void

    .line 164
    :cond_15
    iget v5, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    goto :goto_11
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 123
    sparse-switch p1, :sswitch_data_e

    .line 131
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 128
    :sswitch_8
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 129
    const/4 v0, 0x1

    goto :goto_7

    .line 123
    nop

    :sswitch_data_e
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 137
    sparse-switch p1, :sswitch_data_1c

    .line 147
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 141
    :sswitch_a
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/music/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 142
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 144
    iput-wide v2, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    goto :goto_5

    .line 137
    :sswitch_data_1c
    .sparse-switch
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1e

    .line 83
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/music/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 84
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 85
    invoke-direct {p0, v4}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 86
    iput-wide v2, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    .line 117
    :cond_19
    :goto_19
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 90
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 92
    invoke-virtual {p0}, Lcom/android/music/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 95
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/music/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 96
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 97
    invoke-direct {p0, v4}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 98
    iput-wide v2, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    goto :goto_19

    .line 104
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 106
    invoke-virtual {p0}, Lcom/android/music/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 109
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/music/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 110
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 111
    invoke-direct {p0, v4}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 112
    iput-wide v2, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    goto :goto_19
.end method

.method public performLongClick()Z
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    .line 73
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/music/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V
    .registers 4
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 65
    iput-wide p2, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    .line 66
    return-void
.end method
