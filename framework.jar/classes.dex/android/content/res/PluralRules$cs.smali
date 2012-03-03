.class Landroid/content/res/PluralRules$cs;
.super Landroid/content/res/PluralRules;
.source "PluralRules.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "cs"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/content/res/PluralRules;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/PluralRules$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/content/res/PluralRules$cs;-><init>()V

    return-void
.end method


# virtual methods
.method quantityForNumber(I)I
    .registers 4
    .parameter "n"

    .prologue
    const/4 v1, 0x2

    .line 87
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    move v0, v1

    .line 94
    :goto_5
    return v0

    .line 90
    :cond_6
    if-lt p1, v1, :cond_e

    const/4 v0, 0x4

    if-gt p1, v0, :cond_e

    .line 91
    const/16 v0, 0x8

    goto :goto_5

    .line 94
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method
