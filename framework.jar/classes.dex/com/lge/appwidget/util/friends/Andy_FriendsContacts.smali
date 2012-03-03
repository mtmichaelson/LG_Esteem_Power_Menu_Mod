.class public Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;
.super Ljava/lang/Object;
.source "Andy_FriendsContacts.java"



# static fields
.field private static final DEFAULT_PHOTO_HEIGHT:I = 0x40

.field private static final DEFAULT_PHOTO_WIDTH:I = 0x40

.field private static final LIST_MODE_IDS:I = 0x3746

.field private static final LIST_MODE_INVALID:I = 0x1004

.field private static final LIST_MODE_PHOTOS:I = 0x9286

.field private static PHOTO_HEIGHT:I = 0x0

.field private static final PHOTO_PATH_RADIUS:F = 8.0f

.field private static PHOTO_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Andy_FriendsContacts"



# instance fields
.field private LIST_MODE:I

.field private _context:Landroid/content/Context;

.field public _friends_id_list:[J

.field public _friends_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public _friends_name_list:[Ljava/lang/String;

.field public _friends_photo_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0x40

    .line 48
    sput v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->PHOTO_WIDTH:I

    .line 49
    sput v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->PHOTO_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/16 v0, 0x1004

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->LIST_MODE:I

    .line 55
    iput-object p1, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_context:Landroid/content/Context;

    .line 56
    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->setUserListMode(I)V

    .line 58
    invoke-virtual {p0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->initFriendsList()V

    .line 59
    return-void
.end method

.method private getFriendsNameList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    if-nez v0, :cond_9

    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    return-object v0
.end method

.method private getFriendsPhotoList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_photo_list:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_photo_list:Ljava/util/ArrayList;

    .line 213
    :cond_b
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_photo_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getUserListMode()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->LIST_MODE:I

    return v0
.end method

.method private populateFriendsListWithIds(Landroid/content/Context;)V
    .registers 25
    .parameter "context"

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_id_list:[J

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_id_list:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-gtz v20, :cond_16

    .line 268
    :cond_15
    return-void

    .line 233
    :cond_16
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 234
    .local v14, paint:Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/CornerPathEffect;

    const/high16 v21, 0x4100

    invoke-direct/range {v20 .. v21}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 236
    const v9, 0x202007d

    .line 237
    .local v9, id_noimg:I
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 238
    .local v10, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 239
    .local v16, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_id_list:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move v13, v0

    .line 241
    .local v13, num:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3e
    if-ge v6, v13, :cond_15

    .line 243
    const v20, 0x203000f

    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 244
    .local v19, view:Landroid/view/View;
    const v20, 0x20500de

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 246
    .local v12, iv_photo:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_id_list:[J

    move-object/from16 v20, v0

    aget-wide v7, v20, v6

    .line 247
    .local v7, id:J
    sget-object v20, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 248
    .local v18, uri:Landroid/net/Uri;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 249
    .local v11, is:Ljava/io/InputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 251
    .local v15, photo:Landroid/graphics/Bitmap;
    if-nez v15, :cond_8f

    .line 253
    const v20, 0x202007d

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    :goto_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 257
    :cond_8f
    sget v20, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->PHOTO_WIDTH:I

    sget v21, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->PHOTO_HEIGHT:I

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 258
    .local v17, rounder:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 260
    .local v5, canvas:Landroid/graphics/Canvas;
    sget v20, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->PHOTO_WIDTH:I

    sget v21, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->PHOTO_HEIGHT:I

    const/16 v22, 0x1

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 261
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v20

    move/from16 v3, v21

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 263
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7f
.end method

.method private populateFriendsListWithPhoto(Landroid/content/Context;)V
    .registers 16
    .parameter "context"

    .prologue
    .line 272
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 274
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->getFriendsPhotoList()Ljava/util/ArrayList;

    move-result-object v8

    .line 275
    .local v8, photo_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->getFriendsNameList()[Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, name_list:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 278
    .local v9, psize:I
    array-length v6, v5

    .line 280
    .local v6, nsize:I
    if-ne v6, v9, :cond_52

    const/4 v12, 0x1

    move v2, v12

    .line 282
    .local v2, isAvailable:Z
    :goto_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v9, :cond_5c

    .line 284
    const v12, 0x203000f

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 285
    .local v11, view:Landroid/view/View;
    const v12, 0x20500de

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 286
    .local v3, iv_photo:Landroid/widget/ImageView;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 288
    .local v7, photo:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_55

    .line 290
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    :goto_34
    if-eqz v2, :cond_4a

    .line 299
    const v12, 0x20500df

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 300
    .local v10, tv_name:Landroid/widget/TextView;
    aget-object v4, v5, v0

    .line 301
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4a

    .line 303
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .end local v4       #name:Ljava/lang/String;,
    .end local v10       #tv_name:Landroid/widget/TextView;,
    :cond_4a
    iget-object v12, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 280
    .end local v0       #i:I,
    .end local v2       #isAvailable:Z,
    .end local v3       #iv_photo:Landroid/widget/ImageView;,
    .end local v7       #photo:Landroid/graphics/Bitmap;,
    .end local v11       #view:Landroid/view/View;,
    :cond_52
    const/4 v12, 0x0

    move v2, v12

    goto :goto_15

    .line 294
    .restart local v0       #i:I,
    .restart local v2       #isAvailable:Z,
    .restart local v3       #iv_photo:Landroid/widget/ImageView;,
    .restart local v7       #photo:Landroid/graphics/Bitmap;,
    .restart local v11       #view:Landroid/view/View;,
    :cond_55
    const v12, 0x202007d

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_34

    .line 309
    .end local v3       #iv_photo:Landroid/widget/ImageView;,
    .end local v7       #photo:Landroid/graphics/Bitmap;,
    .end local v11       #view:Landroid/view/View;,
    :cond_5c
    return-void
.end method

.method private setUserListMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 192
    iput p1, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->LIST_MODE:I

    .line 193
    return-void
.end method


# virtual methods
.method public getFriendsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    if-nez v0, :cond_12

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    .line 91
    invoke-direct {p0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->getUserListMode()I

    move-result v0

    sparse-switch v0, :sswitch_data_22

    .line 102
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    return-object v0

    .line 94
    :sswitch_15
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->populateFriendsListWithPhoto(Landroid/content/Context;)V

    goto :goto_12

    .line 97
    :sswitch_1b
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->populateFriendsListWithIds(Landroid/content/Context;)V

    goto :goto_12

    .line 91
    nop

    :sswitch_data_22
    .sparse-switch
        0x3746 -> :sswitch_1b
        0x9286 -> :sswitch_15
    .end sparse-switch
.end method

.method public getFriendsListSize()I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    if-nez v0, :cond_12

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    .line 112
    invoke-direct {p0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->getUserListMode()I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    .line 123
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 115
    :sswitch_19
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->populateFriendsListWithPhoto(Landroid/content/Context;)V

    goto :goto_12

    .line 118
    :sswitch_1f
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->populateFriendsListWithIds(Landroid/content/Context;)V

    goto :goto_12

    .line 112
    nop

    :sswitch_data_26
    .sparse-switch
        0x3746 -> :sswitch_1f
        0x9286 -> :sswitch_19
    .end sparse-switch
.end method

.method public initFriendsList()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    if-nez v0, :cond_13

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    .line 72
    :goto_b
    invoke-direct {p0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->getUserListMode()I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    .line 81
    :goto_12
    return-void

    .line 69
    :cond_13
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_b

    .line 75
    :sswitch_19
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->populateFriendsListWithPhoto(Landroid/content/Context;)V

    goto :goto_12

    .line 78
    :sswitch_1f
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->populateFriendsListWithIds(Landroid/content/Context;)V

    goto :goto_12

    .line 72
    nop

    :sswitch_data_26
    .sparse-switch
        0x3746 -> :sswitch_1f
        0x9286 -> :sswitch_19
    .end sparse-switch
.end method

.method public setContactsPhotoRes(I)V
    .registers 2
    .parameter "length"

    .prologue
    .line 202
    sput p1, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->PHOTO_HEIGHT:I

    .line 203
    sput p1, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->PHOTO_WIDTH:I

    .line 204
    return-void
.end method

.method public setUserContactsIds([J)V
    .registers 3
    .parameter "list"

    .prologue
    .line 185
    const/16 v0, 0x3746

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->setUserListMode(I)V

    .line 187
    iput-object p1, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_id_list:[J

    .line 188
    return-void
.end method

.method public setUserContactsNames([Ljava/lang/String;)V
    .registers 4
    .parameter "list"

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    if-nez v0, :cond_15

    .line 159
    if-eqz p1, :cond_10

    .line 161
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    .line 181
    :goto_f
    return-void

    .line 165
    :cond_10
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    goto :goto_f

    .line 170
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    .line 172
    if-eqz p1, :cond_23

    .line 174
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    goto :goto_f

    .line 178
    :cond_23
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_name_list:[Ljava/lang/String;

    goto :goto_f
.end method

.method public setUserContactsPhotos(Ljava/util/ArrayList;Z)V
    .registers 4
    .parameter
    .parameter "isAppended"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const v0, 0x9286

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->setUserListMode(I)V

    .line 130
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_photo_list:Ljava/util/ArrayList;

    if-nez v0, :cond_23

    .line 132
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_photo_list:Ljava/util/ArrayList;

    .line 153
    :cond_1a
    :goto_1a
    return-void

    .line 138
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_photo_list:Ljava/util/ArrayList;

    goto :goto_1a

    .line 143
    :cond_23
    if-nez p2, :cond_2a

    .line 145
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_photo_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    :cond_2a
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 150
    iget-object v0, p0, Lcom/lge/appwidget/util/friends/Andy_FriendsContacts;->_friends_photo_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a
.end method
