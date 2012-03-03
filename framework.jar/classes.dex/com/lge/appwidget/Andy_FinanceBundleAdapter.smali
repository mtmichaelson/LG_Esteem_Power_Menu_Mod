.class public Lcom/lge/appwidget/Andy_FinanceBundleAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_FinanceBundleAdapter.java"



# static fields
.field private static final KEY_COLUMN_RESOURCE_ID_ARRAY:Ljava/lang/String; = "a.i.column"

.field private static final KEY_COLUMN_TYPE_ARRAY:Ljava/lang/String; = "a.t.column"

.field private static final KEY_COLUMN_VALUE_ARRAY:Ljava/lang/String; = "a.v.column"

.field private static final KEY_EXTRA_KEY:Ljava/lang/String; = "k.extra"

.field private static final KEY_EXTRA_VALUE_ARRAY:Ljava/lang/String; = "a.v.extra"

.field private static final KEY_EXTRA_VALUE_TYPE:Ljava/lang/String; = "t.extra"

.field private static final KEY_ID_LARGE:Ljava/lang/String; = "i.large"

.field private static final KEY_ID_LAYOUT:Ljava/lang/String; = "l.item"

.field private static final KEY_ID_NORMAL:Ljava/lang/String; = "i.normal"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "t.p.name"

.field private static final KEY_TARGET_CLASS_NAME:Ljava/lang/String; = "t.c.name"

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_DRAWABLE:I = 0x1

.field private static final VALUE_TYPE_LONG:I = 0x3

.field private static final VALUE_TYPE_STRING:I = 0x0

.field private static final VALUE_TYPE_VISIBILITY:I = 0x2



