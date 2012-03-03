.class public abstract Lcom/android/internal/view/IInputContext$Stub;
.super Landroid/os/Binder;
.source "IInputContext.java"


# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContext$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContext"

.field static final TRANSACTION_beginBatchEdit:I = 0xd

.field static final TRANSACTION_clearMetaKeyStates:I = 0x11

.field static final TRANSACTION_commitCompletion:I = 0x9

.field static final TRANSACTION_commitText:I = 0x8

.field static final TRANSACTION_deleteSurroundingText:I = 0x5

.field static final TRANSACTION_endBatchEdit:I = 0xe

.field static final TRANSACTION_finishComposingText:I = 0x7

.field static final TRANSACTION_getCursorCapsMode:I = 0x3

.field static final TRANSACTION_getExtractedText:I = 0x4

.field static final TRANSACTION_getSelectedText:I = 0x14

.field static final TRANSACTION_getTextAfterCursor:I = 0x2

.field static final TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final TRANSACTION_performContextMenuAction:I = 0xc

.field static final TRANSACTION_performEditorAction:I = 0xb

.field static final TRANSACTION_performPrivateCommand:I = 0x12

.field static final TRANSACTION_reportFullscreenMode:I = 0xf

.field static final TRANSACTION_sendKeyEvent:I = 0x10

.field static final TRANSACTION_setComposingRegion:I = 0x13

.field static final TRANSACTION_setComposingText:I = 0x6

