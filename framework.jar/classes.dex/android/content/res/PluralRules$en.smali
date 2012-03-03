.class Landroid/content/res/PluralRules$en;
.super Landroid/content/res/PluralRules;
.source "PluralRules.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "en"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/content/res/PluralRules;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/PluralRules$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/content/res/PluralRules$en;-><init>()V

    return-void
.end method


# virtual methods
.method quantityForNumber(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 102
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 103
    const/4 v0, 0x2

    .line 106
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method
