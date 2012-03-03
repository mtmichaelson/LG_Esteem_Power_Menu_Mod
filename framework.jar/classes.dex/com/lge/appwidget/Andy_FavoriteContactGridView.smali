.class public Lcom/lge/appwidget/Andy_FavoriteContactGridView;
.super Landroid/widget/GridView;
.source "Andy_FavoriteContactGridView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;,
        Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;,
        Lcom/lge/appwidget/Andy_FavoriteContactGridView$EmptyTextClickListener;,
        Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;
    }
.end annotation


# instance fields
.field private LAYOUT_RESOURCE:[I

.field private clickListener:Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;

.field public contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

.field public cursor:Landroid/database/Cursor;

.field emptyTextClickListener:Landroid/view/View$OnClickListener;

.field private is2x3:Z

.field private isObserverUnRegistered:Z

.field private mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

.field private mContext:Landroid/content/Context;

.field private parentLayout:Landroid/widget/RelativeLayout;

.field final projection:[Ljava/lang/String;

.field final uri:Landroid/net/Uri;

.field wasRequeried:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->isObserverUnRegistered:Z

    .line 52
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    .line 53
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    .line 57
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->is2x3:Z

    .line 58
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    .line 62
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->wasRequeried:Z

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->projection:[Ljava/lang/String;

    .line 69
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->uri:Landroid/net/Uri;

    .line 73
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->initialize(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->isObserverUnRegistered:Z

    .line 52
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    .line 53
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    .line 57
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->is2x3:Z

    .line 58
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    .line 62
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->wasRequeried:Z

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->projection:[Ljava/lang/String;

    .line 69
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->uri:Landroid/net/Uri;

    .line 79
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->initialize(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->isObserverUnRegistered:Z

    .line 52
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    .line 53
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    .line 57
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->is2x3:Z

    .line 58
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    .line 62
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->wasRequeried:Z

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->projection:[Ljava/lang/String;

    .line 69
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->uri:Landroid/net/Uri;

    .line 86
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->initialize(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->parentLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->is2x3:Z

    return v0
.end method

.method private doQuery()V
    .registers 9

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_2d

    .line 100
    const/4 v7, -0x1

    .line 101
    .local v7, mSortOrderValue:I
    const-string v5, ""

    .line 104
    .local v5, mSortOrder:Ljava/lang/String;
    :try_start_7
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_12} :catch_2e

    move-result v7

    .line 109
    :goto_13
    const/4 v0, 0x1

    if-ne v7, v0, :cond_32

    .line 110
    const-string/jumbo v5, "sort_key"

    .line 117
    :goto_19
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->projection:[Ljava/lang/String;

    const-string/jumbo v3, "starred=1"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    .line 124
    .end local v5       #mSortOrder:Ljava/lang/String;,
    .end local v7       #mSortOrderValue:I,
    :cond_2d
    return-void

    .line 105
    .restart local v5       #mSortOrder:Ljava/lang/String;,
    .restart local v7       #mSortOrderValue:I,
    :catch_2e
    move-exception v0

    move-object v6, v0

    .line 106
    .local v6, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v7, 0x1

    goto :goto_13

    .line 112
    .end local v6       #e:Landroid/provider/Settings$SettingNotFoundException;,
    :cond_32
    const-string/jumbo v5, "sort_key_alt"

    goto :goto_19
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 92
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->setFadingEdgeLength(I)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->setScrollingCacheEnabled(Z)V

    .line 95
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasWindowFocus"

    .prologue
    .line 186
    if-eqz p1, :cond_76

    .line 188
    :try_start_2
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->wasRequeried:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_16

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->setSelection(I)V

    .line 191
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->wasRequeried:Z

    .line 202
    :cond_16
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->parentLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 203
    .local v1, iv:Landroid/widget/ImageView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_56

    .line 209
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 214
    :cond_56
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->is2x3:Z

    if-eqz v2, :cond_76

    .line 216
    const/4 v0, 0x0

    :goto_5b
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_76

    .line 217
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_72
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_72} :catch_75

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 222
    .end local v0       #i:I,
    .end local v1       #iv:Landroid/widget/ImageView;,
    :catch_75
    move-exception v2

    .line 225
    :cond_76
    return-void
.end method

.method public registerAndyObserver(Z)V
    .registers 4
    .parameter "option"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 163
    if-eqz p1, :cond_1d

    .line 164
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    if-nez v0, :cond_1c

    .line 166
    new-instance v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;-><init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    .line 168
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->isObserverUnRegistered:Z

    .line 182
    :cond_1c
    :goto_1c
    return-void

    .line 174
    :cond_1d
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->isObserverUnRegistered:Z

    if-nez v0, :cond_1c

    .line 176
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->contactObserver:Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->isObserverUnRegistered:Z

    goto :goto_1c
.end method

.method public setFavoriteLayout(Landroid/os/Bundle;)V
    .registers 7
    .parameter "newBundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->doQuery()V

    .line 133
    new-instance v1, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;

    invoke-direct {v1, p0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;-><init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->clickListener:Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;

    .line 134
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->clickListener:Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->parentLayout:Landroid/widget/RelativeLayout;

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, noItemView:Landroid/widget/TextView;
    const-string v1, "Andy_FavoriteGridView_LAYOUT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    .line 141
    const-string v1, "IS_SMALL"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->is2x3:Z

    .line 143
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    if-nez v1, :cond_3e

    .line 144
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->is2x3:Z

    if-eqz v1, :cond_60

    .line 145
    new-instance v1, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    const-string v4, "SMALL"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;-><init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;Landroid/content/Context;[ILjava/lang/String;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    .line 151
    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->parentLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0       #noItemView:Landroid/widget/TextView;,
    check-cast v0, Landroid/widget/TextView;

    .line 153
    .restart local v0       #noItemView:Landroid/widget/TextView;,
    new-instance v1, Lcom/lge/appwidget/Andy_FavoriteContactGridView$EmptyTextClickListener;

    invoke-direct {v1, p0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$EmptyTextClickListener;-><init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->emptyTextClickListener:Landroid/view/View$OnClickListener;

    .line 154
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->emptyTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->setEmptyView(Landroid/view/View;)V

    .line 156
    return-void

    .line 147
    :cond_60
    new-instance v1, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->LAYOUT_RESOURCE:[I

    const-string v4, "LARGE"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;-><init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;Landroid/content/Context;[ILjava/lang/String;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->mAdapter:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    goto :goto_3e
.end method
