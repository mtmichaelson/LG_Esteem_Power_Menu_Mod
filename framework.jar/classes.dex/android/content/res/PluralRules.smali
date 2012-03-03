.class abstract Landroid/content/res/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/PluralRules$1;,
        Landroid/content/res/PluralRules$en;,
        Landroid/content/res/PluralRules$cs;
    }
.end annotation


# static fields
.field static final ID_OTHER:I = 0x1000004

.field static final QUANTITY_FEW:I = 0x8

.field static final QUANTITY_MANY:I = 0x10

.field static final QUANTITY_ONE:I = 0x2

.field static final QUANTITY_OTHER:I = 0x0

.field static final QUANTITY_TWO:I = 0x4

.field static final QUANTITY_ZERO:I = 0x1

.field private static cs:Landroid/content/res/PluralRules;

.field private static en:Landroid/content/res/PluralRules;



# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static final attrForQuantity(I)I
    .registers 2
    .parameter "quantity"

    .prologue
    .line 45
    sparse-switch p0, :sswitch_data_1c

    .line 51
    const v0, 0x1000004

    :goto_6
    return v0

    .line 46
    :sswitch_7
    const v0, 0x1000005

    goto :goto_6

    .line 47
    :sswitch_b
    const v0, 0x1000006

    goto :goto_6

    .line 48
    :sswitch_f
    const v0, 0x1000007

    goto :goto_6

    .line 49
    :sswitch_13
    const v0, 0x1000008

    goto :goto_6

    .line 50
    :sswitch_17
    const v0, 0x1000009

    goto :goto_6

    .line 45
    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_b
        0x4 -> :sswitch_f
        0x8 -> :sswitch_13
        0x10 -> :sswitch_17
    .end sparse-switch
.end method

.method static final ruleForLocale(Ljava/util/Locale;)Landroid/content/res/PluralRules;
    .registers 4
    .parameter "locale"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, lang:Ljava/lang/String;
    const-string v1, "cs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 75
    sget-object v1, Landroid/content/res/PluralRules;->cs:Landroid/content/res/PluralRules;

    if-nez v1, :cond_18

    new-instance v1, Landroid/content/res/PluralRules$cs;

    invoke-direct {v1, v2}, Landroid/content/res/PluralRules$cs;-><init>(Landroid/content/res/PluralRules$1;)V

    sput-object v1, Landroid/content/res/PluralRules;->cs:Landroid/content/res/PluralRules;

    .line 76
    :cond_18
    sget-object v1, Landroid/content/res/PluralRules;->cs:Landroid/content/res/PluralRules;

    .line 80
    :goto_1a
    return-object v1

    .line 79
    :cond_1b
    sget-object v1, Landroid/content/res/PluralRules;->en:Landroid/content/res/PluralRules;

    if-nez v1, :cond_26

    new-instance v1, Landroid/content/res/PluralRules$en;

    invoke-direct {v1, v2}, Landroid/content/res/PluralRules$en;-><init>(Landroid/content/res/PluralRules$1;)V

    sput-object v1, Landroid/content/res/PluralRules;->en:Landroid/content/res/PluralRules;

    .line 80
    :cond_26
    sget-object v1, Landroid/content/res/PluralRules;->en:Landroid/content/res/PluralRules;

    goto :goto_1a
.end method

.method static final stringForQuantity(I)Ljava/lang/String;
    .registers 2
    .parameter "quantity"

    .prologue
    .line 56
    sparse-switch p0, :sswitch_data_1a

    .line 68
    const-string/jumbo v0, "other"

    :goto_6
    return-object v0

    .line 58
    :sswitch_7
    const-string/jumbo v0, "zero"

    goto :goto_6

    .line 60
    :sswitch_b
    const-string/jumbo v0, "one"

    goto :goto_6

    .line 62
    :sswitch_f
    const-string/jumbo v0, "two"

    goto :goto_6

    .line 64
    :sswitch_13
    const-string v0, "few"

    goto :goto_6

    .line 66
    :sswitch_16
    const-string v0, "many"

    goto :goto_6

    .line 56
    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_b
        0x4 -> :sswitch_f
        0x8 -> :sswitch_13
        0x10 -> :sswitch_16
    .end sparse-switch
.end method


# virtual methods
.method final attrForNumber(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroid/content/res/PluralRules;->quantityForNumber(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/PluralRules;->attrForQuantity(I)I

    move-result v0

    return v0
.end method

.method abstract quantityForNumber(I)I
.end method
