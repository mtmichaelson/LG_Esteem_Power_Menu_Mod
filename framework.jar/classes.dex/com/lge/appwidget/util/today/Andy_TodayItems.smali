.class public Lcom/lge/appwidget/util/today/Andy_TodayItems;
.super Ljava/lang/Object;
.source "Andy_TodayItems.java"



# static fields
.field private static final DEFAULT_ORDER:Ljava/lang/String; = "012345"

.field private static final IMG_ORG_TODAY_ITEMS:[I = null

.field private static LEN_TODAY_ITEMS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.lge.appwidget.util.today.Andy_TodayItems"

.field private static _items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static _order:Ljava/lang/String;



# instance fields
.field private _context:Landroid/content/Context;

.field private _today_views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mHeight_Lengh:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->IMG_ORG_TODAY_ITEMS:[I

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_order:Ljava/lang/String;

    return-void

    .line 22
    :array_c
    .array-data 0x4
        0xc4t 0x1t 0x2t 0x2t
        0xc8t 0x1t 0x2t 0x2t
        0xc7t 0x1t 0x2t 0x2t
        0xc6t 0x1t 0x2t 0x2t
        0xc3t 0x1t 0x2t 0x2t
        0xc5t 0x1t 0x2t 0x2t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->mHeight_Lengh:I

    .line 43
    iput-object p1, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_context:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_items:Ljava/util/ArrayList;

    .line 46
    sget-object v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_order:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->organizeItems(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private initTodayViewsList()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    if-nez v0, :cond_c

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    .line 116
    :goto_b
    return-void

    .line 114
    :cond_c
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_b
.end method

.method private populateTodayList(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 151
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 152
    .local v4, view:Landroid/view/View;
    const/4 v2, 0x0

    .line 154
    .local v2, iv_pic:Landroid/widget/ImageView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    sget v5, Lcom/lge/appwidget/util/today/Andy_TodayItems;->LEN_TODAY_ITEMS:I

    if-ge v0, v5, :cond_47

    .line 156
    const v5, 0x2030027

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 157
    const v5, 0x20500de

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2       #iv_pic:Landroid/widget/ImageView;,
    check-cast v2, Landroid/widget/ImageView;

    .line 159
    .restart local v2       #iv_pic:Landroid/widget/ImageView;,
    iget v5, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->mHeight_Lengh:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2c

    .line 161
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    iget v6, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->mHeight_Lengh:I

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .end local v3       #params:Landroid/widget/FrameLayout$LayoutParams;,
    :cond_2c
    sget-object v6, Lcom/lge/appwidget/util/today/Andy_TodayItems;->IMG_ORG_TODAY_ITEMS:[I

    sget-object v5, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_items:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v5, v6, v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v5, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 171
    :cond_47
    return-void
.end method

.method private setItemLen(I)V
    .registers 4
    .parameter "len"

    .prologue
    .line 85
    rem-int/lit8 v0, p1, 0x6

    .line 86
    .local v0, rem:I
    if-lez v0, :cond_8

    move v1, v0

    :goto_5
    sput v1, Lcom/lge/appwidget/util/today/Andy_TodayItems;->LEN_TODAY_ITEMS:I

    .line 87
    return-void

    :cond_8
    move v1, p1

    .line 86
    goto :goto_5
.end method

.method private setItemOrder(Ljava/lang/String;)V
    .registers 5
    .parameter "order"

    .prologue
    .line 91
    sget-object v1, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_items:Ljava/util/ArrayList;

    if-nez v1, :cond_26

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_items:Ljava/util/ArrayList;

    .line 100
    :goto_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    sget v1, Lcom/lge/appwidget/util/today/Andy_TodayItems;->LEN_TODAY_ITEMS:I

    if-ge v0, v1, :cond_2c

    .line 102
    sget-object v1, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_items:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 97
    .end local v0       #i:I,
    :cond_26
    sget-object v1, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_b

    .line 104
    .restart local v0       #i:I,
    :cond_2c
    return-void
.end method


# virtual methods
.method public getTodayViews()Ljava/util/List;
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
    .line 120
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    if-nez v0, :cond_10

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    .line 125
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->populateTodayList(Landroid/content/Context;)V

    .line 128
    :cond_10
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    return-object v0
.end method

.method public getTodayViewsSize()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    if-nez v0, :cond_10

    .line 136
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    .line 138
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->populateTodayList(Landroid/content/Context;)V

    .line 141
    :cond_10
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_today_views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public organizeItems(Ljava/lang/String;)V
    .registers 4
    .parameter "order"

    .prologue
    .line 55
    if-nez p1, :cond_1d

    .line 59
    const-string v0, "012345"

    sput-object v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_order:Ljava/lang/String;

    .line 72
    :goto_6
    sget-object v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_order:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->setItemLen(I)V

    .line 73
    sget-object v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_order:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->setItemOrder(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->initTodayViewsList()V

    .line 76
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->populateTodayList(Landroid/content/Context;)V

    .line 77
    return-void

    .line 63
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_2e

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_2e
    sput-object p1, Lcom/lge/appwidget/util/today/Andy_TodayItems;->_order:Ljava/lang/String;

    goto :goto_6
.end method

.method public setIconLayoutHeight(I)V
    .registers 2
    .parameter "length"

    .prologue
    .line 81
    iput p1, p0, Lcom/lge/appwidget/util/today/Andy_TodayItems;->mHeight_Lengh:I

    .line 82
    return-void
.end method