# instance fields
.field private mColumnResourceIds:[I

.field private mColumnValueTypes:[I

.field private mColumnValues:[Ljava/lang/Object;

.field private mIdLarge:I

.field private mIdLayout:I

.field private mIdNormal:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentExtraKey:Ljava/lang/String;

.field private mIntentExtraValueType:I

.field private mIntentExtraValues:Ljava/lang/Object;

.field private mItemCount:I

.field private mRemoteContext:Landroid/content/Context;

.field private mTargetClassName:Ljava/lang/String;

.field private mTargetPackageName:Ljava/lang/String;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6
    .parameter "context"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mRemoteContext:Landroid/content/Context;

    .line 58
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iput v1, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdLayout:I

    .line 60
    iput v1, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdLarge:I

    .line 61
    iput v1, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdNormal:I

    .line 62
    iput v2, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    .line 63
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnResourceIds:[I

    .line 64
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    .line 65
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    .line 67
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetPackageName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetClassName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraKey:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValueType:I

    .line 71
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, p1, p2, v2}, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->setBundle(Landroid/content/Context;Landroid/os/Bundle;Z)Z

    .line 74
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 10
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 200
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mRemoteContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 202
    .local v2, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    array-length v5, v5

    if-ge v1, v5, :cond_83

    .line 203
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnResourceIds:[I

    aget v5, v5, v1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 204
    .local v3, targetView:Landroid/view/View;
    if-nez v3, :cond_19

    .line 202
    .end local v3       #targetView:Landroid/view/View;,
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 208
    .restart local v3       #targetView:Landroid/view/View;,
    :cond_19
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_84

    :pswitch_20
    goto :goto_16

    .line 210
    :pswitch_21
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_16

    .line 211
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 212
    .local v4, values:[Ljava/lang/String;
    check-cast v3, Landroid/widget/TextView;

    .end local v3       #targetView:Landroid/view/View;,
    aget-object v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 216
    .end local v4       #values:[Ljava/lang/String;,
    .restart local v3       #targetView:Landroid/view/View;,
    :pswitch_37
    instance-of v5, v3, Landroid/widget/ImageView;

    if-eqz v5, :cond_16

    .line 217
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0

    .line 218
    .local v4, values:[I
    aget v5, v4, p1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_51

    .line 219
    check-cast v3, Landroid/widget/ImageView;

    .end local v3       #targetView:Landroid/view/View;,
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    .line 221
    .restart local v3       #targetView:Landroid/view/View;,
    :cond_51
    check-cast v3, Landroid/widget/ImageView;

    .end local v3       #targetView:Landroid/view/View;,
    aget v5, v4, p1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    .line 227
    .end local v4       #values:[I,
    .restart local v3       #targetView:Landroid/view/View;,
    :pswitch_5d
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0

    .line 228
    .restart local v4       #values:[I,
    aget v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 232
    .end local v4       #values:[I,
    :pswitch_6d
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_16

    .line 233
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0

    .line 234
    .restart local v4       #values:[I,
    check-cast v3, Landroid/widget/TextView;

    .end local v3       #targetView:Landroid/view/View;,
    aget v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_16

    .line 239
    .end local v4       #values:[I,
    :cond_83
    return-void

    .line 208
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_21
        :pswitch_37
        :pswitch_5d
        :pswitch_20
        :pswitch_6d
    .end packed-switch
.end method

.method private getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 187
    move-object v1, p1

    .line 188
    .local v1, remoteContext:Landroid/content/Context;
    if-eqz p2, :cond_8

    .line 190
    const/4 v2, 0x4

    :try_start_4
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    .line 196
    :cond_8
    :goto_8
    return-object v1

    .line 191
    :catch_9
    move-exception v0

    .line 192
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_8
.end method

.method private unpackBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 21
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 77
    if-nez p2, :cond_3

    .line 184
    :cond_2
    :goto_2
    return-void

    .line 81
    :cond_3
    const-string/jumbo v14, "t.p.name"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mRemoteContext:Landroid/content/Context;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mRemoteContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    const-string v14, "l.item"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdLayout:I

    .line 86
    const-string v14, "i.large"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdLarge:I

    .line 87
    const-string v14, "i.normal"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdNormal:I

    .line 89
    const-string v14, "a.i.column"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnResourceIds:[I

    .line 90
    const-string v14, "a.t.column"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnResourceIds:[I

    move-object v14, v0

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    move-object v14, v0

    if-eqz v14, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnResourceIds:[I

    move-object v14, v0

    array-length v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    move-object v15, v0

    array-length v15, v15

    if-ne v14, v15, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    move-object v14, v0

    array-length v14, v14

    new-array v14, v14, [Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    .line 100
    const/4 v14, -0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    .line 102
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    move-object v14, v0

    array-length v14, v14

    if-ge v6, v14, :cond_137

    .line 103
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "a.v.column"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, key:Ljava/lang/String;
    const/4 v7, 0x0

    .line 107
    .local v7, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValueTypes:[I

    move-object v14, v0

    aget v14, v14, v6

    packed-switch v14, :pswitch_data_1d6

    .line 137
    :pswitch_cb
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    .line 138
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    goto/16 :goto_2

    .line 109
    :pswitch_d9
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, sa:[Ljava/lang/String;
    move-object v13, v11

    .line 111
    .local v13, value:[Ljava/lang/String;
    if-eqz v11, :cond_e4

    .line 112
    array-length v7, v11

    .line 142
    .end local v11       #sa:[Ljava/lang/String;,
    .end local v13       #value:[Ljava/lang/String;,
    :cond_e4
    :goto_e4
    if-eqz v13, :cond_f5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    move v14, v0

    const/4 v15, -0x1

    if-eq v14, v15, :cond_127

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    move v14, v0

    if-eq v14, v7, :cond_127

    .line 143
    :cond_f5
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    .line 144
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    goto/16 :goto_2

    .line 116
    :pswitch_103
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 117
    .local v4, da:[I
    move-object v13, v4

    .line 118
    .local v13, value:[I
    if-eqz v4, :cond_e4

    .line 119
    array-length v7, v4

    goto :goto_e4

    .line 123
    .end local v4       #da:[I,
    .end local v13       #value:[I,
    :pswitch_10f
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 124
    .local v12, va:[I
    move-object v13, v12

    .line 125
    .restart local v13       #value:[I,
    if-eqz v12, :cond_e4

    .line 126
    array-length v7, v12

    goto :goto_e4

    .line 130
    .end local v12       #va:[I,
    .end local v13       #value:[I,
    :pswitch_11b
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 131
    .local v3, ca:[I
    move-object v13, v3

    .line 132
    .restart local v13       #value:[I,
    if-eqz v3, :cond_e4

    .line 133
    array-length v7, v3

    goto :goto_e4

    .line 148
    .end local v3       #ca:[I,
    .end local v13       #value:[I,
    :cond_127
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    move-object v14, v0

    aput-object v13, v14, v6

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a5

    .line 152
    .end local v7       #itemCount:I,
    .end local v8       #key:Ljava/lang/String;,
    :cond_137
    const/4 v5, -0x1

    .line 153
    .local v5, extraValueCount:I
    const-string/jumbo v14, "t.c.name"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetClassName:Ljava/lang/String;

    .line 154
    const-string v14, "k.extra"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraKey:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetClassName:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraKey:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_2

    .line 156
    const-string/jumbo v14, "t.extra"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValueType:I

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValueType:I

    move v14, v0

    packed-switch v14, :pswitch_data_1e4

    .line 171
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    goto/16 :goto_2

    .line 159
    :pswitch_184
    const-string v14, "a.v.extra"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v9

    .line 161
    .local v9, la:[J
    if-nez v9, :cond_19d

    .line 162
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetClassName:Ljava/lang/String;

    .line 163
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    goto/16 :goto_2

    .line 167
    :cond_19d
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    .line 168
    array-length v5, v9

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    move v14, v0

    if-eq v5, v14, :cond_1b8

    .line 177
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetClassName:Ljava/lang/String;

    .line 178
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    goto/16 :goto_2

    .line 182
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetClassName:Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x2e

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetPackageName:Ljava/lang/String;

    goto/16 :goto_2

    .line 107
    nop

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_103
        :pswitch_10f
        :pswitch_cb
        :pswitch_11b
    .end packed-switch

    .line 157
    :pswitch_data_1e4
    .packed-switch 0x3
        :pswitch_184
    .end packed-switch
.end method


# virtual methods
.method public getActivityIntent(I)Landroid/content/Intent;
    .registers 8
    .parameter "position"

    .prologue
    .line 280
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetPackageName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 281
    const/4 v3, 0x0

    .line 295
    :goto_5
    return-object v3

    .line 284
    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 285
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    if-eqz v3, :cond_1b

    .line 287
    iget v3, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValueType:I

    packed-switch v3, :pswitch_data_2e

    :cond_1b
    :goto_1b
    move-object v3, v1

    .line 295
    goto :goto_5

    .line 289
    :pswitch_1d
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    check-cast v3, [J

    move-object v0, v3

    check-cast v0, [J

    move-object v2, v0

    .line 290
    .local v2, la:[J
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraKey:Ljava/lang/String;

    aget-wide v4, v2, p1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1b

    .line 287
    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_1d
    .end packed-switch
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 250
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 254
    if-nez p2, :cond_e

    .line 255
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdLayout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 258
    :cond_e
    iget v2, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdLarge:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    .line 259
    iget v2, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdLarge:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, largeView:Landroid/view/View;
    iget v2, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdNormal:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, normalView:Landroid/view/View;
    if-nez p1, :cond_2b

    .line 262
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 263
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->bindView(ILandroid/view/View;)V

    .line 276
    .end local v0       #largeView:Landroid/view/View;,
    :goto_2a
    return-object p2

    .line 266
    .restart local v0       #largeView:Landroid/view/View;,
    :cond_2b
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 267
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 268
    invoke-direct {p0, p1, v1}, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_2a

    .line 271
    .end local v0       #largeView:Landroid/view/View;,
    .end local v1       #normalView:Landroid/view/View;,
    :cond_35
    iget v2, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIdNormal:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 272
    .restart local v1       #normalView:Landroid/view/View;,
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-direct {p0, p1, v1}, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_2a
.end method

.method public setBundle(Landroid/content/Context;Landroid/os/Bundle;Z)Z
    .registers 11
    .parameter "context"
    .parameter "bundle"
    .parameter "notify"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 299
    iget v2, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValueType:I

    .line 300
    .local v2, oldExtraValueType:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    .line 301
    .local v3, oldExtraValues:Ljava/lang/Object;
    iget v1, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    .line 304
    .local v1, oldCount:I
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->unpackBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_1d

    .line 310
    :goto_b
    if-eqz p3, :cond_36

    iget v4, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    if-ne v1, v4, :cond_36

    iget v4, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValueType:I

    if-ne v2, v4, :cond_36

    .line 311
    packed-switch v2, :pswitch_data_38

    .line 320
    .end local v3       #oldExtraValues:Ljava/lang/Object;,
    :cond_18
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->notifyDataSetChanged()V

    move v4, v5

    .line 324
    :goto_1c
    return v4

    .line 305
    .restart local v3       #oldExtraValues:Ljava/lang/Object;,
    :catch_1d
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    iput v5, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mItemCount:I

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 313
    .end local v0       #e:Ljava/lang/Exception;,
    :pswitch_24
    check-cast v3, [J

    .end local v3       #oldExtraValues:Ljava/lang/Object;,
    check-cast v3, [J

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FinanceBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    check-cast v4, [J

    check-cast v4, [J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    if-nez v4, :cond_18

    move v4, v6

    .line 314
    goto :goto_1c

    .restart local v3       #oldExtraValues:Ljava/lang/Object;,
    :cond_36
    move v4, v6

    .line 324
    goto :goto_1c

    .line 311
    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_24
    .end packed-switch
.end method