.field static final TRANSACTION_setSelection:I = 0xa



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.view.IInputContext"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputContext;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Lcom/android/internal/view/IInputContext;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputContext$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-string v6, "com.android.internal.view.IInputContext"

    .line 43
    sparse-switch p1, :sswitch_data_1de

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 47
    :sswitch_b
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 48
    goto :goto_a

    .line 52
    :sswitch_12
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v3

    .line 61
    .local v3, _arg3:Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 62
    goto :goto_a

    .line 66
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    .end local v2       #_arg2:I,
    .end local v3       #_arg3:Lcom/android/internal/view/IInputContextCallback;,
    :sswitch_30
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .restart local v1       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .restart local v2       #_arg2:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v3

    .line 75
    .restart local v3       #_arg3:Lcom/android/internal/view/IInputContextCallback;,
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 76
    goto :goto_a

    .line 80
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    .end local v2       #_arg2:I,
    .end local v3       #_arg3:Lcom/android/internal/view/IInputContextCallback;,
    :sswitch_4e
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v2

    .line 87
    .local v2, _arg2:Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 88
    goto :goto_a

    .line 92
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    .end local v2       #_arg2:Lcom/android/internal/view/IInputContextCallback;,
    :sswitch_68
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_91

    .line 95
    sget-object v4, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 101
    .local v0, _arg0:Landroid/view/inputmethod/ExtractedTextRequest;
    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .restart local v1       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v3

    .line 106
    .restart local v3       #_arg3:Lcom/android/internal/view/IInputContextCallback;,
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 107
    goto/16 :goto_a

    .line 98
    .end local v0       #_arg0:Landroid/view/inputmethod/ExtractedTextRequest;,
    .end local v1       #_arg1:I,
    .end local v2       #_arg2:I,
    .end local v3       #_arg3:Lcom/android/internal/view/IInputContextCallback;,
    :cond_91
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/inputmethod/ExtractedTextRequest;,
    goto :goto_7b

    .line 111
    .end local v0       #_arg0:Landroid/view/inputmethod/ExtractedTextRequest;,
    :sswitch_93
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingText(II)V

    move v4, v5

    .line 117
    goto/16 :goto_a

    .line 121
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    :sswitch_a6
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c3

    .line 124
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 130
    .local v0, _arg0:Ljava/lang/CharSequence;
    :goto_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Ljava/lang/CharSequence;I)V

    move v4, v5

    .line 132
    goto/16 :goto_a

    .line 127
    .end local v0       #_arg0:Ljava/lang/CharSequence;,
    .end local v1       #_arg1:I,
    :cond_c3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;,
    goto :goto_b9

    .line 136
    .end local v0       #_arg0:Ljava/lang/CharSequence;,
    :sswitch_c5
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText()V

    move v4, v5

    .line 138
    goto/16 :goto_a

    .line 142
    :sswitch_d0
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ed

    .line 145
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 151
    .restart local v0       #_arg0:Ljava/lang/CharSequence;,
    :goto_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Ljava/lang/CharSequence;I)V

    move v4, v5

    .line 153
    goto/16 :goto_a

    .line 148
    .end local v0       #_arg0:Ljava/lang/CharSequence;,
    .end local v1       #_arg1:I,
    :cond_ed
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;,
    goto :goto_e3

    .line 157
    .end local v0       #_arg0:Ljava/lang/CharSequence;,
    :sswitch_ef
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_108

    .line 160
    sget-object v4, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/CompletionInfo;

    .line 165
    .local v0, _arg0:Landroid/view/inputmethod/CompletionInfo;
    :goto_102
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    move v4, v5

    .line 166
    goto/16 :goto_a

    .line 163
    .end local v0       #_arg0:Landroid/view/inputmethod/CompletionInfo;,
    :cond_108
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/inputmethod/CompletionInfo;,
    goto :goto_102

    .line 170
    .end local v0       #_arg0:Landroid/view/inputmethod/CompletionInfo;,
    :sswitch_10a
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(II)V

    move v4, v5

    .line 176
    goto/16 :goto_a

    .line 180
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    :sswitch_11d
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(I)V

    move v4, v5

    .line 184
    goto/16 :goto_a

    .line 188
    .end local v0       #_arg0:I,
    :sswitch_12c
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 191
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(I)V

    move v4, v5

    .line 192
    goto/16 :goto_a

    .line 196
    .end local v0       #_arg0:I,
    :sswitch_13b
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit()V

    move v4, v5

    .line 198
    goto/16 :goto_a

    .line 202
    :sswitch_146
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit()V

    move v4, v5

    .line 204
    goto/16 :goto_a

    .line 208
    :sswitch_151
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_163

    move v0, v5

    .line 211
    .local v0, _arg0:Z
    :goto_15d
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->reportFullscreenMode(Z)V

    move v4, v5

    .line 212
    goto/16 :goto_a

    .line 210
    .end local v0       #_arg0:Z,
    :cond_163
    const/4 v4, 0x0

    move v0, v4

    goto :goto_15d

    .line 216
    :sswitch_166
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17f

    .line 219
    sget-object v4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 224
    .local v0, _arg0:Landroid/view/KeyEvent;
    :goto_179
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Landroid/view/KeyEvent;)V

    move v4, v5

    .line 225
    goto/16 :goto_a

    .line 222
    .end local v0       #_arg0:Landroid/view/KeyEvent;,
    :cond_17f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/KeyEvent;,
    goto :goto_179

    .line 229
    .end local v0       #_arg0:Landroid/view/KeyEvent;,
    :sswitch_181
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(I)V

    move v4, v5

    .line 233
    goto/16 :goto_a

    .line 237
    .end local v0       #_arg0:I,
    :sswitch_190
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ad

    .line 242
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 247
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_1a7
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    move v4, v5

    .line 248
    goto/16 :goto_a

    .line 245
    .end local v1       #_arg1:Landroid/os/Bundle;,
    :cond_1ad
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;,
    goto :goto_1a7

    .line 252
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Landroid/os/Bundle;,
    :sswitch_1af
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegion(II)V

    move v4, v5

    .line 258
    goto/16 :goto_a

    .line 262
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    :sswitch_1c2
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    .restart local v0       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .restart local v1       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v2

    .line 269
    .local v2, _arg2:Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 270
    goto/16 :goto_a

    .line 43
    nop

    :sswitch_data_1de
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_30
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_68
        0x5 -> :sswitch_93
        0x6 -> :sswitch_a6
        0x7 -> :sswitch_c5
        0x8 -> :sswitch_d0
        0x9 -> :sswitch_ef
        0xa -> :sswitch_10a
        0xb -> :sswitch_11d
        0xc -> :sswitch_12c
        0xd -> :sswitch_13b
        0xe -> :sswitch_146
        0xf -> :sswitch_151
        0x10 -> :sswitch_166
        0x11 -> :sswitch_181
        0x12 -> :sswitch_190
        0x13 -> :sswitch_1af
        0x14 -> :sswitch_1c2
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
