.class public Landroid/inputmethodservice/ExtractEditText;
.super Landroid/widget/EditText;
.source "ExtractEditText.java"



# static fields
.field private static final CLASS_NAME_AIME:Ljava/lang/String; = "com.lge.android.aime.AIME"



# instance fields
.field private final ID_START_SELECTING_TEXT:I

.field private final ID_STOP_SELECTING_TEXT:I

.field private mCursorRect:Landroid/graphics/Rect;

.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field private mSettingExtractedText:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x1020028

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->ID_START_SELECTING_TEXT:I

    .line 36
    const v0, 0x1020029

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->ID_STOP_SELECTING_TEXT:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v0, 0x1020028

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->ID_START_SELECTING_TEXT:I

    .line 36
    const v0, 0x1020029

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->ID_STOP_SELECTING_TEXT:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const v0, 0x1020028

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->ID_START_SELECTING_TEXT:I

    .line 36
    const v0, 0x1020029

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->ID_STOP_SELECTING_TEXT:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    .line 50
    return-void
.end method


# virtual methods
.method public finishInternalChanges()V
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 72
    return-void
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hasVerticalScrollBar()Z
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInputMethodTarget()Z
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public isWatchingCursor()Z
    .registers 4

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lge.android.aime.AIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_14

    move-result v1

    if-eqz v1, :cond_1d

    .line 129
    const/4 v1, 0x1

    .line 134
    :goto_13
    return v1

    .line 131
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ExtractEditText"

    const-string v2, "IME died in isWatchingCursor: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0       #e:Ljava/lang/Exception;,
    :cond_1d
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected onSelectionChanged(II)V
    .registers 4
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 91
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    if-ltz p2, :cond_11

    .line 92
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 94
    :cond_11
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_18

    .line 113
    const v0, 0x1020028

    if-eq p1, v0, :cond_18

    const v0, 0x1020029

    if-eq p1, v0, :cond_18

    .line 114
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 115
    const/4 v0, 0x1

    .line 120
    :goto_17
    return v0

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_17
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "newCursor"

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isWatchingCursor()Z

    move-result v1

    if-eqz v1, :cond_25

    if-eqz p1, :cond_25

    .line 142
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 143
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 144
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursor(Landroid/graphics/Rect;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    .line 146
    :cond_1a
    const/4 v1, 0x1

    .line 152
    :goto_1b
    return v1

    .line 148
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ExtractEditText"

    const-string v2, "IME died in onUpdateCursor: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0       #e:Ljava/lang/Exception;,
    :cond_25
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditText;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 152
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_11

    .line 102
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 5
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 80
    :try_start_1
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 81
    invoke-super {p0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 83
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 85
    return-void

    .line 83
    :catchall_10
    move-exception v0

    iget v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    throw v0
.end method

.method setIME(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .parameter "ime"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 54
    return-void
.end method

.method public startInternalChanges()V
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 63
    return-void
.end method
