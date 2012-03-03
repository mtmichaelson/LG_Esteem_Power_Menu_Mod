.class public Lcom/lge/text/method/Andy_DialerKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "Andy_DialerKeyListener.java"



# static fields
.field public static final CHARACTERS:[C = null

.field private static final STAR_KEY_TOGGLE_DURATION:I = 0x3e8

.field private static sInstance:Lcom/lge/text/method/Andy_DialerKeyListener;



# instance fields
.field private mTimeLastStarKeyPressed:J



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lge/text/method/Andy_DialerKeyListener;->CHARACTERS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
        0x70t 0x0t
        0x77t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/text/method/Andy_DialerKeyListener;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/lge/text/method/Andy_DialerKeyListener;->sInstance:Lcom/lge/text/method/Andy_DialerKeyListener;

    if-eqz v0, :cond_7

    .line 32
    sget-object v0, Lcom/lge/text/method/Andy_DialerKeyListener;->sInstance:Lcom/lge/text/method/Andy_DialerKeyListener;

    .line 35
    :goto_6
    return-object v0

    .line 34
    :cond_7
    new-instance v0, Lcom/lge/text/method/Andy_DialerKeyListener;

    invoke-direct {v0}, Lcom/lge/text/method/Andy_DialerKeyListener;-><init>()V

    sput-object v0, Lcom/lge/text/method/Andy_DialerKeyListener;->sInstance:Lcom/lge/text/method/Andy_DialerKeyListener;

    .line 35
    sget-object v0, Lcom/lge/text/method/Andy_DialerKeyListener;->sInstance:Lcom/lge/text/method/Andy_DialerKeyListener;

    goto :goto_6
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcom/lge/text/method/Andy_DialerKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .registers 4
    .parameter "event"
    .parameter "content"

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/text/method/DialerKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 17
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 54
    const/16 v10, 0x11

    if-ne p3, v10, :cond_64

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 56
    .local v6, timeCurr:J
    iget-wide v10, p0, Lcom/lge/text/method/Andy_DialerKeyListener;->mTimeLastStarKeyPressed:J

    sub-long v8, v6, v10

    .line 57
    .local v8, timeDiff:J
    iput-wide v6, p0, Lcom/lge/text/method/Andy_DialerKeyListener;->mTimeLastStarKeyPressed:J

    .line 59
    const-wide/16 v10, 0x3e8

    cmp-long v10, v8, v10

    if-gtz v10, :cond_64

    .line 60
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 61
    .local v0, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 63
    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 64
    .local v5, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 66
    .local v4, selEnd:I
    if-ltz v5, :cond_28

    if-gez v4, :cond_2e

    .line 67
    :cond_28
    const/4 v4, 0x0

    move v5, v4

    .line 68
    const/4 v10, 0x0

    invoke-static {p2, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 71
    :cond_2e
    if-ne v5, v4, :cond_64

    if-lez v4, :cond_64

    .line 72
    const/4 v3, 0x0

    .line 73
    .local v3, replaceStr:Ljava/lang/String;
    const/4 v10, 0x1

    sub-int v10, v5, v10

    invoke-interface {p2, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 74
    .local v2, lastChar:C
    const/16 v10, 0x2a

    if-ne v2, v10, :cond_4d

    .line 75
    const-string v3, "+"

    .line 84
    :cond_40
    :goto_40
    if-eqz v3, :cond_64

    .line 85
    const/4 v10, 0x1

    sub-int v10, v5, v10

    invoke-interface {p2, v10, v4, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 86
    invoke-static {p2}, Lcom/lge/text/method/Andy_DialerKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 87
    const/4 v10, 0x1

    .line 93
    .end local v0       #a:I,
    .end local v1       #b:I,
    .end local v2       #lastChar:C,
    .end local v3       #replaceStr:Ljava/lang/String;,
    .end local v4       #selEnd:I,
    .end local v5       #selStart:I,
    .end local v6       #timeCurr:J,
    .end local v8       #timeDiff:J,
    :goto_4c
    return v10

    .line 76
    .restart local v0       #a:I,
    .restart local v1       #b:I,
    .restart local v2       #lastChar:C,
    .restart local v3       #replaceStr:Ljava/lang/String;,
    .restart local v4       #selEnd:I,
    .restart local v5       #selStart:I,
    .restart local v6       #timeCurr:J,
    .restart local v8       #timeDiff:J,
    :cond_4d
    const/16 v10, 0x2b

    if-ne v2, v10, :cond_55

    .line 77
    const-string/jumbo v3, "p"

    goto :goto_40

    .line 78
    :cond_55
    const/16 v10, 0x70

    if-ne v2, v10, :cond_5d

    .line 79
    const-string/jumbo v3, "w"

    goto :goto_40

    .line 80
    :cond_5d
    const/16 v10, 0x77

    if-ne v2, v10, :cond_40

    .line 81
    const-string v3, "*"

    goto :goto_40

    .line 93
    .end local v0       #a:I,
    .end local v1       #b:I,
    .end local v2       #lastChar:C,
    .end local v3       #replaceStr:Ljava/lang/String;,
    .end local v4       #selEnd:I,
    .end local v5       #selStart:I,
    .end local v6       #timeCurr:J,
    .end local v8       #timeDiff:J,
    :cond_64
    invoke-super/range {p0 .. p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v10

    goto :goto_4c
.end method
