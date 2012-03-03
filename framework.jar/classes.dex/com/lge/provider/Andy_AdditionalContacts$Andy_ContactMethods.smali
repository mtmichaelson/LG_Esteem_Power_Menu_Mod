.class public final Lcom/lge/provider/Andy_AdditionalContacts$Andy_ContactMethods;
.super Ljava/lang/Object;
.source "Andy_AdditionalContacts.java"


# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$ContactMethodsColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Andy_ContactMethods"
.end annotation


# static fields
.field public static final CONTENT_WEBSITE_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/website"

.field public static final CONTENT_WEBSITE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/website"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final Andy_getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "context"
    .parameter "kind"
    .parameter "type"
    .parameter "label"

    .prologue
    const/high16 v4, 0x107

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 694
    const-string v0, ""

    .line 695
    .local v0, display:Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_66

    .line 750
    const v3, 0x104000f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 752
    :cond_10
    :goto_10
    return-object v0

    .line 697
    :sswitch_11
    if-eqz p2, :cond_24

    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 701
    .local v2, labels:[Ljava/lang/CharSequence;
    sub-int v3, p2, v6

    :try_start_1d
    aget-object v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d .. :try_end_1f} :catch_20

    goto :goto_10

    .line 702
    :catch_20
    move-exception v1

    .line 703
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    goto :goto_10

    .line 706
    .end local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;,
    .end local v2       #labels:[Ljava/lang/CharSequence;,
    :cond_24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 707
    move-object v0, p3

    goto :goto_10

    .line 714
    :sswitch_2c
    if-eqz p2, :cond_42

    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 718
    .restart local v2       #labels:[Ljava/lang/CharSequence;,
    sub-int v3, p2, v6

    :try_start_3b
    aget-object v0, v2, v3
    :try_end_3d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3b .. :try_end_3d} :catch_3e

    goto :goto_10

    .line 719
    :catch_3e
    move-exception v1

    .line 720
    .restart local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;,
    aget-object v0, v2, v5

    goto :goto_10

    .line 723
    .end local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;,
    .end local v2       #labels:[Ljava/lang/CharSequence;,
    :cond_42
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 724
    move-object v0, p3

    goto :goto_10

    .line 732
    :sswitch_4a
    if-eqz p2, :cond_5d

    .line 733
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 736
    .restart local v2       #labels:[Ljava/lang/CharSequence;,
    sub-int v3, p2, v6

    :try_start_56
    aget-object v0, v2, v3
    :try_end_58
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_56 .. :try_end_58} :catch_59

    goto :goto_10

    .line 737
    :catch_59
    move-exception v1

    .line 738
    .restart local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;,
    aget-object v0, v2, v5

    goto :goto_10

    .line 741
    .end local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;,
    .end local v2       #labels:[Ljava/lang/CharSequence;,
    :cond_5d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 742
    move-object v0, p3

    goto :goto_10

    .line 695
    nop

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2c
        0x3ee -> :sswitch_4a
    .end sparse-switch
.end method
