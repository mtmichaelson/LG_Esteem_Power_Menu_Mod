.class public abstract Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;
.super Ljava/lang/Object;
.source "SUIBaseIndexerHelper.java"


# interfaces
.implements Lcom/lge/sui/widget/util/SUIIndexerHelper;


# static fields
.field public static final SECTION_INDEX_NUMBER:I = 0x0

.field public static final SECTION_INDEX_UNKNOWN:I = 0x1b

.field public static final UNICODE_ALPHABET_LOWERCASE_END:Ljava/lang/String; = "z"

.field public static final UNICODE_ALPHABET_LOWERCASE_START:Ljava/lang/String; = "a"

.field public static final UNICODE_ALPHABET_UPPERCASE_END:Ljava/lang/String; = "Z"

.field public static final UNICODE_ALPHABET_UPPERCASE_START:Ljava/lang/String; = "A"

.field public static final UNICODE_NUMBER_END:Ljava/lang/String; = "9"

.field public static final UNICODE_NUMBER_START:Ljava/lang/String; = "0"

.field public static final UNICODE_POINT_ALPHABET_LOWERCASE_END:I

.field public static final UNICODE_POINT_ALPHABET_LOWERCASE_START:I

.field public static final UNICODE_POINT_ALPHABET_UPPERCASE_END:I

.field public static final UNICODE_POINT_ALPHABET_UPPERCASE_START:I

.field public static final UNICODE_POINT_NUMBER_END:I

.field public static final UNICODE_POINT_NUMBER_START:I



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_ALPHABET_UPPERCASE_START:I

    .line 20
    const-string v0, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_ALPHABET_UPPERCASE_END:I

    .line 23
    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_ALPHABET_LOWERCASE_START:I

    .line 26
    const-string/jumbo v0, "z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_ALPHABET_LOWERCASE_END:I

    .line 29
    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_NUMBER_START:I

    .line 32
    const-string v0, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_NUMBER_END:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSectionIndexForWord(Ljava/lang/String;)I
.end method

.method public isAlphabet(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 38
    sget v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_ALPHABET_UPPERCASE_START:I

    if-lt p1, v0, :cond_8

    sget v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_ALPHABET_UPPERCASE_END:I

    if-le p1, v0, :cond_10

    :cond_8
    sget v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_ALPHABET_LOWERCASE_START:I

    if-lt p1, v0, :cond_12

    sget v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_ALPHABET_LOWERCASE_END:I

    if-gt p1, v0, :cond_12

    .line 43
    :cond_10
    const/4 v0, 0x1

    .line 45
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isNumber(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 49
    sget v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_NUMBER_START:I

    if-lt p1, v0, :cond_a

    sget v0, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;->UNICODE_POINT_NUMBER_END:I

    if-gt p1, v0, :cond_a

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
