.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"


# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4



# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1120
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 16
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v11, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    sget-object v10, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 52
    sub-int v8, p3, p2

    .line 54
    .local v8, srclen:I
    add-int/lit8 v10, v8, 0x1

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    .line 55
    .local v5, len:I
    new-array v10, v5, [C

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 56
    iput v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 57
    sub-int v10, v5, v8

    iput v10, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 59
    iget-object v10, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 61
    iput v11, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 62
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 63
    .local v1, alloc:I
    new-array v10, v1, [Ljava/lang/Object;

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 64
    new-array v10, v1, [I

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 65
    new-array v10, v1, [I

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 66
    new-array v10, v1, [I

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 68
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_7e

    .line 69
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v6, v0

    .line 70
    .local v6, sp:Landroid/text/Spanned;
    const-class v10, Ljava/lang/Object;

    invoke-interface {v6, p2, p3, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 72
    .local v7, spans:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_44
    array-length v10, v7

    if-ge v4, v10, :cond_7e

    .line 73
    aget-object v10, v7, v4

    instance-of v10, v10, Landroid/text/NoCopySpan;

    if-eqz v10, :cond_50

    .line 72
    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 77
    :cond_50
    aget-object v10, v7, v4

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 78
    .local v9, st:I
    aget-object v10, v7, v4

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 79
    .local v2, en:I
    aget-object v10, v7, v4

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 81
    .local v3, fl:I
    if-gez v9, :cond_69

    .line 82
    const/4 v9, 0x0

    .line 83
    :cond_69
    sub-int v10, p3, p2

    if-le v9, v10, :cond_6f

    .line 84
    sub-int v9, p3, p2

    .line 86
    :cond_6f
    if-gez v2, :cond_72

    .line 87
    const/4 v2, 0x0

    .line 88
    :cond_72
    sub-int v10, p3, p2

    if-le v2, v10, :cond_78

    .line 89
    sub-int v2, p3, p2

    .line 91
    :cond_78
    aget-object v10, v7, v4

    invoke-virtual {p0, v10, v9, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4d

    .line 94
    .end local v2       #en:I,
    .end local v3       #fl:I,
    .end local v4       #i:I,
    .end local v6       #sp:Landroid/text/Spanned;,
    .end local v7       #spans:[Ljava/lang/Object;,
    .end local v9       #st:I,
    :cond_7e
    return-void
.end method

.method private change(IILjava/lang/CharSequence;II)I
    .registers 13
    .parameter "start"
    .parameter "end"
    .parameter "tb"
    .parameter "tbstart"
    .parameter "tbend"

    .prologue
    .line 269
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private change(ZIILjava/lang/CharSequence;II)I
    .registers 30
    .parameter "notify"
    .parameter "start"
    .parameter "end"
    .parameter "tb"
    .parameter "tbstart"
    .parameter "tbend"

    .prologue
    .line 274
    const-string/jumbo v5, "replace"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 275
    sub-int v19, p6, p5

    .line 276
    .local v19, ret:I
    const/16 v18, 0x0

    .line 278
    .local v18, recipients:[Landroid/text/TextWatcher;
    if-eqz p1, :cond_21

    .line 279
    sub-int v5, p3, p2

    sub-int v6, p6, p5

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendTextWillChange(III)[Landroid/text/TextWatcher;

    move-result-object v18

    .line 282
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v15, v5, v6

    .local v15, i:I
    :goto_29
    if-ltz v15, :cond_e1

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    aget v5, v5, v15

    and-int/lit8 v5, v5, 0x33

    const/16 v6, 0x33

    if-ne v5, v6, :cond_d7

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v22, v5, v15

    .line 285
    .local v22, st:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, v22

    move v1, v5

    if-le v0, v1, :cond_50

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int v22, v22, v5

    .line 288
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v13, v5, v15

    .line 289
    .local v13, en:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    if-le v13, v5, :cond_64

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int/2addr v13, v5

    .line 292
    :cond_64
    move/from16 v17, v22

    .line 293
    .local v17, ost:I
    move/from16 v16, v13

    .line 294
    .local v16, oen:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 296
    .local v12, clen:I
    move/from16 v0, v22

    move/from16 v1, p2

    if-le v0, v1, :cond_93

    move/from16 v0, v22

    move/from16 v1, p3

    if-gt v0, v1, :cond_93

    .line 297
    move/from16 v22, p3

    :goto_7a
    move/from16 v0, v22

    move v1, v12

    if-ge v0, v1, :cond_93

    .line 298
    move/from16 v0, v22

    move/from16 v1, p3

    if-le v0, v1, :cond_db

    const/4 v5, 0x1

    sub-int v5, v22, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_db

    .line 302
    :cond_93
    move v0, v13

    move/from16 v1, p2

    if-le v0, v1, :cond_b4

    move v0, v13

    move/from16 v1, p3

    if-gt v0, v1, :cond_b4

    .line 303
    move/from16 v13, p3

    :goto_9f
    if-ge v13, v12, :cond_b4

    .line 304
    move v0, v13

    move/from16 v1, p3

    if-le v0, v1, :cond_de

    const/4 v5, 0x1

    sub-int v5, v13, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_de

    .line 308
    :cond_b4
    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_bf

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_d7

    .line 309
    :cond_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    aget-object v5, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v6, v0

    aget v6, v6, v15

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v22

    move v3, v13

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 282
    .end local v12       #clen:I,
    .end local v13       #en:I,
    .end local v16       #oen:I,
    .end local v17       #ost:I,
    .end local v22       #st:I,
    :cond_d7
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_29

    .line 297
    .restart local v12       #clen:I,
    .restart local v13       #en:I,
    .restart local v16       #oen:I,
    .restart local v17       #ost:I,
    .restart local v22       #st:I,
    :cond_db
    add-int/lit8 v22, v22, 0x1

    goto :goto_7a

    .line 303
    :cond_de
    add-int/lit8 v13, v13, 0x1

    goto :goto_9f

    .line 313
    .end local v12       #clen:I,
    .end local v13       #en:I,
    .end local v16       #oen:I,
    .end local v17       #ost:I,
    .end local v22       #st:I,
    :cond_e1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 315
    sub-int v5, p6, p5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v6, v0

    sub-int v7, p3, p2

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_10d

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v6, v0

    sub-int/2addr v5, v6

    add-int v5, v5, p6

    sub-int v5, v5, p5

    sub-int v6, p3, p2

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 319
    :cond_10d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    sub-int v6, p6, p5

    sub-int v7, p3, p2

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int v6, p6, p5

    sub-int v7, p3, p2

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_13f

    .line 323
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v5, v0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move-object v3, v5

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 327
    move-object/from16 v0, p4

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_1b9

    .line 328
    move-object/from16 v0, p4

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v20, v0

    .line 329
    .local v20, sp:Landroid/text/Spanned;
    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, v20

    move/from16 v1, p5

    move/from16 v2, p6

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .line 331
    .local v21, spans:[Ljava/lang/Object;
    const/4 v15, 0x0

    :goto_16b
    move-object/from16 v0, v21

    array-length v0, v0

    move v5, v0

    if-ge v15, v5, :cond_1b9

    .line 332
    aget-object v5, v21, v15

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 333
    .restart local v22       #st:I,
    aget-object v5, v21, v15

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 335
    .restart local v13       #en:I,
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_18b

    .line 336
    move/from16 v22, p5

    .line 337
    :cond_18b
    move v0, v13

    move/from16 v1, p6

    if-le v0, v1, :cond_192

    .line 338
    move/from16 v13, p6

    .line 340
    :cond_192
    aget-object v5, v21, v15

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1b6

    .line 341
    const/4 v6, 0x0

    aget-object v7, v21, v15

    sub-int v5, v22, p5

    add-int v8, v5, p2

    sub-int v5, v13, p5

    add-int v9, v5, p2

    aget-object v5, v21, v15

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 331
    :cond_1b6
    add-int/lit8 v15, v15, 0x1

    goto :goto_16b

    .line 350
    .end local v13       #en:I,
    .end local v20       #sp:Landroid/text/Spanned;,
    .end local v21       #spans:[Ljava/lang/Object;,
    .end local v22       #st:I,
    :cond_1b9
    move/from16 v0, p6

    move/from16 v1, p5

    if-le v0, v1, :cond_1dc

    sub-int v5, p3, p2

    if-nez v5, :cond_1dc

    .line 351
    if-eqz p1, :cond_1db

    .line 352
    sub-int v5, p3, p2

    sub-int v6, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    .line 404
    :cond_1db
    :goto_1db
    return v19

    .line 359
    :cond_1dc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v6, v0

    array-length v6, v6

    if-ne v5, v6, :cond_2ff

    const/4 v5, 0x1

    move v11, v5

    .line 361
    .local v11, atend:Z
    :goto_1f1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v15, v5, v6

    :goto_1f9
    if-ltz v15, :cond_315

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v5, v5, v15

    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_240

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v5, v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v7, v0

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_240

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    aget v5, v5, v15

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v14, v5, 0x4

    .line 366
    .local v14, flag:I
    const/4 v5, 0x2

    if-eq v14, v5, :cond_22e

    const/4 v5, 0x3

    if-ne v14, v5, :cond_303

    if-eqz v11, :cond_303

    .line 367
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v7, v0

    add-int/2addr v6, v7

    aput v6, v5, v15

    .line 372
    .end local v14       #flag:I,
    :cond_240
    :goto_240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v5, v5, v15

    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_283

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v5, v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v7, v0

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_283

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    aget v5, v5, v15

    and-int/lit8 v14, v5, 0xf

    .line 376
    .restart local v14       #flag:I,
    const/4 v5, 0x2

    if-eq v14, v5, :cond_271

    const/4 v5, 0x3

    if-ne v14, v5, :cond_30c

    if-eqz v11, :cond_30c

    .line 377
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v7, v0

    add-int/2addr v6, v7

    aput v6, v5, v15

    .line 385
    .end local v14       #flag:I,
    :cond_283
    :goto_283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v5, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v6, v0

    aget v6, v6, v15

    if-ge v5, v6, :cond_2fb

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    add-int/lit8 v9, v15, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    add-int/lit8 v9, v15, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    add-int/lit8 v9, v15, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    add-int/lit8 v9, v15, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 361
    :cond_2fb
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_1f9

    .line 359
    .end local v11       #atend:Z,
    :cond_2ff
    const/4 v5, 0x0

    move v11, v5

    goto/16 :goto_1f1

    .line 369
    .restart local v11       #atend:Z,
    .restart local v14       #flag:I,
    :cond_303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aput p2, v5, v15

    goto/16 :goto_240

    .line 379
    :cond_30c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aput p2, v5, v15

    goto/16 :goto_283

    .line 399
    .end local v14       #flag:I,
    :cond_315
    if-eqz p1, :cond_1db

    .line 400
    sub-int v5, p3, p2

    sub-int v6, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    goto/16 :goto_1db
.end method

.method private checkRange(Ljava/lang/String;II)V
    .registers 9
    .parameter "operation"
    .parameter "start"
    .parameter "end"

    .prologue
    const-string v4, " "

    .line 934
    if-ge p3, p2, :cond_2b

    .line 935
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 940
    :cond_2b
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 942
    .local v0, len:I
    if-gt p2, v0, :cond_33

    if-le p3, v0, :cond_5e

    .line 943
    :cond_33
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 948
    :cond_5e
    if-ltz p2, :cond_62

    if-gez p3, :cond_89

    .line 949
    :cond_62
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_89
    return-void
.end method

.method private isprint(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 956
    const/16 v0, 0x20

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_a

    .line 957
    const/4 v0, 0x1

    .line 959
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private moveGapTo(I)V
    .registers 14
    .parameter "where"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 155
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_7

    .line 204
    :goto_6
    return-void

    .line 158
    :cond_7
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_54

    const/4 v6, 0x1

    move v0, v6

    .line 160
    .local v0, atend:Z
    :goto_f
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_57

    .line 161
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    .line 163
    .local v4, overlap:I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :goto_24
    const/4 v3, 0x0

    .local v3, i:I
    :goto_25
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_8f

    .line 174
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    .line 175
    .local v5, start:I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    .line 177
    .local v1, end:I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_38

    .line 178
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    .line 179
    :cond_38
    if-le v5, p1, :cond_69

    .line 180
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    .line 188
    :cond_3d
    :goto_3d
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_44

    .line 189
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    .line 190
    :cond_44
    if-le v1, p1, :cond_7d

    .line 191
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    .line 199
    :cond_49
    :goto_49
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    .line 200
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 158
    .end local v0       #atend:Z,
    .end local v1       #end:I,
    .end local v3       #i:I,
    .end local v4       #overlap:I,
    .end local v5       #start:I,
    :cond_54
    const/4 v6, 0x0

    move v0, v6

    goto :goto_f

    .line 166
    .restart local v0       #atend:Z,
    :cond_57
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    .line 168
    .restart local v4       #overlap:I,
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    .line 181
    .restart local v1       #end:I,
    .restart local v3       #i:I,
    .restart local v5       #start:I,
    :cond_69
    if-ne v5, p1, :cond_3d

    .line 182
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 184
    .local v2, flag:I
    if-eq v2, v10, :cond_79

    if-eqz v0, :cond_3d

    if-ne v2, v11, :cond_3d

    .line 185
    :cond_79
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_3d

    .line 192
    .end local v2       #flag:I,
    :cond_7d
    if-ne v1, p1, :cond_49

    .line 193
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .line 195
    .restart local v2       #flag:I,
    if-eq v2, v10, :cond_8b

    if-eqz v0, :cond_49

    if-ne v2, v11, :cond_49

    .line 196
    :cond_8b
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_49

    .line 203
    .end local v1       #end:I,
    .end local v2       #flag:I,
    .end local v5       #start:I,
    :cond_8f
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    goto/16 :goto_6
.end method

.method private static region(II)Ljava/lang/String;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resizeFor(I)V
    .registers 11
    .parameter "size"

    .prologue
    const/4 v8, 0x0

    .line 130
    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v2

    .line 131
    .local v2, newlen:I
    new-array v3, v2, [C

    .line 133
    .local v3, newtext:[C
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 135
    .local v0, after:I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v5, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int v7, v2, v0

    invoke-static {v5, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v5, :cond_55

    .line 140
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_3e

    .line 141
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v5, v1

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    .line 142
    :cond_3e
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_52

    .line 143
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v5, v1

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    .line 139
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 146
    :cond_55
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v5

    .line 147
    .local v4, oldlen:I
    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 148
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 150
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_72

    .line 151
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :cond_72
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .registers 8
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 902
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 903
    .local v2, recip:[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 905
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 906
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 908
    :cond_14
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 920
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .line 922
    .local v9, recip:[Landroid/text/SpanWatcher;
    array-length v8, v9

    .line 924
    .local v8, n:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_12
    if-ge v7, v8, :cond_22

    .line 925
    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 924
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 927
    :cond_22
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 8
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 911
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 912
    .local v2, recip:[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 914
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 915
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 917
    :cond_14
    return-void
.end method

.method private sendTextChange([Landroid/text/TextWatcher;III)V
    .registers 8
    .parameter "recip"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 886
    array-length v1, p1

    .line 888
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_c

    .line 889
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 891
    :cond_c
    return-void
.end method

.method private sendTextHasChanged([Landroid/text/TextWatcher;)V
    .registers 5
    .parameter "recip"

    .prologue
    .line 894
    array-length v1, p1

    .line 896
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_c

    .line 897
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 899
    :cond_c
    return-void
.end method

.method private sendTextWillChange(III)[Landroid/text/TextWatcher;
    .registers 9
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 874
    add-int v3, p1, p2

    const-class v4, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/TextWatcher;

    .line 875
    .local v2, recip:[Landroid/text/TextWatcher;
    array-length v1, v2

    .line 877
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_16

    .line 878
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 881
    :cond_16
    return-object v2
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .registers 27
    .parameter "send"
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 519
    move/from16 v9, p3

    .line 520
    .local v9, nstart:I
    move/from16 v10, p4

    .line 522
    .local v10, nend:I
    const-string/jumbo v5, "setSpan"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 524
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0xf0

    move v5, v0

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3b

    .line 525
    if-eqz p3, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-eq v0, v1, :cond_3b

    .line 526
    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    .line 528
    .local v11, c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_3b

    .line 529
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 534
    .end local v11       #c:C,
    :cond_3b
    and-int/lit8 v5, p5, 0xf

    const/4 v6, 0x3

    if-ne v5, v6, :cond_61

    .line 535
    if-eqz p4, :cond_61

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_61

    .line 536
    const/4 v5, 0x1

    sub-int v5, p4, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    .line 538
    .restart local v11       #c:C,
    const/16 v5, 0xa

    if-eq v11, v5, :cond_61

    .line 539
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 544
    .end local v11       #c:C,
    :cond_61
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, p3

    move v1, v5

    if-le v0, v1, :cond_df

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    add-int p3, p3, v5

    .line 553
    :cond_72
    :goto_72
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, p4

    move v1, v5

    if-le v0, v1, :cond_108

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    add-int p4, p4, v5

    .line 562
    :cond_83
    :goto_83
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v12, v0

    .line 563
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 565
    .local v20, spans:[Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_8f
    if-ge v14, v12, :cond_130

    .line 566
    aget-object v5, v20, v14

    move-object v0, v5

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_12c

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v7, v5, v14

    .line 568
    .local v7, ostart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v8, v5, v14

    .line 570
    .local v8, oend:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    if-le v7, v5, :cond_b3

    .line 571
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int/2addr v7, v5

    .line 572
    :cond_b3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    if-le v8, v5, :cond_c0

    .line 573
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int/2addr v8, v5

    .line 575
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aput p3, v5, v14

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aput p4, v5, v14

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    aput p5, v5, v14

    .line 579
    if-eqz p1, :cond_de

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    .line 580
    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 612
    .end local v7       #ostart:I,
    .end local v8       #oend:I,
    :cond_de
    :goto_de
    return-void

    .line 546
    .end local v12       #count:I,
    .end local v14       #i:I,
    .end local v20       #spans:[Ljava/lang/Object;,
    :cond_df
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_72

    .line 547
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0xf0

    move v5, v0

    shr-int/lit8 v13, v5, 0x4

    .line 549
    .local v13, flag:I
    const/4 v5, 0x2

    if-eq v13, v5, :cond_ff

    const/4 v5, 0x3

    if-ne v13, v5, :cond_72

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_72

    .line 550
    :cond_ff
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    add-int p3, p3, v5

    goto/16 :goto_72

    .line 555
    .end local v13       #flag:I,
    :cond_108
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_83

    .line 556
    and-int/lit8 v13, p5, 0xf

    .line 558
    .restart local v13       #flag:I,
    const/4 v5, 0x2

    if-eq v13, v5, :cond_123

    const/4 v5, 0x3

    if-ne v13, v5, :cond_83

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_83

    .line 559
    :cond_123
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    add-int p4, p4, v5

    goto/16 :goto_83

    .line 565
    .end local v13       #flag:I,
    .restart local v12       #count:I,
    .restart local v14       #i:I,
    .restart local v20       #spans:[Ljava/lang/Object;,
    :cond_12c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8f

    .line 586
    :cond_130
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v6, v0

    array-length v6, v6

    if-lt v5, v6, :cond_1ca

    .line 587
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v15

    .line 588
    .local v15, newsize:I
    move v0, v15

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 589
    .local v18, newspans:[Ljava/lang/Object;
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 590
    .local v19, newspanstarts:[I
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 591
    .local v16, newspanends:[I
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 593
    .local v17, newspanflags:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v18

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v16

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v17

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 599
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 600
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 601
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 604
    .end local v15       #newsize:I,
    .end local v16       #newspanends:[I,
    .end local v17       #newspanflags:[I,
    .end local v18       #newspans:[Ljava/lang/Object;,
    .end local v19       #newspanstarts:[I,
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v6, v0

    aput-object p2, v5, v6

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v6, v0

    aput p3, v5, v6

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v6, v0

    aput p4, v5, v6

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v6, v0

    aput p5, v5, v6

    .line 608
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 610
    if-eqz p1, :cond_de

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v9

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_de
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .parameter "source"

    .prologue
    .line 97
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_8

    .line 98
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .end local p0       
    move-object v0, p0

    .line 100
    :goto_7
    return-object v0

    .restart local p0       
    :cond_8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .registers 3
    .parameter "text"

    .prologue
    .line 264
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 8
    .parameter "text"

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 253
    .local v1, length:I
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, length:I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 259
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .registers 7
    .parameter "where"

    .prologue
    const-string v4, "charAt: "

    .line 108
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 109
    .local v0, len:I
    if-gez p1, :cond_27

    .line 110
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_27
    if-lt p1, v0, :cond_4c

    .line 112
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_4c
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_58

    .line 117
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    .line 119
    :goto_57
    return v1

    :cond_58
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    goto :goto_57
.end method

.method public clear()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 229
    return-void
.end method

.method public clearSpans()V
    .registers 7

    .prologue
    .line 233
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_5
    if-ltz v0, :cond_2e

    .line 234
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 235
    .local v3, what:Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    .line 236
    .local v2, ostart:I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    .line 238
    .local v1, oend:I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_1a

    .line 239
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 240
    :cond_1a
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_21

    .line 241
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 243
    :cond_21
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 244
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 246
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 233
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 248
    .end local v1       #oend:I,
    .end local v2       #ostart:I,
    .end local v3       #what:Ljava/lang/Object;,
    :cond_2e
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 218
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 220
    .local v6, ret:Landroid/text/SpannableStringBuilder;
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1c

    .line 221
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 223
    :cond_1c
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .registers 14
    .parameter "c"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 1042
    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1044
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_17

    .line 1045
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1055
    :goto_16
    return-void

    .line 1046
    :cond_17
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_2b

    .line 1047
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_16

    .line 1049
    :cond_2b
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1051
    .local v1, buf:[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1052
    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1053
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_16
.end method

.method public getChars(II[CI)V
    .registers 9
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 847
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 849
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_11

    .line 850
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    :goto_10
    return-void

    .line 851
    :cond_11
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_20

    .line 852
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10

    .line 855
    :cond_20
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 1117
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 7
    .parameter "what"

    .prologue
    .line 671
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 672
    .local v0, count:I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 674
    .local v2, spans:[Ljava/lang/Object;
    const/4 v4, 0x1

    sub-int v1, v0, v4

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_1d

    .line 675
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1a

    .line 676
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v4, v1

    .line 678
    .local v3, where:I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_18

    .line 679
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_18
    move v4, v3

    .line 685
    .end local v3       #where:I,
    :goto_19
    return v4

    .line 674
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 685
    :cond_1d
    const/4 v4, -0x1

    goto :goto_19
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 6
    .parameter "what"

    .prologue
    .line 693
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 694
    .local v0, count:I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 696
    .local v2, spans:[Ljava/lang/Object;
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_15

    .line 697
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_12

    .line 698
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v1

    .line 702
    :goto_11
    return v3

    .line 696
    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 702
    :cond_15
    const/4 v3, 0x0

    goto :goto_11
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 7
    .parameter "what"

    .prologue
    .line 649
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 650
    .local v0, count:I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 652
    .local v2, spans:[Ljava/lang/Object;
    const/4 v4, 0x1

    sub-int v1, v0, v4

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_1d

    .line 653
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1a

    .line 654
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .line 656
    .local v3, where:I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_18

    .line 657
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_18
    move v4, v3

    .line 663
    .end local v3       #where:I,
    :goto_19
    return v4

    .line 652
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 663
    :cond_1d
    const/4 v4, -0x1

    goto :goto_19
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 30
    .parameter "queryStart"
    .parameter "queryEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 711
    .local p3, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v18, v0

    .line 712
    .local v18, spanCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 713
    .local v21, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v22, v0

    .line 714
    .local v22, starts:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v7, v0

    .line 715
    .local v7, ends:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v8, v0

    .line 716
    .local v8, flags:[I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v10, v0

    .line 717
    .local v10, gapstart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v9, v0

    .line 719
    .local v9, gaplen:I
    const/4 v5, 0x0

    .line 720
    .local v5, count:I
    const/16 v16, 0x0

    .line 721
    .local v16, ret:[Ljava/lang/Object;
    const/16 v17, 0x0

    .line 723
    .local v17, ret1:Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, i:I
    move-object/from16 v23, v17

    move v6, v5

    .end local v5       #count:I,
    .end local v17       #ret1:Ljava/lang/Object;,
    .local v6, count:I
    :goto_2f
    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_ea

    .line 724
    aget v20, v22, v11

    .line 725
    .local v20, spanStart:I
    aget v19, v7, v11

    .line 727
    .local v19, spanEnd:I
    move/from16 v0, v20

    move v1, v10

    if-le v0, v1, :cond_3f

    .line 728
    sub-int v20, v20, v9

    .line 730
    :cond_3f
    move/from16 v0, v19

    move v1, v10

    if-le v0, v1, :cond_46

    .line 731
    sub-int v19, v19, v9

    .line 734
    :cond_46
    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_51

    move v5, v6

    .line 723
    .end local v6       #count:I,
    .restart local v5       #count:I,
    :goto_4d
    add-int/lit8 v11, v11, 0x1

    move v6, v5

    .end local v5       #count:I,
    .restart local v6       #count:I,
    goto :goto_2f

    .line 737
    :cond_51
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_59

    move v5, v6

    .line 738
    .end local v6       #count:I,
    .restart local v5       #count:I,
    goto :goto_4d

    .line 741
    .end local v5       #count:I,
    .restart local v6       #count:I,
    :cond_59
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_75

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_75

    .line 742
    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_6d

    move v5, v6

    .line 743
    .end local v6       #count:I,
    .restart local v5       #count:I,
    goto :goto_4d

    .line 744
    .end local v5       #count:I,
    .restart local v6       #count:I,
    :cond_6d
    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_75

    move v5, v6

    .line 745
    .end local v6       #count:I,
    .restart local v5       #count:I,
    goto :goto_4d

    .line 748
    .end local v5       #count:I,
    .restart local v6       #count:I,
    :cond_75
    if-eqz p3, :cond_85

    aget-object v24, v21, v11

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_85

    move v5, v6

    .line 749
    .end local v6       #count:I,
    .restart local v5       #count:I,
    goto :goto_4d

    .line 752
    .end local v5       #count:I,
    .restart local v6       #count:I,
    :cond_85
    if-nez v6, :cond_8e

    .line 753
    aget-object v17, v21, v11

    .line 754
    .restart local v17       #ret1:Ljava/lang/Object;,
    add-int/lit8 v5, v6, 0x1

    .end local v6       #count:I,
    .restart local v5       #count:I,
    move-object/from16 v23, v17

    goto :goto_4d

    .line 756
    .end local v5       #count:I,
    .end local v17       #ret1:Ljava/lang/Object;,
    .restart local v6       #count:I,
    :cond_8e
    const/16 v24, 0x1

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_ac

    .line 757
    sub-int v24, v18, v11

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 758
    const/16 v24, 0x0

    aput-object v23, v16, v24

    .line 761
    :cond_ac
    aget v24, v8, v11

    const/high16 v25, 0xff

    and-int v15, v24, v25

    .line 762
    .local v15, prio:I
    if-eqz v15, :cond_e2

    .line 765
    const/4 v12, 0x0

    .local v12, j:I
    :goto_b5
    if-ge v12, v6, :cond_c7

    .line 766
    aget-object v24, v16, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v24

    const/high16 v25, 0xff

    and-int v14, v24, v25

    .line 768
    .local v14, p:I
    if-le v15, v14, :cond_df

    .line 773
    .end local v14       #p:I,
    :cond_c7
    add-int/lit8 v24, v12, 0x1

    sub-int v25, v6, v12

    move-object/from16 v0, v16

    move v1, v12

    move-object/from16 v2, v16

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    aget-object v24, v21, v11

    aput-object v24, v16, v12

    .line 775
    add-int/lit8 v5, v6, 0x1

    .line 776
    .end local v6       #count:I,
    .restart local v5       #count:I,
    goto/16 :goto_4d

    .line 765
    .end local v5       #count:I,
    .restart local v6       #count:I,
    .restart local v14       #p:I,
    :cond_df
    add-int/lit8 v12, v12, 0x1

    goto :goto_b5

    .line 777
    .end local v12       #j:I,
    .end local v14       #p:I,
    :cond_e2
    add-int/lit8 v5, v6, 0x1

    .end local v6       #count:I,
    .restart local v5       #count:I,
    aget-object v24, v21, v11

    aput-object v24, v16, v6

    goto/16 :goto_4d

    .line 782
    .end local v5       #count:I,
    .end local v15       #prio:I,
    .end local v19       #spanEnd:I,
    .end local v20       #spanStart:I,
    .restart local v6       #count:I,
    :cond_ea
    if-nez v6, :cond_f5

    .line 783
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v23, p0

    .line 796
    :goto_f4
    return-object v23

    .line 785
    .restart local p0       
    :cond_f5
    const/16 v24, 0x1

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_11b

    .line 786
    const/16 v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 787
    const/16 v24, 0x0

    aput-object v23, v16, v24

    .line 788
    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    goto :goto_f4

    .line 790
    .restart local p0       
    :cond_11b
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move v0, v6

    move/from16 v1, v23

    if-ne v0, v1, :cond_12e

    .line 791
    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    goto :goto_f4

    .line 794
    :cond_12e
    move-object/from16 v0, p3

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 795
    .local v13, nret:[Ljava/lang/Object;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move-object v2, v13

    move/from16 v3, v24

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    check-cast v13, [Ljava/lang/Object;

    .end local v13       #nret:[Ljava/lang/Object;,
    move-object/from16 v23, v13

    goto :goto_f4
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 10
    .parameter "start"
    .parameter "end"
    .parameter "widths"
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 1086
    const-string v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1090
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_13

    .line 1091
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1103
    .local v1, ret:I
    :goto_12
    return v1

    .line 1092
    .end local v1       #ret:I,
    :cond_13
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_23

    .line 1093
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1       #ret:I,
    goto :goto_12

    .line 1096
    .end local v1       #ret:I,
    :cond_23
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1098
    .local v0, buf:[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1099
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1100
    .restart local v1       #ret:I,
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 9
    .parameter "where"
    .parameter "tb"

    .prologue
    .line 213
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 11
    .parameter "where"
    .parameter "tb"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 208
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .registers 9
    .parameter "start"
    .parameter "end"
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 1062
    const-string v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1066
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_13

    .line 1067
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1078
    .local v1, ret:F
    :goto_12
    return v1

    .line 1068
    .end local v1       #ret:F,
    :cond_13
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_23

    .line 1069
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1       #ret:F,
    goto :goto_12

    .line 1071
    .end local v1       #ret:F,
    :cond_23
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1073
    .local v0, buf:[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1074
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1075
    .restart local v1       #ret:F,
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 14
    .parameter "start"
    .parameter "limit"
    .parameter "kind"

    .prologue
    .line 805
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 806
    .local v0, count:I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 807
    .local v6, spans:[Ljava/lang/Object;
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 808
    .local v8, starts:[I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 809
    .local v2, ends:[I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 810
    .local v4, gapstart:I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 812
    .local v3, gaplen:I
    if-nez p3, :cond_10

    .line 813
    const-class p3, Ljava/lang/Object;

    .line 816
    :cond_10
    const/4 v5, 0x0

    .local v5, i:I
    :goto_11
    if-ge v5, v0, :cond_3a

    .line 817
    aget v7, v8, v5

    .line 818
    .local v7, st:I
    aget v1, v2, v5

    .line 820
    .local v1, en:I
    if-le v7, v4, :cond_1a

    .line 821
    sub-int/2addr v7, v3

    .line 822
    :cond_1a
    if-le v1, v4, :cond_1d

    .line 823
    sub-int/2addr v1, v3

    .line 825
    :cond_1d
    if-le v7, p1, :cond_2a

    if-ge v7, p2, :cond_2a

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 826
    move p2, v7

    .line 827
    :cond_2a
    if-le v1, p1, :cond_37

    if-ge v1, p2, :cond_37

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 828
    move p2, v1

    .line 816
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 831
    .end local v1       #en:I,
    .end local v7       #st:I,
    :cond_3a
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 10
    .parameter "what"

    .prologue
    const/4 v7, 0x1

    .line 618
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    sub-int v1, v4, v7

    .local v1, i:I
    :goto_5
    if-ltz v1, :cond_5c

    .line 619
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-ne v4, p1, :cond_5d

    .line 620
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .line 621
    .local v3, ostart:I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v4, v1

    .line 623
    .local v2, oend:I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_1c

    .line 624
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 625
    :cond_1c
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_23

    .line 626
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 628
    :cond_23
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, v1, 0x1

    sub-int v0, v4, v5

    .line 630
    .local v0, count:I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    sub-int/2addr v4, v7

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 636
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 638
    invoke-direct {p0, p1, v3, v2}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 642
    .end local v0       #count:I,
    .end local v2       #oend:I,
    .end local v3       #ostart:I,
    :cond_5c
    return-void

    .line 618
    :cond_5d
    add-int/lit8 v1, v1, -0x1

    goto :goto_5
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 28
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 10
    .parameter "start"
    .parameter "end"
    .parameter "tb"

    .prologue
    .line 409
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 31
    .parameter "start"
    .parameter "end"
    .parameter "tb"
    .parameter "tbstart"
    .parameter "tbend"

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    array-length v15, v5

    .line 416
    .local v15, filtercount:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_8
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_31

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    aget-object v5, v5, v16

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v23

    .line 420
    .local v23, repl:Ljava/lang/CharSequence;
    if-eqz v23, :cond_2e

    .line 421
    move-object/from16 p3, v23

    .line 422
    const/16 p4, 0x0

    .line 423
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 416
    :cond_2e
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 427
    .end local v23       #repl:Ljava/lang/CharSequence;,
    :cond_31
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_3e

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_3e

    .line 505
    :goto_3d
    return-object p0

    .line 431
    :cond_3e
    move/from16 v0, p2

    move/from16 v1, p1

    if-eq v0, v1, :cond_4a

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_4e

    .line 432
    :cond_4a
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)I

    goto :goto_3d

    .line 434
    :cond_4e
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v24

    .line 435
    .local v24, selstart:I
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    .line 440
    .local v12, selend:I
    const-string/jumbo v5, "replace"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 441
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 444
    sub-int v5, p2, p1

    sub-int v6, p5, p4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendTextWillChange(III)[Landroid/text/TextWatcher;

    move-result-object v22

    .line 447
    .local v22, recipients:[Landroid/text/TextWatcher;
    sub-int v21, p2, p1

    .line 449
    .local v21, origlen:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_8e

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 452
    :cond_8e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v16, v5, v6

    :goto_96
    if-ltz v16, :cond_cd

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    if-ne v5, v6, :cond_b1

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v16

    .line 456
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    if-ne v5, v6, :cond_ca

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v16

    .line 452
    :cond_ca
    add-int/lit8 v16, v16, -0x1

    goto :goto_96

    .line 460
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    const/16 v7, 0x20

    aput-char v7, v5, v6

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 464
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_105

    .line 465
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    :cond_105
    add-int/lit8 v5, p2, 0x1

    sub-int v20, v5, p1

    .line 469
    .local v20, oldlen:I
    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p1, 0x1

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v17

    .line 471
    .local v17, inserted:I
    const/4 v6, 0x0

    add-int/lit8 v8, p1, 0x1

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    .line 472
    const/4 v6, 0x0

    add-int v7, p1, v17

    add-int v5, p1, v17

    add-int v5, v5, v20

    const/4 v8, 0x1

    sub-int v8, v5, v8

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    .line 483
    move/from16 v0, v24

    move/from16 v1, p1

    if-le v0, v1, :cond_1ab

    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_1ab

    .line 484
    sub-int v5, v24, p1

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 486
    .local v18, off:J
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v5, v0

    mul-long v5, v5, v18

    sub-int v7, p2, p1

    int-to-long v7, v7

    div-long v18, v5, v7

    .line 487
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v5, v0

    add-int v8, v5, p1

    .line 489
    .end local v24       #selstart:I,
    .local v8, selstart:I
    const/4 v6, 0x0

    sget-object v7, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v10, 0x22

    move-object/from16 v5, p0

    move v9, v8

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 492
    .end local v18       #off:J,
    :goto_169
    move v0, v12

    move/from16 v1, p1

    if-le v0, v1, :cond_195

    move v0, v12

    move/from16 v1, p2

    if-ge v0, v1, :cond_195

    .line 493
    sub-int v5, v12, p1

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 495
    .restart local v18       #off:J,
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v5, v0

    mul-long v5, v5, v18

    sub-int v7, p2, p1

    int-to-long v7, v7

    div-long v18, v5, v7

    .line 496
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v5, v0

    add-int v12, v5, p1

    .line 498
    const/4 v10, 0x0

    sget-object v11, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v14, 0x22

    move-object/from16 v9, p0

    move v13, v12

    invoke-direct/range {v9 .. v14}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 502
    .end local v18       #off:J,
    :cond_195
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    goto/16 :goto_3d

    .end local v8       #selstart:I,
    .restart local v24       #selstart:I,
    :cond_1ab
    move/from16 v8, v24

    .end local v24       #selstart:I,
    .restart local v8       #selstart:I,
    goto :goto_169
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .parameter "filters"

    .prologue
    .line 1108
    if-nez p1, :cond_8

    .line 1109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1112
    :cond_8
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1113
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 11
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 514
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 515
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 839
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 866
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 867
    .local v1, len:I
    new-array v0, v1, [C

    .line 869
    .local v0, buf:[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 870
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
