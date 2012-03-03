.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"



# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .registers 7
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "haveInfo"

    .prologue
    .line 26
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 27
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 30
    :cond_a
    if-ltz p3, :cond_12

    array-length v1, p1

    if-lt v1, p3, :cond_12

    array-length v1, p2

    if-ge v1, p3, :cond_18

    .line 31
    :cond_12
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 34
    :cond_18
    packed-switch p0, :pswitch_data_32

    .line 39
    :pswitch_1b
    const/4 p0, 0x0

    .line 42
    :goto_1c
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .line 43
    .local v0, result:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    move v0, v1

    .line 44
    :goto_26
    return v0

    .line 35
    .end local v0       #result:I,
    :pswitch_27
    const/4 p0, 0x0

    goto :goto_1c

    .line 36
    :pswitch_29
    const/4 p0, 0x1

    goto :goto_1c

    .line 37
    :pswitch_2b
    const/4 p0, -0x2

    goto :goto_1c

    .line 38
    :pswitch_2d
    const/4 p0, -0x1

    goto :goto_1c

    .line 43
    .restart local v0       #result:I,
    :cond_2f
    const/4 v1, -0x1

    move v0, v1

    goto :goto_26

    .line 34
    :pswitch_data_32
    .packed-switch -0x2
        :pswitch_2d
        :pswitch_29
        :pswitch_1b
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
