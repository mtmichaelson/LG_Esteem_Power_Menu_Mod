.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"



# static fields
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_MASK:I = -0x40000000

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final FIRST_CJK:C = '\u2e80'

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1



# instance fields
.field private mBottomPadding:I

.field private mChdirs:[B

.field private mChs:[C

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mTopPadding:I

.field private mWidths:[F



# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 54
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 29
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 64
    if-nez p10, :cond_a3

    move-object/from16 v3, p1

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1320
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 79
    if-eqz p10, :cond_c0

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Layout$Ellipsizer;

    .line 82
    .local v16, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 83
    move/from16 v0, p11

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 84
    move-object/from16 v0, p10

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 85
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 87
    const/4 v2, 0x5

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 93
    .end local v16       #e:Landroid/text/Layout$Ellipsizer;,
    :goto_43
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [Landroid/text/Layout$Directions;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 97
    if-eqz p10, :cond_ce

    const/4 v2, 0x1

    move v13, v2

    :goto_6b
    move/from16 v0, p11

    int-to-float v0, v0

    move v14, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p9

    move-object/from16 v15, p10

    invoke-virtual/range {v2 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 101
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 102
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 103
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 104
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 105
    return-void

    .line 64
    :cond_a3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v2, v0

    if-eqz v2, :cond_b5

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_4

    :cond_b5
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_4

    .line 89
    :cond_c0
    const/4 v2, 0x3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 90
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto/16 :goto_43

    .line 97
    :cond_ce
    const/4 v2, 0x0

    move v13, v2

    goto :goto_6b
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 45
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 47
    return-void
.end method

.method constructor <init>(Z)V
    .registers 9
    .parameter "ellipsize"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 108
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1320
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 110
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 111
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 112
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 114
    return-void
.end method

.method static bidi(I[C[BIZ)I
    .registers 10
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "hasInfo"

    .prologue
    .line 631
    invoke-static {p1, p2, p3}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    .line 636
    const/4 p4, 0x1

    if-eq p0, p4, :cond_15

    .end local p4       
    const/4 p4, -0x1

    if-eq p0, p4, :cond_15

    .line 638
    if-ltz p0, :cond_28

    const/4 p0, 0x1

    .line 639
    :goto_c
    const/4 p4, 0x0

    .local p4, j:I
    move v0, p4

    .end local p4       #j:I,
    .local v0, j:I
    :goto_e
    if-ge v0, p3, :cond_15

    .line 640
    aget-byte p4, p2, v0

    .line 642
    .local p4, d:I
    if-nez p4, :cond_2a

    .line 643
    const/4 p0, 0x1

    .line 653
    .end local v0       #j:I,
    .end local p4       #d:I,
    :cond_15
    :goto_15
    const/4 p4, 0x1

    if-ne p0, p4, :cond_33

    const/4 p4, 0x0

    .line 668
    .local p4, SOR:B
    :goto_19
    const/4 v0, 0x0

    .restart local v0       #j:I,
    :goto_1a
    if-ge v0, p3, :cond_3d

    .line 669
    aget-byte v1, p2, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_25

    .line 670
    if-nez v0, :cond_35

    .line 671
    aput-byte p4, p2, v0

    .line 668
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 638
    .end local v0       #j:I,
    .end local p4       #SOR:B,
    :cond_28
    const/4 p0, -0x1

    goto :goto_c

    .line 646
    .restart local v0       #j:I,
    .local p4, d:I
    :cond_2a
    const/4 v1, 0x1

    if-ne p4, v1, :cond_2f

    .line 647
    const/4 p0, -0x1

    .line 648
    goto :goto_15

    .line 639
    :cond_2f
    add-int/lit8 p4, v0, 0x1

    .end local v0       #j:I,
    .local p4, j:I
    move v0, p4

    .end local p4       #j:I,
    .restart local v0       #j:I,
    goto :goto_e

    .line 653
    .end local v0       #j:I,
    :cond_33
    const/4 p4, 0x1

    goto :goto_19

    .line 673
    .restart local v0       #j:I,
    .local p4, SOR:B
    :cond_35
    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget-byte v1, p2, v1

    aput-byte v1, p2, v0

    goto :goto_25

    .line 680
    :cond_3d
    move v0, p4

    .line 681
    .local v0, cur:B
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1       #j:I,
    .local v2, j:I
    :goto_40
    if-ge v2, p3, :cond_5b

    .line 682
    aget-byte v1, p2, v2

    .line 684
    .local v1, d:B
    if-eqz v1, :cond_4c

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4c

    const/4 v3, 0x2

    if-ne v1, v3, :cond_51

    .line 687
    :cond_4c
    move v0, v1

    .line 681
    .end local v1       #d:B,
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v2, 0x1

    .end local v2       #j:I,
    .local v1, j:I
    move v2, v1

    .end local v1       #j:I,
    .restart local v2       #j:I,
    goto :goto_40

    .line 688
    .local v1, d:B
    :cond_51
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4d

    .line 689
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 691
    .end local v1       #d:B,
    const/4 v1, 0x6

    aput-byte v1, p2, v2

    goto :goto_4d

    .line 698
    :cond_5b
    const/4 v0, 0x0

    .end local v2       #j:I,
    .local v0, j:I
    :goto_5c
    if-ge v0, p3, :cond_69

    .line 699
    aget-byte v1, p2, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    .line 700
    const/4 v1, 0x1

    aput-byte v1, p2, v0

    .line 698
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 706
    :cond_69
    const/4 v0, 0x1

    move v1, v0

    .end local v0       #j:I,
    .local v1, j:I
    :goto_6b
    const/4 v0, 0x1

    sub-int v0, p3, v0

    if-ge v1, v0, :cond_a1

    .line 707
    aget-byte v0, p2, v1

    .line 708
    .local v0, d:B
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-byte v3, p2, v2

    .line 709
    .local v3, prev:B
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p2, v2

    .line 711
    .local v2, next:B
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8b

    .line 712
    const/4 v0, 0x3

    if-ne v3, v0, :cond_87

    .end local v0       #d:B,
    const/4 v0, 0x3

    if-ne v2, v0, :cond_87

    .line 714
    const/4 v0, 0x3

    aput-byte v0, p2, v1

    .line 706
    :cond_87
    :goto_87
    add-int/lit8 v0, v1, 0x1

    .end local v1       #j:I,
    .local v0, j:I
    move v1, v0

    .end local v0       #j:I,
    .restart local v1       #j:I,
    goto :goto_6b

    .line 715
    .local v0, d:B
    :cond_8b
    const/4 v4, 0x7

    if-ne v0, v4, :cond_87

    .line 716
    const/4 v0, 0x3

    if-ne v3, v0, :cond_97

    .end local v0       #d:B,
    const/4 v0, 0x3

    if-ne v2, v0, :cond_97

    .line 718
    const/4 v0, 0x3

    aput-byte v0, p2, v1

    .line 719
    :cond_97
    const/4 v0, 0x6

    if-ne v3, v0, :cond_87

    const/4 v0, 0x6

    if-ne v2, v0, :cond_87

    .line 721
    const/4 v0, 0x6

    aput-byte v0, p2, v1

    goto :goto_87

    .line 728
    .end local v2       #next:B,
    .end local v3       #prev:B,
    :cond_a1
    const/4 v0, 0x0

    .line 729
    .local v0, adjacent:Z
    const/4 v1, 0x0

    move v2, v1

    .end local v1       #j:I,
    .local v2, j:I
    :goto_a4
    if-ge v2, p3, :cond_bb

    .line 730
    aget-byte v1, p2, v2

    .line 732
    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_b0

    .line 733
    const/4 v0, 0x1

    .line 729
    .end local v1       #d:B,
    :goto_ac
    add-int/lit8 v1, v2, 0x1

    .end local v2       #j:I,
    .local v1, j:I
    move v2, v1

    .end local v1       #j:I,
    .restart local v2       #j:I,
    goto :goto_a4

    .line 734
    .local v1, d:B
    :cond_b0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_b9

    if-eqz v0, :cond_b9

    .line 735
    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_ac

    .line 737
    :cond_b9
    const/4 v0, 0x0

    goto :goto_ac

    .line 744
    .end local v1       #d:B,
    :cond_bb
    const/4 v0, 0x0

    .line 745
    const/4 v1, 0x1

    sub-int v1, p3, v1

    .end local v2       #j:I,
    .local v1, j:I
    move v2, v1

    .end local v1       #j:I,
    .restart local v2       #j:I,
    :goto_c0
    if-ltz v2, :cond_ee

    .line 746
    aget-byte v1, p2, v2

    .line 748
    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_cc

    .line 749
    const/4 v0, 0x1

    .line 745
    .end local v1       #d:B,
    :cond_c8
    :goto_c8
    add-int/lit8 v1, v2, -0x1

    .end local v2       #j:I,
    .local v1, j:I
    move v2, v1

    .end local v1       #j:I,
    .restart local v2       #j:I,
    goto :goto_c0

    .line 750
    .local v1, d:B
    :cond_cc
    const/4 v3, 0x5

    if-ne v1, v3, :cond_da

    .line 751
    if-eqz v0, :cond_d5

    .line 752
    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_c8

    .line 754
    :cond_d5
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_c8

    .line 757
    :cond_da
    const/4 v0, 0x0

    .line 759
    const/4 v3, 0x4

    if-eq v1, v3, :cond_e9

    const/4 v3, 0x7

    if-eq v1, v3, :cond_e9

    const/16 v3, 0xa

    if-eq v1, v3, :cond_e9

    const/16 v3, 0xb

    if-ne v1, v3, :cond_c8

    .line 763
    :cond_e9
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_c8

    .line 770
    .end local v1       #d:B,
    :cond_ee
    move v0, p4

    .line 771
    .local v0, cur:B
    const/4 v1, 0x0

    .end local v2       #j:I,
    .local v1, j:I
    move v2, v1

    .end local v1       #j:I,
    .restart local v2       #j:I,
    :goto_f1
    if-ge v2, p3, :cond_106

    .line 772
    aget-byte v1, p2, v2

    .line 774
    .local v1, d:B
    if-eq v1, p4, :cond_fc

    if-eqz v1, :cond_fc

    const/4 v3, 0x1

    if-ne v1, v3, :cond_fd

    .line 777
    :cond_fc
    move v0, v1

    .line 779
    :cond_fd
    const/4 v3, 0x3

    if-ne v1, v3, :cond_102

    .line 780
    aput-byte v0, p2, v2

    .line 771
    :cond_102
    add-int/lit8 v1, v2, 0x1

    .end local v2       #j:I,
    .local v1, j:I
    move v2, v1

    .end local v1       #j:I,
    .restart local v2       #j:I,
    goto :goto_f1

    .line 786
    :cond_106
    move v0, p4

    .line 787
    const/4 v1, 0x0

    .end local v2       #j:I,
    .restart local v1       #j:I,
    move v2, v1

    .end local v1       #j:I,
    .restart local v2       #j:I,
    :goto_109
    if-ge v2, p3, :cond_149

    .line 788
    aget-byte v1, p2, v2

    .line 790
    .local v1, d:B
    if-eqz v1, :cond_112

    const/4 v3, 0x1

    if-ne v1, v3, :cond_118

    .line 792
    :cond_112
    move v0, v1

    move v1, v2

    .line 787
    .end local v2       #j:I,
    .local v1, j:I
    :goto_114
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1       #j:I,
    .restart local v2       #j:I,
    goto :goto_109

    .line 793
    .local v1, d:B
    :cond_118
    const/4 v3, 0x3

    if-eq v1, v3, :cond_11e

    const/4 v3, 0x6

    if-ne v1, v3, :cond_121

    .line 795
    :cond_11e
    const/4 v0, 0x1

    move v1, v2

    .end local v2       #j:I,
    .local v1, j:I
    goto :goto_114

    .line 797
    .local v1, d:B
    .restart local v2       #j:I,
    :cond_121
    move v1, p4

    .line 800
    .local v1, dd:B
    add-int/lit8 v3, v2, 0x1

    .local v3, k:I
    :goto_124
    if-ge v3, p3, :cond_12d

    .line 801
    aget-byte v1, p2, v3

    .line 803
    if-eqz v1, :cond_12d

    const/4 v4, 0x1

    if-ne v1, v4, :cond_137

    .line 814
    :cond_12d
    :goto_12d
    move v2, v2

    .local v2, y:I
    :goto_12e
    if-ge v2, v3, :cond_145

    .line 815
    if-ne v1, v0, :cond_142

    .line 816
    aput-byte v0, p2, v2

    .line 814
    :goto_134
    add-int/lit8 v2, v2, 0x1

    goto :goto_12e

    .line 807
    .local v2, j:I
    :cond_137
    const/4 v4, 0x3

    if-eq v1, v4, :cond_13d

    const/4 v4, 0x6

    if-ne v1, v4, :cond_13f

    .line 809
    :cond_13d
    const/4 v1, 0x1

    .line 810
    goto :goto_12d

    .line 800
    :cond_13f
    add-int/lit8 v3, v3, 0x1

    goto :goto_124

    .line 818
    .local v2, y:I
    :cond_142
    aput-byte p4, p2, v2

    goto :goto_134

    .line 821
    :cond_145
    const/4 v1, 0x1

    sub-int v1, v3, v1

    .local v1, j:I
    goto :goto_114

    .line 831
    .end local v1       #j:I,
    .end local v3       #k:I,
    .local v2, j:I
    :cond_149
    const/4 v0, 0x0

    .end local v2       #j:I,
    .local v0, j:I
    move v1, v0

    .end local v0       #j:I,
    .restart local v1       #j:I,
    :goto_14b
    if-ge v1, p3, :cond_163

    .line 832
    aget-char v0, p1, v1

    .line 834
    .local v0, c:C
    const/16 v2, 0x9

    if-eq v0, v2, :cond_15d

    const v2, 0xd800

    if-lt v0, v2, :cond_15f

    const v2, 0xdfff

    if-gt v0, v2, :cond_15f

    .line 835
    :cond_15d
    aput-byte p4, p2, v1

    .line 831
    :cond_15f
    add-int/lit8 v0, v1, 0x1

    .end local v1       #j:I,
    .local v0, j:I
    move v1, v0

    .end local v0       #j:I,
    .restart local v1       #j:I,
    goto :goto_14b

    .line 839
    :cond_163
    return p0
.end method

.method private calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V
    .registers 29
    .parameter "linestart"
    .parameter "lineend"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    .line 1128
    sub-int v8, p2, p1

    .line 1130
    .local v8, len:I
    cmpg-float v15, p9, p6

    if-gtz v15, :cond_2d

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1204
    :goto_2c
    return-void

    .line 1137
    :cond_2d
    const-string/jumbo v15, "\u2026"

    move-object/from16 v0, p10

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1140
    .local v4, ellipsiswid:F
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_7d

    .line 1141
    const/4 v13, 0x0

    .line 1144
    .local v13, sum:F
    move v5, v8

    .local v5, i:I
    :goto_40
    if-ltz v5, :cond_54

    .line 1145
    const/4 v15, 0x1

    sub-int v15, v5, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1147
    .local v14, w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_79

    .line 1154
    .end local v14       #w:F,
    :cond_54
    const/4 v3, 0x0

    .line 1155
    .local v3, ellipsisStart:I
    move v2, v5

    .line 1202
    .end local v5       #i:I,
    .end local v13       #sum:F,
    .local v2, ellipsisCount:I
    :goto_56
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    aput v3, v15, v16

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    aput v2, v15, v16

    goto :goto_2c

    .line 1151
    .end local v2       #ellipsisCount:I,
    .end local v3       #ellipsisStart:I,
    .restart local v5       #i:I,
    .restart local v13       #sum:F,
    .restart local v14       #w:F,
    :cond_79
    add-float/2addr v13, v14

    .line 1144
    add-int/lit8 v5, v5, -0x1

    goto :goto_40

    .line 1156
    .end local v5       #i:I,
    .end local v13       #sum:F,
    .end local v14       #w:F,
    :cond_7d
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-eq v0, v1, :cond_8b

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_a6

    .line 1157
    :cond_8b
    const/4 v13, 0x0

    .line 1160
    .restart local v13       #sum:F,
    const/4 v5, 0x0

    .restart local v5       #i:I,
    :goto_8d
    if-ge v5, v8, :cond_9e

    .line 1161
    add-int v15, v5, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1163
    .restart local v14       #w:F,
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_a2

    .line 1170
    .end local v14       #w:F,
    :cond_9e
    move v3, v5

    .line 1171
    .restart local v3       #ellipsisStart:I,
    sub-int v2, v8, v5

    .line 1172
    .restart local v2       #ellipsisCount:I,
    goto :goto_56

    .line 1167
    .end local v2       #ellipsisCount:I,
    .end local v3       #ellipsisStart:I,
    .restart local v14       #w:F,
    :cond_a2
    add-float/2addr v13, v14

    .line 1160
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    .line 1173
    .end local v5       #i:I,
    .end local v13       #sum:F,
    .end local v14       #w:F,
    :cond_a6
    const/4 v9, 0x0

    .local v9, lsum:F
    const/4 v12, 0x0

    .line 1174
    .local v12, rsum:F
    const/4 v7, 0x0

    .local v7, left:I
    move v11, v8

    .line 1176
    .local v11, right:I
    sub-float v15, p6, v4

    const/high16 v16, 0x4000

    div-float v10, v15, v16

    .line 1177
    .local v10, ravail:F
    move v11, v8

    :goto_b1
    if-ltz v11, :cond_c4

    .line 1178
    const/4 v15, 0x1

    sub-int v15, v11, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1180
    .restart local v14       #w:F,
    add-float v15, v14, v12

    cmpl-float v15, v15, v10

    if-lez v15, :cond_de

    .line 1187
    .end local v14       #w:F,
    :cond_c4
    sub-float v15, p6, v4

    sub-float v6, v15, v12

    .line 1188
    .local v6, lavail:F
    const/4 v7, 0x0

    :goto_c9
    if-ge v7, v11, :cond_d9

    .line 1189
    add-int v15, v7, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1191
    .restart local v14       #w:F,
    add-float v15, v14, v9

    cmpl-float v15, v15, v6

    if-lez v15, :cond_e2

    .line 1198
    .end local v14       #w:F,
    :cond_d9
    move v3, v7

    .line 1199
    .restart local v3       #ellipsisStart:I,
    sub-int v2, v11, v7

    .restart local v2       #ellipsisCount:I,
    goto/16 :goto_56

    .line 1184
    .end local v2       #ellipsisCount:I,
    .end local v3       #ellipsisStart:I,
    .end local v6       #lavail:F,
    .restart local v14       #w:F,
    :cond_de
    add-float/2addr v12, v14

    .line 1177
    add-int/lit8 v11, v11, -0x1

    goto :goto_b1

    .line 1195
    .restart local v6       #lavail:F,
    :cond_e2
    add-float/2addr v9, v14

    .line 1188
    add-int/lit8 v7, v7, 0x1

    goto :goto_c9
.end method

.method private static getFit(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIF)I
    .registers 16
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "wid"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 951
    add-int/lit8 v8, p4, 0x1

    .local v8, high:I
    sub-int v9, p3, v6

    .line 953
    .local v9, low:I
    :goto_6
    sub-int v0, v8, v9

    if-le v0, v6, :cond_1f

    .line 954
    add-int v0, v8, v9

    div-int/lit8 v4, v0, 0x2

    .local v4, guess:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v5

    .line 956
    invoke-static/range {v0 .. v7}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    cmpl-float v0, v0, p5

    if-lez v0, :cond_1d

    .line 958
    move v8, v4

    goto :goto_6

    .line 960
    :cond_1d
    move v9, v4

    goto :goto_6

    .line 963
    .end local v4       #guess:I,
    :cond_1f
    if-ge v9, p3, :cond_23

    move v0, p3

    .line 966
    :goto_22
    return v0

    :cond_23
    move v0, v9

    goto :goto_22
.end method

.method private static final isIdeographic(CZ)Z
    .registers 5
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 854
    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_c

    const/16 v0, 0x2fff

    if-gt p0, v0, :cond_c

    move v0, v1

    .line 931
    :goto_b
    return v0

    .line 857
    :cond_c
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_12

    move v0, v1

    .line 858
    goto :goto_b

    .line 860
    :cond_12
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_23

    const/16 v0, 0x309f

    if-gt p0, v0, :cond_23

    .line 861
    if-nez p1, :cond_1f

    .line 862
    sparse-switch p0, :sswitch_data_88

    :cond_1f
    move v0, v1

    .line 882
    goto :goto_b

    :sswitch_21
    move v0, v2

    .line 879
    goto :goto_b

    .line 884
    :cond_23
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_34

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_34

    .line 885
    if-nez p1, :cond_30

    .line 886
    sparse-switch p0, :sswitch_data_ca

    :cond_30
    move v0, v1

    .line 907
    goto :goto_b

    :sswitch_32
    move v0, v2

    .line 904
    goto :goto_b

    .line 909
    :cond_34
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_3e

    const/16 v0, 0x4db5

    if-gt p0, v0, :cond_3e

    move v0, v1

    .line 910
    goto :goto_b

    .line 912
    :cond_3e
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_49

    const v0, 0x9fbb

    if-gt p0, v0, :cond_49

    move v0, v1

    .line 913
    goto :goto_b

    .line 915
    :cond_49
    const v0, 0xf900

    if-lt p0, v0, :cond_55

    const v0, 0xfad9

    if-gt p0, v0, :cond_55

    move v0, v1

    .line 916
    goto :goto_b

    .line 918
    :cond_55
    const v0, 0xa000

    if-lt p0, v0, :cond_61

    const v0, 0xa48f

    if-gt p0, v0, :cond_61

    move v0, v1

    .line 919
    goto :goto_b

    .line 921
    :cond_61
    const v0, 0xa490

    if-lt p0, v0, :cond_6d

    const v0, 0xa4cf

    if-gt p0, v0, :cond_6d

    move v0, v1

    .line 922
    goto :goto_b

    .line 924
    :cond_6d
    const v0, 0xfe62

    if-lt p0, v0, :cond_79

    const v0, 0xfe66

    if-gt p0, v0, :cond_79

    move v0, v1

    .line 925
    goto :goto_b

    .line 927
    :cond_79
    const v0, 0xff10

    if-lt p0, v0, :cond_85

    const v0, 0xff19

    if-gt p0, v0, :cond_85

    move v0, v1

    .line 928
    goto :goto_b

    :cond_85
    move v0, v2

    .line 931
    goto :goto_b

    .line 862
    nop

    :sswitch_data_88
    .sparse-switch
        0x3041 -> :sswitch_21
        0x3043 -> :sswitch_21
        0x3045 -> :sswitch_21
        0x3047 -> :sswitch_21
        0x3049 -> :sswitch_21
        0x3063 -> :sswitch_21
        0x3083 -> :sswitch_21
        0x3085 -> :sswitch_21
        0x3087 -> :sswitch_21
        0x308e -> :sswitch_21
        0x3095 -> :sswitch_21
        0x3096 -> :sswitch_21
        0x309b -> :sswitch_21
        0x309c -> :sswitch_21
        0x309d -> :sswitch_21
        0x309e -> :sswitch_21
    .end sparse-switch

    .line 886
    :sswitch_data_ca
    .sparse-switch
        0x30a0 -> :sswitch_32
        0x30a1 -> :sswitch_32
        0x30a3 -> :sswitch_32
        0x30a5 -> :sswitch_32
        0x30a7 -> :sswitch_32
        0x30a9 -> :sswitch_32
        0x30c3 -> :sswitch_32
        0x30e3 -> :sswitch_32
        0x30e5 -> :sswitch_32
        0x30e7 -> :sswitch_32
        0x30ee -> :sswitch_32
        0x30f5 -> :sswitch_32
        0x30f6 -> :sswitch_32
        0x30fb -> :sswitch_32
        0x30fc -> :sswitch_32
        0x30fd -> :sswitch_32
        0x30fe -> :sswitch_32
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I
    .registers 63
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseht"
    .parameter "choosehtv"
    .parameter "fm"
    .parameter "tab"
    .parameter "needMultiply"
    .parameter "pstart"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "last"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "ellipsize"
    .parameter "ellipsiswidth"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    .line 980
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v13, v0

    .line 981
    .local v13, j:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    mul-int v31, v13, v5

    .line 982
    .local v31, off:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v32, v5, 0x1

    .line 983
    .local v32, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v29, v0

    .line 987
    .local v29, lines:[I
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-lt v0, v1, :cond_6a

    .line 988
    add-int/lit8 v5, v32, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v30

    .line 989
    .local v30, nlen:I
    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 990
    .local v22, grow:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v29

    move v1, v5

    move-object/from16 v2, v22

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 991
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 992
    move-object/from16 v29, v22

    .line 994
    move/from16 v0, v30

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v23, v0

    .line 995
    .local v23, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v8, v0

    array-length v8, v8

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v23

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 997
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1000
    .end local v22       #grow:[I,
    .end local v23       #grow2:[Landroid/text/Layout$Directions;,
    .end local v30       #nlen:I,
    :cond_6a
    if-eqz p11, :cond_d7

    .line 1001
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1002
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1003
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1004
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1006
    const/16 v25, 0x0

    .local v25, i:I
    :goto_86
    move-object/from16 v0, p11

    array-length v0, v0

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_bf

    .line 1007
    aget-object v5, p11, v25

    instance-of v5, v5, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v5, :cond_ad

    .line 1008
    aget-object v5, p11, v25

    check-cast v5, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v9, p12, v25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p29

    invoke-interface/range {v5 .. v12}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1006
    :goto_aa
    add-int/lit8 v25, v25, 0x1

    goto :goto_86

    .line 1012
    :cond_ad
    aget-object v5, p11, v25

    aget v9, p12, v25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    invoke-interface/range {v5 .. v11}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_aa

    .line 1016
    :cond_bf
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 1017
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 1018
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 1019
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 1022
    .end local v25       #i:I,
    :cond_d7
    if-nez v13, :cond_e6

    .line 1023
    if-eqz p22, :cond_e2

    .line 1024
    sub-int v5, p6, p4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1027
    :cond_e2
    if-eqz p21, :cond_e6

    .line 1028
    move/from16 p4, p6

    .line 1031
    :cond_e6
    if-eqz p20, :cond_f5

    .line 1032
    if-eqz p22, :cond_f1

    .line 1033
    sub-int v5, p7, p5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1036
    :cond_f1
    if-eqz p21, :cond_f5

    .line 1037
    move/from16 p5, p7

    .line 1043
    :cond_f5
    if-eqz p15, :cond_17e

    .line 1044
    sub-int v5, p5, p4

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float v6, p9, v6

    mul-float/2addr v5, v6

    add-float v5, v5, p10

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 1045
    .local v19, ex:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v19, v5

    if-ltz v5, :cond_171

    .line 1046
    const-wide/high16 v5, 0x3fe0

    add-double v5, v5, v19

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .line 1054
    .end local v19       #ex:D,
    .local v21, extra:I
    :goto_113
    add-int/lit8 v5, v31, 0x0

    aput p2, v29, v5

    .line 1055
    add-int/lit8 v5, v31, 0x1

    aput p8, v29, v5

    .line 1056
    add-int/lit8 v5, v31, 0x2

    add-int v6, p5, v21

    aput v6, v29, v5

    .line 1058
    sub-int v5, p5, p4

    add-int v5, v5, v21

    add-int p8, p8, v5

    .line 1059
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x0

    aput p3, v29, v5

    .line 1060
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x1

    aput p8, v29, v5

    .line 1062
    if-eqz p14, :cond_148

    .line 1063
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    aput v6, v29, v5

    .line 1066
    :cond_148
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    shl-int/lit8 v7, p18, 0x1e

    or-int/2addr v6, v7

    aput v6, v29, v5

    .line 1068
    const/16 v18, 0x0

    .line 1069
    .local v18, cur:I
    const/16 v16, 0x0

    .line 1071
    .local v16, count:I
    if-nez p19, :cond_181

    .line 1072
    move/from16 v26, p2

    .local v26, k:I
    :goto_159
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_181

    .line 1073
    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_16e

    .line 1074
    add-int/lit8 v16, v16, 0x1

    .line 1075
    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    .line 1072
    :cond_16e
    add-int/lit8 v26, v26, 0x1

    goto :goto_159

    .line 1048
    .end local v16       #count:I,
    .end local v18       #cur:I,
    .end local v21       #extra:I,
    .end local v26       #k:I,
    .restart local v19       #ex:D,
    :cond_171
    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide v5, v0

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v5, v5

    move v0, v5

    neg-int v0, v0

    move/from16 v21, v0

    .restart local v21       #extra:I,
    goto :goto_113

    .line 1051
    .end local v19       #ex:D,
    .end local v21       #extra:I,
    :cond_17e
    const/16 v21, 0x0

    .restart local v21       #extra:I,
    goto :goto_113

    .line 1082
    .restart local v16       #count:I,
    .restart local v18       #cur:I,
    :cond_181
    if-nez v16, :cond_1bb

    .line 1083
    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1110
    .local v28, linedirs:Landroid/text/Layout$Directions;
    :goto_185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    aput-object v28, v5, v13

    .line 1113
    if-eqz p26, :cond_1ae

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p26

    move-object v1, v5

    if-ne v0, v1, :cond_197

    if-eqz v13, :cond_1ae

    :cond_197
    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p23

    move/from16 v9, p24

    move/from16 v10, p25

    move/from16 v11, p27

    move-object/from16 v12, p26

    move/from16 v14, p28

    move-object/from16 v15, p29

    .line 1114
    invoke-direct/range {v5 .. v15}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V

    .line 1120
    :cond_1ae
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 1121
    return p8

    .line 1085
    .end local v28       #linedirs:Landroid/text/Layout$Directions;,
    :cond_1bb
    add-int/lit8 v5, v16, 0x1

    move v0, v5

    new-array v0, v0, [S

    move-object/from16 v27, v0

    .line 1087
    .local v27, ld:[S
    const/16 v18, 0x0

    .line 1088
    const/16 v16, 0x0

    .line 1089
    move/from16 v24, p2

    .line 1091
    .local v24, here:I
    move/from16 v26, p2

    .restart local v26       #k:I,
    move/from16 v17, v16

    .end local v16       #count:I,
    .local v17, count:I
    :goto_1cc
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_1ed

    .line 1092
    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_20f

    .line 1095
    add-int/lit8 v16, v17, 0x1

    .end local v17       #count:I,
    .restart local v16       #count:I,
    sub-int v5, v26, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    .line 1096
    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    .line 1097
    move/from16 v24, v26

    .line 1091
    :goto_1e8
    add-int/lit8 v26, v26, 0x1

    move/from16 v17, v16

    .end local v16       #count:I,
    .restart local v17       #count:I,
    goto :goto_1cc

    .line 1101
    :cond_1ed
    sub-int v5, p3, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    .line 1103
    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_202

    const/4 v5, 0x0

    aget-short v5, v27, v5

    if-nez v5, :cond_202

    .line 1104
    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;,
    move/from16 v16, v17

    .end local v17       #count:I,
    .restart local v16       #count:I,
    goto :goto_185

    .line 1106
    .end local v16       #count:I,
    .end local v28       #linedirs:Landroid/text/Layout$Directions;,
    .restart local v17       #count:I,
    :cond_202
    new-instance v28, Landroid/text/Layout$Directions;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;,
    move/from16 v16, v17

    .end local v17       #count:I,
    .restart local v16       #count:I,
    goto/16 :goto_185

    .end local v16       #count:I,
    .end local v28       #linedirs:Landroid/text/Layout$Directions;,
    .restart local v17       #count:I,
    :cond_20f
    move/from16 v16, v17

    .end local v17       #count:I,
    .restart local v16       #count:I,
    goto :goto_1e8
.end method


# virtual methods
.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V
    .registers 174
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "breakOnlyAtSpaces"
    .parameter "ellipsizedWidth"
    .parameter "where"

    .prologue
    .line 123
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 125
    const/16 v20, 0x0

    .line 126
    .local v20, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_13

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_d7

    :cond_13
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 128
    .local v27, needMultiply:Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    .line 129
    .local v11, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v24, 0x0

    .line 131
    .local v24, choosehtv:[I
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v139

    .line 132
    .local v139, end:I
    if-ltz v139, :cond_dc

    sub-int v5, v139, p2

    move/from16 v135, v5

    .line 133
    .local v135, bufsiz:I
    :goto_30
    const/16 v140, 0x1

    .line 135
    .local v140, first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object v5, v0

    if-nez v5, :cond_62

    .line 136
    add-int/lit8 v5, v135, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 137
    add-int/lit8 v5, v135, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    new-array v5, v5, [C

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 138
    add-int/lit8 v5, v135, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 141
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object/from16 v29, v0

    .line 142
    .local v29, chdirs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChs:[C

    move-object/from16 v137, v0

    .line 143
    .local v137, chs:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWidths:[F

    move-object v10, v0

    .line 145
    .local v10, widths:[F
    const/16 v130, 0x0

    .line 146
    .local v130, alter:Landroid/text/AlteredCharSequence;
    const/4 v7, 0x0

    .line 148
    .local v7, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_82

    .line 149
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 151
    :cond_82
    const/16 v117, 0x1

    .line 153
    .local v117, DEFAULT_DIR:I
    move/from16 v28, p2

    .local v28, start:I
    :goto_86
    move/from16 v0, v28

    move/from16 v1, p3

    if-gt v0, v1, :cond_6ac

    .line 154
    if-eqz v140, :cond_e2

    .line 155
    const/16 v140, 0x0

    .line 159
    :goto_90
    if-gez v139, :cond_f0

    .line 160
    move/from16 v139, p3

    .line 164
    :goto_94
    const/16 v141, 0x1

    .line 165
    .local v141, firstWidthLineCount:I
    move/from16 v142, p5

    .line 166
    .local v142, firstwidth:I
    move/from16 v151, p5

    .line 168
    .local v151, restwidth:I
    const/16 v23, 0x0

    .line 170
    .local v23, chooseht:[Landroid/text/style/LineHeightSpan;
    if-eqz v7, :cond_14a

    .line 173
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v152

    check-cast v152, [Landroid/text/style/LeadingMarginSpan;

    .line 174
    .local v152, sp:[Landroid/text/style/LeadingMarginSpan;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_ad
    move-object/from16 v0, v152

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_f3

    .line 175
    aget-object v148, v152, v8

    .line 176
    .local v148, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v152, v8

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v142, v142, v5

    .line 177
    aget-object v5, v152, v8

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v151, v151, v5

    .line 178
    move-object/from16 v0, v148

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_d4

    .line 179
    check-cast v148, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .end local v148       #lms:Landroid/text/style/LeadingMarginSpan;,
    invoke-interface/range {v148 .. v148}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v141

    .line 174
    :cond_d4
    add-int/lit8 v8, v8, 0x1

    goto :goto_ad

    .line 126
    .end local v7       #spanned:Landroid/text/Spanned;,
    .end local v8       #i:I,
    .end local v10       #widths:[F,
    .end local v11       #fm:Landroid/graphics/Paint$FontMetricsInt;,
    .end local v23       #chooseht:[Landroid/text/style/LineHeightSpan;,
    .end local v24       #choosehtv:[I,
    .end local v27       #needMultiply:Z,
    .end local v28       #start:I,
    .end local v29       #chdirs:[B,
    .end local v117       #DEFAULT_DIR:I,
    .end local v130       #alter:Landroid/text/AlteredCharSequence;,
    .end local v135       #bufsiz:I,
    .end local v137       #chs:[C,
    .end local v139       #end:I,
    .end local v140       #first:Z,
    .end local v141       #firstWidthLineCount:I,
    .end local v142       #firstwidth:I,
    .end local v151       #restwidth:I,
    .end local v152       #sp:[Landroid/text/style/LeadingMarginSpan;,
    :cond_d7
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_16

    .line 132
    .restart local v11       #fm:Landroid/graphics/Paint$FontMetricsInt;,
    .restart local v24       #choosehtv:[I,
    .restart local v27       #needMultiply:Z,
    .restart local v139       #end:I,
    :cond_dc
    sub-int v5, p3, p2

    move/from16 v135, v5

    goto/16 :goto_30

    .line 157
    .restart local v7       #spanned:Landroid/text/Spanned;,
    .restart local v10       #widths:[F,
    .restart local v28       #start:I,
    .restart local v29       #chdirs:[B,
    .restart local v117       #DEFAULT_DIR:I,
    .restart local v130       #alter:Landroid/text/AlteredCharSequence;,
    .restart local v135       #bufsiz:I,
    .restart local v137       #chs:[C,
    .restart local v140       #first:Z,
    :cond_e2
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v28

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v139

    goto :goto_90

    .line 162
    :cond_f0
    add-int/lit8 v139, v139, 0x1

    goto :goto_94

    .line 183
    .restart local v8       #i:I,
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;,
    .restart local v141       #firstWidthLineCount:I,
    .restart local v142       #firstwidth:I,
    .restart local v151       #restwidth:I,
    .restart local v152       #sp:[Landroid/text/style/LeadingMarginSpan;,
    :cond_f3
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    .end local v23       #chooseht:[Landroid/text/style/LineHeightSpan;,
    check-cast v23, [Landroid/text/style/LineHeightSpan;

    .line 185
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;,
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_14a

    .line 186
    if-eqz v24, :cond_113

    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_120

    .line 188
    :cond_113
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 192
    :cond_120
    const/4 v8, 0x0

    :goto_121
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_14a

    .line 193
    aget-object v5, v23, v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v150

    .line 195
    .local v150, o:I
    move/from16 v0, v150

    move/from16 v1, v28

    if-ge v0, v1, :cond_147

    .line 199
    move-object/from16 v0, p0

    move/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v24, v8

    .line 192
    :goto_144
    add-int/lit8 v8, v8, 0x1

    goto :goto_121

    .line 203
    :cond_147
    aput v20, v24, v8

    goto :goto_144

    .line 209
    .end local v8       #i:I,
    .end local v150       #o:I,
    .end local v152       #sp:[Landroid/text/style/LeadingMarginSpan;,
    :cond_14a
    sub-int v5, v139, v28

    move-object/from16 v0, v29

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_163

    .line 210
    sub-int v5, v139, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 211
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 213
    :cond_163
    sub-int v5, v139, v28

    move-object/from16 v0, v137

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_17c

    .line 214
    sub-int v5, v139, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v137, v0

    .line 215
    move-object/from16 v0, v137

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 217
    :cond_17c
    sub-int v5, v139, v28

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v10

    if-le v5, v6, :cond_192

    .line 218
    sub-int v5, v139, v28

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v10, v5, [F

    .line 219
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 222
    :cond_192
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v139

    move-object/from16 v3, v137

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 223
    sub-int v149, v139, v28

    .line 225
    .local v149, n:I
    const/16 v31, 0x1

    .line 226
    .local v31, easy:Z
    const/16 v131, 0x0

    .line 227
    .local v131, altered:Z
    move/from16 v30, v117

    .line 229
    .local v30, dir:I
    const/4 v8, 0x0

    .restart local v8       #i:I,
    :goto_1a8
    move v0, v8

    move/from16 v1, v149

    if-ge v0, v1, :cond_1b5

    .line 230
    aget-char v5, v137, v8

    const/16 v6, 0x590

    if-lt v5, v6, :cond_200

    .line 231
    const/16 v31, 0x0

    .line 240
    :cond_1b5
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_206

    .line 241
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v152, v0

    .line 242
    .local v152, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v152

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v153

    check-cast v153, [Landroid/text/style/ReplacementSpan;

    .line 244
    .local v153, spans:[Landroid/text/style/ReplacementSpan;
    const/16 v159, 0x0

    .local v159, y:I
    :goto_1d3
    move-object/from16 v0, v153

    array-length v0, v0

    move v5, v0

    move/from16 v0, v159

    move v1, v5

    if-ge v0, v1, :cond_206

    .line 245
    aget-object v5, v153, v159

    move-object/from16 v0, v152

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v129

    .line 246
    .local v129, a:I
    aget-object v5, v153, v159

    move-object/from16 v0, v152

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v132

    .line 248
    .local v132, b:I
    move/from16 v158, v129

    .local v158, x:I
    :goto_1f0
    move/from16 v0, v158

    move/from16 v1, v132

    if-ge v0, v1, :cond_203

    .line 249
    sub-int v5, v158, v28

    const v6, 0xfffc

    aput-char v6, v137, v5

    .line 248
    add-int/lit8 v158, v158, 0x1

    goto :goto_1f0

    .line 229
    .end local v129       #a:I,
    .end local v132       #b:I,
    .end local v152       #sp:Landroid/text/Spanned;,
    .end local v153       #spans:[Landroid/text/style/ReplacementSpan;,
    .end local v158       #x:I,
    .end local v159       #y:I,
    :cond_200
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a8

    .line 244
    .restart local v129       #a:I,
    .restart local v132       #b:I,
    .restart local v152       #sp:Landroid/text/Spanned;,
    .restart local v153       #spans:[Landroid/text/style/ReplacementSpan;,
    .restart local v158       #x:I,
    .restart local v159       #y:I,
    :cond_203
    add-int/lit8 v159, v159, 0x1

    goto :goto_1d3

    .line 254
    .end local v129       #a:I,
    .end local v132       #b:I,
    .end local v152       #sp:Landroid/text/Spanned;,
    .end local v153       #spans:[Landroid/text/style/ReplacementSpan;,
    .end local v158       #x:I,
    .end local v159       #y:I,
    :cond_206
    if-nez v31, :cond_245

    .line 256
    const/4 v5, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v137

    move-object/from16 v2, v29

    move/from16 v3, v149

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout;->bidi(I[C[BIZ)I

    move-result v30

    .line 260
    const/4 v8, 0x0

    :goto_217
    move v0, v8

    move/from16 v1, v149

    if-ge v0, v1, :cond_245

    .line 261
    aget-byte v5, v29, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_23f

    .line 264
    move/from16 v147, v8

    .local v147, j:I
    :goto_223
    move/from16 v0, v147

    move/from16 v1, v149

    if-ge v0, v1, :cond_22e

    .line 265
    aget-byte v5, v29, v147

    const/4 v6, 0x1

    if-eq v5, v6, :cond_242

    .line 270
    :cond_22e
    sub-int v5, v147, v8

    move-object/from16 v0, v137

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    move-result v5

    if-eqz v5, :cond_23c

    .line 271
    const/16 v131, 0x1

    .line 273
    :cond_23c
    const/4 v5, 0x1

    sub-int v8, v147, v5

    .line 260
    .end local v147       #j:I,
    :cond_23f
    add-int/lit8 v8, v8, 0x1

    goto :goto_217

    .line 264
    .restart local v147       #j:I,
    :cond_242
    add-int/lit8 v147, v147, 0x1

    goto :goto_223

    .line 280
    .end local v147       #j:I,
    :cond_245
    if-eqz v131, :cond_3b4

    .line 281
    if-nez v130, :cond_3a7

    .line 282
    move-object/from16 v0, p1

    move-object/from16 v1, v137

    move/from16 v2, v28

    move/from16 v3, v139

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v130

    .line 286
    :goto_255
    move-object/from16 v154, v130

    .line 291
    .local v154, sub:Ljava/lang/CharSequence;
    :goto_257
    move/from16 v157, v142

    .line 293
    .local v157, width:I
    const/16 v98, 0x0

    .line 294
    .local v98, w:F
    move/from16 v14, v28

    .line 296
    .local v14, here:I
    move/from16 v15, v28

    .line 297
    .local v15, ok:I
    move/from16 v40, v98

    .line 298
    .local v40, okwidth:F
    const/16 v16, 0x0

    .local v16, okascent:I
    const/16 v17, 0x0

    .local v17, okdescent:I
    const/16 v18, 0x0

    .local v18, oktop:I
    const/16 v19, 0x0

    .line 300
    .local v19, okbottom:I
    move/from16 v44, v28

    .line 301
    .local v44, fit:I
    move/from16 v69, v98

    .line 302
    .local v69, fitwidth:F
    const/16 v45, 0x0

    .local v45, fitascent:I
    const/16 v46, 0x0

    .local v46, fitdescent:I
    const/16 v47, 0x0

    .local v47, fittop:I
    const/16 v48, 0x0

    .line 304
    .local v48, fitbottom:I
    const/16 v26, 0x0

    .line 307
    .local v26, tab:Z
    move/from16 v8, v28

    :goto_279
    move v0, v8

    move/from16 v1, v139

    if-ge v0, v1, :cond_638

    .line 308
    if-nez v7, :cond_3b8

    .line 309
    move/from16 v9, v139

    .line 315
    .local v9, next:I
    :goto_282
    if-nez v7, :cond_3c5

    .line 316
    move-object/from16 v0, p4

    move-object/from16 v1, v154

    move v2, v8

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 317
    const/4 v5, 0x0

    sub-int v6, v139, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 339
    :goto_29f
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v146, v0

    .line 340
    .local v146, fmtop:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v144, v0

    .line 341
    .local v144, fmbottom:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v143, v0

    .line 342
    .local v143, fmascent:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v145, v0

    .line 354
    .local v145, fmdescent:I
    move/from16 v147, v8

    .restart local v147       #j:I,
    :goto_2b5
    move/from16 v0, v147

    move v1, v9

    if-ge v0, v1, :cond_635

    .line 355
    sub-int v5, v147, v28

    aget-char v136, v137, v5

    .line 356
    .local v136, c:C
    move/from16 v133, v98

    .line 358
    .local v133, before:F
    const/16 v5, 0xa

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_41f

    .line 398
    :goto_2c7
    move/from16 v0, v157

    int-to-float v0, v0

    move v5, v0

    cmpg-float v5, v98, v5

    if-gtz v5, :cond_4b4

    .line 399
    move/from16 v69, v98

    .line 400
    add-int/lit8 v44, v147, 0x1

    .line 402
    move/from16 v0, v146

    move/from16 v1, v47

    if-ge v0, v1, :cond_2db

    .line 403
    move/from16 v47, v146

    .line 404
    :cond_2db
    move/from16 v0, v143

    move/from16 v1, v45

    if-ge v0, v1, :cond_2e3

    .line 405
    move/from16 v45, v143

    .line 406
    :cond_2e3
    move/from16 v0, v145

    move/from16 v1, v46

    if-le v0, v1, :cond_2eb

    .line 407
    move/from16 v46, v145

    .line 408
    :cond_2eb
    move/from16 v0, v144

    move/from16 v1, v48

    if-le v0, v1, :cond_2f3

    .line 409
    move/from16 v48, v144

    .line 427
    :cond_2f3
    const/16 v5, 0x20

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_37f

    const/16 v5, 0x9

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_37f

    const/16 v5, 0x2e

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_31d

    const/16 v5, 0x2c

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_31d

    const/16 v5, 0x3a

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_31d

    const/16 v5, 0x3b

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_33f

    :cond_31d
    const/4 v5, 0x1

    sub-int v5, v147, v5

    if-lt v5, v14, :cond_32f

    const/4 v5, 0x1

    sub-int v5, v147, v5

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_33f

    :cond_32f
    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_37f

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_37f

    :cond_33f
    const/16 v5, 0x2f

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_34d

    const/16 v5, 0x2d

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_35d

    :cond_34d
    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_37f

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_37f

    :cond_35d
    const/16 v5, 0x2e80

    move/from16 v0, v136

    move v1, v5

    if-lt v0, v1, :cond_3a3

    const/4 v5, 0x1

    move/from16 v0, v136

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_3a3

    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_3a3

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_3a3

    .line 435
    :cond_37f
    move/from16 v40, v98

    .line 436
    add-int/lit8 v15, v147, 0x1

    .line 438
    move/from16 v0, v47

    move/from16 v1, v18

    if-ge v0, v1, :cond_38b

    .line 439
    move/from16 v18, v47

    .line 440
    :cond_38b
    move/from16 v0, v45

    move/from16 v1, v16

    if-ge v0, v1, :cond_393

    .line 441
    move/from16 v16, v45

    .line 442
    :cond_393
    move/from16 v0, v46

    move/from16 v1, v17

    if-le v0, v1, :cond_39b

    .line 443
    move/from16 v17, v46

    .line 444
    :cond_39b
    move/from16 v0, v48

    move/from16 v1, v19

    if-le v0, v1, :cond_3a3

    .line 445
    move/from16 v19, v48

    .line 354
    :cond_3a3
    :goto_3a3
    add-int/lit8 v147, v147, 0x1

    goto/16 :goto_2b5

    .line 284
    .end local v9       #next:I,
    .end local v14       #here:I,
    .end local v15       #ok:I,
    .end local v16       #okascent:I,
    .end local v17       #okdescent:I,
    .end local v18       #oktop:I,
    .end local v19       #okbottom:I,
    .end local v26       #tab:Z,
    .end local v40       #okwidth:F,
    .end local v44       #fit:I,
    .end local v45       #fitascent:I,
    .end local v46       #fitdescent:I,
    .end local v47       #fittop:I,
    .end local v48       #fitbottom:I,
    .end local v69       #fitwidth:F,
    .end local v98       #w:F,
    .end local v133       #before:F,
    .end local v136       #c:C,
    .end local v143       #fmascent:I,
    .end local v144       #fmbottom:I,
    .end local v145       #fmdescent:I,
    .end local v146       #fmtop:I,
    .end local v147       #j:I,
    .end local v154       #sub:Ljava/lang/CharSequence;,
    .end local v157       #width:I,
    :cond_3a7
    move-object/from16 v0, v130

    move-object/from16 v1, v137

    move/from16 v2, v28

    move/from16 v3, v139

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->update([CII)V

    goto/16 :goto_255

    .line 288
    :cond_3b4
    move-object/from16 v154, p1

    .restart local v154       #sub:Ljava/lang/CharSequence;,
    goto/16 :goto_257

    .line 311
    .restart local v14       #here:I,
    .restart local v15       #ok:I,
    .restart local v16       #okascent:I,
    .restart local v17       #okdescent:I,
    .restart local v18       #oktop:I,
    .restart local v19       #okbottom:I,
    .restart local v26       #tab:Z,
    .restart local v40       #okwidth:F,
    .restart local v44       #fit:I,
    .restart local v45       #fitascent:I,
    .restart local v46       #fitdescent:I,
    .restart local v47       #fittop:I,
    .restart local v48       #fitbottom:I,
    .restart local v69       #fitwidth:F,
    .restart local v98       #w:F,
    .restart local v157       #width:I,
    :cond_3b8
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v7

    move v1, v8

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .restart local v9       #next:I,
    goto/16 :goto_282

    .line 322
    :cond_3c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/text/TextPaint;->baselineShift:I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v5, p4

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 327
    const/4 v5, 0x0

    sub-int v6, v139, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget v5, v5, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_405

    .line 331
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 332
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_29f

    .line 334
    :cond_405
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 335
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_29f

    .line 360
    .restart local v133       #before:F,
    .restart local v136       #c:C,
    .restart local v143       #fmascent:I,
    .restart local v144       #fmbottom:I,
    .restart local v145       #fmdescent:I,
    .restart local v146       #fmtop:I,
    .restart local v147       #j:I,
    :cond_41f
    const/16 v5, 0x9

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_438

    .line 361
    const/4 v5, 0x0

    move-object/from16 v0, v154

    move/from16 v1, v28

    move/from16 v2, v139

    move/from16 v3, v98

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v98

    .line 362
    const/16 v26, 0x1

    goto/16 :goto_2c7

    .line 363
    :cond_438
    const v5, 0xd800

    move/from16 v0, v136

    move v1, v5

    if-lt v0, v1, :cond_4a9

    const v5, 0xdfff

    move/from16 v0, v136

    move v1, v5

    if-gt v0, v1, :cond_4a9

    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_4a9

    .line 364
    sub-int v5, v147, v28

    move-object/from16 v0, v137

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v138

    .line 366
    .local v138, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v138

    move v1, v5

    if-lt v0, v1, :cond_49e

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v138

    move v1, v5

    if-gt v0, v1, :cond_49e

    .line 367
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v134

    .line 370
    .local v134, bm:Landroid/graphics/Bitmap;
    if-eqz v134, :cond_493

    .line 373
    if-nez v7, :cond_48c

    .line 374
    move-object/from16 v155, p4

    .line 379
    .local v155, whichPaint:Landroid/graphics/Paint;
    :goto_472
    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v155 .. v155}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v156, v5, v6

    .line 383
    .local v156, wid:F
    add-float v98, v98, v156

    .line 384
    const/16 v26, 0x1

    .line 385
    add-int/lit8 v147, v147, 0x1

    .line 386
    goto/16 :goto_2c7

    .line 376
    .end local v155       #whichPaint:Landroid/graphics/Paint;,
    .end local v156       #wid:F,
    :cond_48c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v155, v0

    .restart local v155       #whichPaint:Landroid/graphics/Paint;,
    goto :goto_472

    .line 387
    .end local v155       #whichPaint:Landroid/graphics/Paint;,
    :cond_493
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_2c7

    .line 390
    .end local v134       #bm:Landroid/graphics/Bitmap;,
    :cond_49e
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_2c7

    .line 393
    .end local v138       #emoji:I,
    :cond_4a9
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_2c7

    .line 447
    :cond_4b4
    if-eqz p11, :cond_518

    .line 448
    if-eq v15, v14, :cond_4f2

    .line 451
    :goto_4b8
    if-ge v15, v9, :cond_4c5

    sub-int v5, v15, v28

    aget-char v5, v137, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4c5

    .line 452
    add-int/lit8 v15, v15, 0x1

    goto :goto_4b8

    .line 455
    :cond_4c5
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_4ee

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_4cd
    sub-int v37, v139, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 467
    move v14, v15

    goto/16 :goto_3a3

    .line 455
    :cond_4ee
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_4cd

    .line 471
    :cond_4f2
    move/from16 v69, v98

    .line 472
    add-int/lit8 v44, v147, 0x1

    .line 474
    move/from16 v0, v146

    move/from16 v1, v47

    if-ge v0, v1, :cond_4fe

    .line 475
    move/from16 v47, v146

    .line 476
    :cond_4fe
    move/from16 v0, v143

    move/from16 v1, v45

    if-ge v0, v1, :cond_506

    .line 477
    move/from16 v45, v143

    .line 478
    :cond_506
    move/from16 v0, v145

    move/from16 v1, v46

    if-le v0, v1, :cond_50e

    .line 479
    move/from16 v46, v145

    .line 480
    :cond_50e
    move/from16 v0, v144

    move/from16 v1, v48

    if-le v0, v1, :cond_3a3

    .line 481
    move/from16 v48, v144

    goto/16 :goto_3a3

    .line 484
    :cond_518
    if-eq v15, v14, :cond_574

    .line 487
    :goto_51a
    if-ge v15, v9, :cond_527

    sub-int v5, v15, v28

    aget-char v5, v137, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_527

    .line 488
    add-int/lit8 v15, v15, 0x1

    goto :goto_51a

    .line 491
    :cond_527
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_570

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_52f
    sub-int v37, v139, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 503
    move v14, v15

    .line 543
    .end local v98       #w:F,
    :goto_54e
    if-ge v14, v8, :cond_630

    .line 544
    move v9, v14

    move/from16 v147, v14

    .line 549
    :goto_553
    move/from16 v44, v14

    move v15, v14

    .line 550
    const/16 v98, 0x0

    .line 551
    .restart local v98       #w:F,
    const/16 v48, 0x0

    move/from16 v47, v48

    move/from16 v46, v48

    move/from16 v45, v48

    .line 552
    const/16 v19, 0x0

    move/from16 v18, v19

    move/from16 v17, v19

    move/from16 v16, v19

    .line 554
    add-int/lit8 v141, v141, -0x1

    if-gtz v141, :cond_3a3

    .line 555
    move/from16 v157, v151

    goto/16 :goto_3a3

    .line 491
    :cond_570
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_52f

    .line 504
    :cond_574
    move/from16 v0, v44

    move v1, v14

    if-eq v0, v1, :cond_5bb

    .line 506
    move/from16 v0, v44

    move/from16 v1, p3

    if-ne v0, v1, :cond_5b7

    const/4 v5, 0x1

    move/from16 v61, v5

    :goto_582
    sub-int v66, v139, v28

    move-object/from16 v41, p0

    move-object/from16 v42, p1

    move/from16 v43, v14

    move/from16 v49, v20

    move/from16 v50, p7

    move/from16 v51, p8

    move-object/from16 v52, v23

    move-object/from16 v53, v24

    move-object/from16 v54, v11

    move/from16 v55, v26

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v29

    move/from16 v59, v30

    move/from16 v60, v31

    move/from16 v62, p9

    move/from16 v63, p10

    move-object/from16 v64, v10

    move/from16 v65, v28

    move-object/from16 v67, p13

    move/from16 v68, p12

    move-object/from16 v70, p4

    invoke-direct/range {v41 .. v70}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 519
    move/from16 v14, v44

    goto :goto_54e

    .line 506
    :cond_5b7
    const/4 v5, 0x0

    move/from16 v61, v5

    goto :goto_582

    .line 522
    :cond_5bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v33, v0

    add-int/lit8 v36, v14, 0x1

    const/16 v39, 0x0

    move-object/from16 v32, p4

    move-object/from16 v34, p1

    move/from16 v35, v14

    move-object/from16 v37, v11

    move/from16 v38, v26

    invoke-static/range {v32 .. v39}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    .line 526
    add-int/lit8 v73, v14, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v74, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v75, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v76, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v77, v0

    add-int/lit8 v5, v14, 0x1

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_62c

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_5f2
    sub-int v95, v139, v28

    sub-int v5, v14, v28

    aget v98, v10, v5

    .end local v98       #w:F,
    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 540
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_54e

    .line 526
    .restart local v98       #w:F,
    :cond_62c
    const/4 v5, 0x0

    move/from16 v90, v5

    goto :goto_5f2

    .line 546
    .end local v98       #w:F,
    :cond_630
    const/4 v5, 0x1

    sub-int v147, v14, v5

    goto/16 :goto_553

    .line 307
    .end local v133       #before:F,
    .end local v136       #c:C,
    .restart local v98       #w:F,
    :cond_635
    move v8, v9

    goto/16 :goto_279

    .line 561
    .end local v9       #next:I,
    .end local v143       #fmascent:I,
    .end local v144       #fmbottom:I,
    .end local v145       #fmdescent:I,
    .end local v146       #fmtop:I,
    .end local v147       #j:I,
    :cond_638
    move/from16 v0, v139

    move v1, v14

    if-eq v0, v1, :cond_6a4

    .line 562
    or-int v5, v47, v48

    or-int v5, v5, v46

    or-int v5, v5, v45

    if-nez v5, :cond_65f

    .line 563
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 565
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v47, v0

    .line 566
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v48, v0

    .line 567
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v45, v0

    .line 568
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v46, v0

    .line 573
    :cond_65f
    move/from16 v0, v139

    move/from16 v1, p3

    if-ne v0, v1, :cond_711

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_668
    sub-int v95, v139, v28

    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v73, v139

    move/from16 v74, v45

    move/from16 v75, v46

    move/from16 v76, v47

    move/from16 v77, v48

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 585
    :cond_6a4
    move/from16 v28, v139

    .line 587
    move/from16 v0, v139

    move/from16 v1, p3

    if-ne v0, v1, :cond_716

    .line 591
    .end local v8       #i:I,
    .end local v14       #here:I,
    .end local v15       #ok:I,
    .end local v16       #okascent:I,
    .end local v17       #okdescent:I,
    .end local v18       #oktop:I,
    .end local v19       #okbottom:I,
    .end local v23       #chooseht:[Landroid/text/style/LineHeightSpan;,
    .end local v26       #tab:Z,
    .end local v30       #dir:I,
    .end local v31       #easy:Z,
    .end local v40       #okwidth:F,
    .end local v44       #fit:I,
    .end local v45       #fitascent:I,
    .end local v46       #fitdescent:I,
    .end local v47       #fittop:I,
    .end local v48       #fitbottom:I,
    .end local v69       #fitwidth:F,
    .end local v98       #w:F,
    .end local v131       #altered:Z,
    .end local v141       #firstWidthLineCount:I,
    .end local v142       #firstwidth:I,
    .end local v149       #n:I,
    .end local v151       #restwidth:I,
    .end local v154       #sub:Ljava/lang/CharSequence;,
    .end local v157       #width:I,
    :cond_6ac
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_6c0

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_710

    .line 594
    :cond_6c0
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 596
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v113, 0x0

    const/16 v118, 0x1

    const/16 v119, 0x1

    const/16 v124, 0x0

    const/16 v127, 0x0

    move-object/from16 v99, p0

    move-object/from16 v100, p1

    move/from16 v101, p3

    move/from16 v102, p3

    move/from16 v107, v20

    move/from16 v108, p7

    move/from16 v109, p8

    move-object/from16 v112, v11

    move/from16 v114, v27

    move/from16 v115, p3

    move-object/from16 v116, v29

    move/from16 v120, p9

    move/from16 v121, p10

    move-object/from16 v122, v10

    move/from16 v123, p2

    move-object/from16 v125, p13

    move/from16 v126, p12

    move-object/from16 v128, p4

    invoke-direct/range {v99 .. v128}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 607
    :cond_710
    return-void

    .line 573
    .restart local v8       #i:I,
    .restart local v14       #here:I,
    .restart local v15       #ok:I,
    .restart local v16       #okascent:I,
    .restart local v17       #okdescent:I,
    .restart local v18       #oktop:I,
    .restart local v19       #okbottom:I,
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;,
    .restart local v26       #tab:Z,
    .restart local v30       #dir:I,
    .restart local v31       #easy:Z,
    .restart local v40       #okwidth:F,
    .restart local v44       #fit:I,
    .restart local v45       #fitascent:I,
    .restart local v46       #fitdescent:I,
    .restart local v47       #fittop:I,
    .restart local v48       #fitbottom:I,
    .restart local v69       #fitwidth:F,
    .restart local v98       #w:F,
    .restart local v131       #altered:Z,
    .restart local v141       #firstWidthLineCount:I,
    .restart local v142       #firstwidth:I,
    .restart local v149       #n:I,
    .restart local v151       #restwidth:I,
    .restart local v154       #sub:Ljava/lang/CharSequence;,
    .restart local v157       #width:I,
    :cond_711
    const/4 v5, 0x0

    move/from16 v90, v5

    goto/16 :goto_668

    .line 153
    :cond_716
    move/from16 v28, v139

    goto/16 :goto_86
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 1263
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1268
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 1269
    const/4 v0, 0x0

    .line 1272
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1277
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 1278
    const/4 v0, 0x0

    .line 1281
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 1286
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 4
    .parameter "line"

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 1231
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .parameter "line"

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .registers 8
    .parameter "vertical"

    .prologue
    .line 1211
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1212
    .local v1, high:I
    const/4 v3, -0x1

    .line 1214
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1215
    .local v2, lines:[I
    :goto_5
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1b

    .line 1216
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1217
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_19

    .line 1218
    move v1, v0

    goto :goto_5

    .line 1220
    :cond_19
    move v3, v0

    goto :goto_5

    .line 1223
    .end local v0       #guess:I,
    :cond_1b
    if-gez v3, :cond_1f

    .line 1224
    const/4 v4, 0x0

    .line 1226
    :goto_1e
    return v4

    :cond_1f
    move v4, v3

    goto :goto_1e
.end method

.method public getLineStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1243
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1235
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1247
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 1259
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
