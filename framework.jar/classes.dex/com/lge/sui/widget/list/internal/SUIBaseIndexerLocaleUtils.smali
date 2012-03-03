.class public abstract Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;
.super Ljava/lang/Object;
.source "SUIBaseIndexerLocaleUtils.java"


# interfaces
.implements Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;


# static fields
.field public static final UNICODE_NUMBER_END:Ljava/lang/String; = "9"

.field public static final UNICODE_NUMBER_START:Ljava/lang/String; = "0"

.field public static final UNICODE_POINT_NUMBER_END:I

.field public static final UNICODE_POINT_NUMBER_START:I



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;->UNICODE_POINT_NUMBER_START:I

    .line 16
    const-string v0, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;->UNICODE_POINT_NUMBER_END:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 28
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isNumber(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 19
    sget v0, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;->UNICODE_POINT_NUMBER_START:I

    if-lt p0, v0, :cond_a

    sget v0, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;->UNICODE_POINT_NUMBER_END:I

    if-gt p0, v0, :cond_a

    .line 22
    const/4 v0, 0x1

    .line 24
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getSectionIndexArray(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    .line 32
    const v4, 0x3080019

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, indexes:Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 34
    .local v3, length:I
    new-array v1, v3, [Ljava/lang/String;

    .line 35
    .local v1, indexArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v3, :cond_1d

    .line 36
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 38
    :cond_1d
    return-object v1
.end method
