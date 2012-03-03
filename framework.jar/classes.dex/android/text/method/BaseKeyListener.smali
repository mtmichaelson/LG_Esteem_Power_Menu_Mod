.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"


# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/BaseKeyListener$1;
    }
.end annotation


# static fields
.field static final OLD_SEL_START:Ljava/lang/Object;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 112
    return-void
.end method

.method private altBackspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    const/4 v4, 0x2

    invoke-static {p2, v4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    if-eq v4, v6, :cond_b

    move v4, v5

    .line 98
    .end local p1       
    :goto_a
    return v4

    .line 79
    .restart local p1       
    :cond_b
    instance-of v4, p1, Landroid/widget/TextView;

    if-nez v4, :cond_11

    move v4, v5

    .line 80
    goto :goto_a

    .line 83
    :cond_11
    check-cast p1, Landroid/widget/TextView;

    .end local p1       
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 85
    .local v2, layout:Landroid/text/Layout;
    if-nez v2, :cond_1b

    move v4, v5

    .line 86
    goto :goto_a

    .line 89
    :cond_1b
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 90
    .local v1, l:I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 91
    .local v3, start:I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 93
    .local v0, end:I
    if-ne v0, v3, :cond_2f

    move v4, v5

    .line 94
    goto :goto_a

    .line 97
    :cond_2f
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v4, v6

    .line 98
    goto :goto_a
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .registers 5
    .parameter "caps"
    .parameter "autoText"

    .prologue
    .line 102
    const/4 v0, 0x1

    .line 103
    .local v0, contentType:I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 114
    :goto_c
    if-eqz p1, :cond_12

    .line 115
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 117
    :cond_12
    return v0

    .line 105
    :pswitch_13
    or-int/lit16 v0, v0, 0x1000

    .line 106
    goto :goto_c

    .line 108
    :pswitch_16
    or-int/lit16 v0, v0, 0x2000

    .line 109
    goto :goto_c

    .line 111
    :pswitch_19
    or-int/lit16 v0, v0, 0x4000

    goto :goto_c

    .line 103
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 42
    const/4 v2, 0x1

    .line 45
    .local v2, result:Z
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 46
    .local v0, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 48
    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 49
    .local v4, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 52
    .local v3, selEnd:I
    if-eq v4, v3, :cond_1c

    .line 53
    invoke-interface {p2, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 67
    :goto_16
    if-eqz v2, :cond_1b

    .line 68
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 70
    :cond_1b
    return v2

    .line 54
    :cond_1c
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->altBackspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 55
    const/4 v2, 0x1

    goto :goto_16

    .line 57
    :cond_24
    invoke-static {p2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 59
    .local v5, to:I
    if-eq v5, v3, :cond_36

    .line 60
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_16

    .line 63
    :cond_36
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 122
    const/16 v0, 0x43

    if-ne p3, v0, :cond_9

    .line 123
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "content"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 135
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    move v5, v7

    .line 157
    :goto_f
    return v5

    .line 144
    :cond_10
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 145
    .local v0, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 147
    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 148
    .local v3, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 151
    .local v2, selEnd:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, text:Ljava/lang/CharSequence;
    if-nez v4, :cond_28

    move v5, v7

    .line 153
    goto :goto_f

    .line 156
    :cond_28
    invoke-interface {p2, v3, v2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 157
    const/4 v5, 0x1

    goto :goto_f
.end method
