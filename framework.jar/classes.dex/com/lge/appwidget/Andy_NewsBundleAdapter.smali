.class public Lcom/lge/appwidget/Andy_NewsBundleAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_NewsBundleAdapter.java"



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

.field private static final VALUE_TYPE_BITMAP:I = 0x4

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

    .line 58
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mRemoteContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iput v1, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdLayout:I

    .line 62
    iput v1, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdLarge:I

    .line 63
    iput v1, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdNormal:I

    .line 64
    iput v2, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    .line 65
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnResourceIds:[I

    .line 66
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    .line 67
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    .line 69
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetPackageName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetClassName:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraKey:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValueType:I

    .line 73
    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, p1, p2, v2}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->setBundle(Landroid/content/Context;Landroid/os/Bundle;Z)Z

    .line 76
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 11
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v7, 0x0

    .line 202
    iget-object v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mRemoteContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    .local v2, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    array-length v5, v5

    if-ge v1, v5, :cond_91

    .line 205
    iget-object v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnResourceIds:[I

    aget v5, v5, v1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 206
    .local v3, targetView:Landroid/view/View;
    if-nez v3, :cond_1a

    .line 204
    .end local v3       #targetView:Landroid/view/View;,
    :cond_17
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 210
    .restart local v3       #targetView:Landroid/view/View;,
    :cond_1a
    iget-object v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_92

    :pswitch_21
    goto :goto_17

    .line 212
    :pswitch_22
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_17

    .line 213
    iget-object v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 214
    .local v4, values:[Ljava/lang/String;
    check-cast v3, Landroid/widget/TextView;

    .end local v3       #targetView:Landroid/view/View;,
    aget-object v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 218
    .end local v4       #values:[Ljava/lang/String;,
    .restart local v3       #targetView:Landroid/view/View;,
    :pswitch_38
    instance-of v5, v3, Landroid/widget/ImageView;

    if-eqz v5, :cond_17

    .line 219
    iget-object v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0

    .line 220
    .local v4, values:[I
    aget v5, v4, p1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_51

    .line 221
    check-cast v3, Landroid/widget/ImageView;

    .end local v3       #targetView:Landroid/view/View;,
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 223
    .restart local v3       #targetView:Landroid/view/View;,
    :cond_51
    check-cast v3, Landroid/widget/ImageView;

    .end local v3       #targetView:Landroid/view/View;,
    aget v5, v4, p1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 229
    .end local v4       #values:[I,
    .restart local v3       #targetView:Landroid/view/View;,
    :pswitch_5d
    iget-object v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0

    .line 230
    .restart local v4       #values:[I,
    aget v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    .line 234
    .end local v4       #values:[I,
    :pswitch_6d
    instance-of v5, v3, Landroid/widget/ImageView;

    if-eqz v5, :cond_17

    .line 235
    iget-object v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, [Landroid/os/Parcelable;

    move-object v0, v5

    check-cast v0, [Landroid/os/Parcelable;

    move-object v4, v0

    .line 236
    .local v4, values:[Landroid/os/Parcelable;
    aget-object v5, v4, p1

    instance-of v5, v5, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_8b

    .line 237
    check-cast v3, Landroid/widget/ImageView;

    .end local v3       #targetView:Landroid/view/View;,
    aget-object v5, v4, p1

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_17

    .line 239
    .restart local v3       #targetView:Landroid/view/View;,
    :cond_8b
    check-cast v3, Landroid/widget/ImageView;

    .end local v3       #targetView:Landroid/view/View;,
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_17

    .line 245
    .end local v4       #values:[Landroid/os/Parcelable;,
    :cond_91
    return-void

    .line 210
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_22
        :pswitch_38
        :pswitch_5d
        :pswitch_21
        :pswitch_6d
    .end packed-switch
.end method

.method private getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 189
    move-object v1, p1

    .line 190
    .local v1, remoteContext:Landroid/content/Context;
    if-eqz p2, :cond_8

    .line 192
    const/4 v2, 0x4

    :try_start_4
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    .line 198
    :cond_8
    :goto_8
    return-object v1

    .line 193
    :catch_9
    move-exception v0

    .line 194
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_8
.end method

.method private unpackBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 21
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 79
    if-nez p2, :cond_3

    .line 186
    :cond_2
    :goto_2
    return-void

    .line 83
    :cond_3
    const-string/jumbo v14, "t.p.name"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mRemoteContext:Landroid/content/Context;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mRemoteContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    const-string v14, "l.item"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdLayout:I

    .line 88
    const-string v14, "i.large"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdLarge:I

    .line 89
    const-string v14, "i.normal"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdNormal:I

    .line 91
    const-string v14, "a.i.column"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnResourceIds:[I

    .line 92
    const-string v14, "a.t.column"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnResourceIds:[I

    move-object v14, v0

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    move-object v14, v0

    if-eqz v14, :cond_2

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnResourceIds:[I

    move-object v14, v0

    array-length v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    move-object v15, v0

    array-length v15, v15

    if-ne v14, v15, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    move-object v14, v0

    array-length v14, v14

    new-array v14, v14, [Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    .line 102
    const/4 v14, -0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    .line 104
    const/4 v5, 0x0

    .local v5, i:I
    :goto_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    move-object v14, v0

    array-length v14, v14

    if-ge v5, v14, :cond_137

    .line 105
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "a.v.column"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 109
    .local v6, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValueTypes:[I

    move-object v14, v0

    aget v14, v14, v5

    packed-switch v14, :pswitch_data_1d6

    .line 139
    :pswitch_cb
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    .line 140
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    goto/16 :goto_2

    .line 111
    :pswitch_d9
    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, sa:[Ljava/lang/String;
    move-object v13, v11

    .line 113
    .local v13, value:[Ljava/lang/String;
    if-eqz v11, :cond_e4

    .line 114
    array-length v6, v11

    .line 144
    .end local v11       #sa:[Ljava/lang/String;,
    .end local v13       #value:[Ljava/lang/String;,
    :cond_e4
    :goto_e4
    if-eqz v13, :cond_f5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    move v14, v0

    const/4 v15, -0x1

    if-eq v14, v15, :cond_127

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    move v14, v0

    if-eq v14, v6, :cond_127

    .line 145
    :cond_f5
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    .line 146
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    goto/16 :goto_2

    .line 118
    :pswitch_103
    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 119
    .local v3, da:[I
    move-object v13, v3

    .line 120
    .local v13, value:[I
    if-eqz v3, :cond_e4

    .line 121
    array-length v6, v3

    goto :goto_e4

    .line 125
    .end local v3       #da:[I,
    .end local v13       #value:[I,
    :pswitch_10f
    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 126
    .local v12, va:[I
    move-object v13, v12

    .line 127
    .restart local v13       #value:[I,
    if-eqz v12, :cond_e4

    .line 128
    array-length v6, v12

    goto :goto_e4

    .line 132
    .end local v12       #va:[I,
    .end local v13       #value:[I,
    :pswitch_11b
    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 133
    .local v9, pa:[Landroid/os/Parcelable;
    move-object v13, v9

    .line 134
    .local v13, value:[Landroid/os/Parcelable;
    if-eqz v9, :cond_e4

    .line 135
    array-length v6, v9

    goto :goto_e4

    .line 150
    .end local v9       #pa:[Landroid/os/Parcelable;,
    .end local v13       #value:[Landroid/os/Parcelable;,
    :cond_127
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mColumnValues:[Ljava/lang/Object;

    move-object v14, v0

    aput-object v13, v14, v5

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a5

    .line 154
    .end local v6       #itemCount:I,
    .end local v7       #key:Ljava/lang/String;,
    :cond_137
    const/4 v4, -0x1

    .line 155
    .local v4, extraValueCount:I
    const-string/jumbo v14, "t.c.name"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetClassName:Ljava/lang/String;

    .line 156
    const-string v14, "k.extra"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraKey:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetClassName:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraKey:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_2

    .line 158
    const-string/jumbo v14, "t.extra"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValueType:I

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValueType:I

    move v14, v0

    packed-switch v14, :pswitch_data_1e4

    .line 173
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    goto/16 :goto_2

    .line 161
    :pswitch_184
    const-string v14, "a.v.extra"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 163
    .local v8, la:[J
    if-nez v8, :cond_19d

    .line 164
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetClassName:Ljava/lang/String;

    .line 165
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    goto/16 :goto_2

    .line 169
    :cond_19d
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    .line 170
    array-length v4, v8

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    move v14, v0

    if-eq v4, v14, :cond_1b8

    .line 179
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetClassName:Ljava/lang/String;

    .line 180
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    goto/16 :goto_2

    .line 184
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetClassName:Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x2e

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetPackageName:Ljava/lang/String;

    goto/16 :goto_2

    .line 109
    nop

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_103
        :pswitch_10f
        :pswitch_cb
        :pswitch_11b
    .end packed-switch

    .line 159
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
    .line 289
    iget-object v3, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetPackageName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 290
    const/4 v3, 0x0

    .line 304
    :goto_5
    return-object v3

    .line 293
    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v3, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    if-eqz v3, :cond_1b

    .line 296
    iget v3, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValueType:I

    packed-switch v3, :pswitch_data_2e

    :cond_1b
    :goto_1b
    move-object v3, v1

    .line 304
    goto :goto_5

    .line 298
    :pswitch_1d
    iget-object v3, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    check-cast v3, [J

    move-object v0, v3

    check-cast v0, [J

    move-object v2, v0

    .line 299
    .local v2, la:[J
    iget-object v3, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraKey:Ljava/lang/String;

    aget-wide v4, v2, p1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1b

    .line 296
    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_1d
    .end packed-switch
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 256
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

    .line 260
    if-nez p2, :cond_e

    .line 261
    iget-object v2, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdLayout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 264
    :cond_e
    iget v2, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdLarge:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, largeView:Landroid/view/View;
    iget v2, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIdNormal:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, normalView:Landroid/view/View;
    if-nez p1, :cond_2a

    .line 268
    if-eqz v0, :cond_29

    .line 269
    if-eqz v1, :cond_23

    .line 270
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_23
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->bindView(ILandroid/view/View;)V

    .line 285
    :cond_29
    :goto_29
    return-object p2

    .line 276
    :cond_2a
    if-eqz v1, :cond_29

    .line 277
    if-eqz v0, :cond_31

    .line 278
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_31
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-direct {p0, p1, v1}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_29
.end method

.method public setBundle(Landroid/content/Context;Landroid/os/Bundle;Z)Z
    .registers 11
    .parameter "context"
    .parameter "bundle"
    .parameter "notify"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    iget v2, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValueType:I

    .line 309
    .local v2, oldExtraValueType:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    .line 310
    .local v3, oldExtraValues:Ljava/lang/Object;
    iget v1, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    .line 313
    .local v1, oldCount:I
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->unpackBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_1d

    .line 319
    :goto_b
    if-eqz p3, :cond_36

    iget v4, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    if-ne v1, v4, :cond_36

    iget v4, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValueType:I

    if-ne v2, v4, :cond_36

    .line 320
    packed-switch v2, :pswitch_data_38

    .line 329
    .end local v3       #oldExtraValues:Ljava/lang/Object;,
    :cond_18
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->notifyDataSetChanged()V

    move v4, v5

    .line 333
    :goto_1c
    return v4

    .line 314
    .restart local v3       #oldExtraValues:Ljava/lang/Object;,
    :catch_1d
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/Exception;
    iput v5, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mItemCount:I

    .line 316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 322
    .end local v0       #e:Ljava/lang/Exception;,
    :pswitch_24
    check-cast v3, [J

    .end local v3       #oldExtraValues:Ljava/lang/Object;,
    check-cast v3, [J

    iget-object v4, p0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->mIntentExtraValues:Ljava/lang/Object;

    check-cast v4, [J

    check-cast v4, [J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    if-nez v4, :cond_18

    move v4, v6

    .line 323
    goto :goto_1c

    .restart local v3       #oldExtraValues:Ljava/lang/Object;,
    :cond_36
    move v4, v6

    .line 333
    goto :goto_1c

    .line 320
    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_24
    .end packed-switch
.end method
