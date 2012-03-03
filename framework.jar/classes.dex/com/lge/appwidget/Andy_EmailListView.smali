.class public Lcom/lge/appwidget/Andy_EmailListView;
.super Landroid/widget/ListView;
.source "Andy_EmailListView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;
    }
.end annotation


# static fields
.field public static final REMOTE_EMAIL_LIST_ITEMS_PARCELABLE_KEY:Ljava/lang/String; = "EmailParcelable"



# instance fields
.field private isDisableScroll:Z

.field mAppWidgetId:I

.field mContext:Landroid/content/Context;

.field mEmailListAdapter:Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;

.field mViewId:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailListView;->isDisableScroll:Z

    .line 37
    iput-object p1, p0, Lcom/lge/appwidget/Andy_EmailListView;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailListView;->isDisableScroll:Z

    .line 43
    iput-object p1, p0, Lcom/lge/appwidget/Andy_EmailListView;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailListView;->isDisableScroll:Z

    .line 49
    iput-object p1, p0, Lcom/lge/appwidget/Andy_EmailListView;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_EmailListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailListView;->isDisableScroll:Z

    return v0
.end method

.method private isScrollChange(Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;Ljava/util/ArrayList;)Z
    .registers 8
    .parameter "listAdapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_EmailListParcelable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, pacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailListParcelable;>;"
    const/4 v4, 0x1

    .line 108
    if-nez p1, :cond_5

    move v2, v4

    .line 136
    .end local p0       
    :goto_4
    return v2

    .line 113
    .restart local p0       
    :cond_5
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->getEmailListParcelable()Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    .local v0, adapterPacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailListParcelable;>;"
    if-eqz p2, :cond_d

    if-nez v0, :cond_f

    :cond_d
    move v2, v4

    .line 118
    goto :goto_4

    .line 121
    :cond_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1b

    move v2, v4

    .line 123
    goto :goto_4

    .line 127
    :cond_1b
    const/4 v1, 0x0

    .end local p0       
    .local v1, i:I
    :goto_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 129
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/appwidget/Andy_EmailListParcelable;

    iget v2, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgId:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/appwidget/Andy_EmailListParcelable;

    iget v3, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgId:I

    if-eq v2, v3, :cond_36

    move v2, v4

    .line 131
    goto :goto_4

    .line 127
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 136
    :cond_39
    const/4 v2, 0x0

    goto :goto_4
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailListView;->isDisableScroll:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 417
    const/4 v0, 0x0

    .line 420
    :goto_6
    return v0

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_6
.end method

.method public setEmailListItems(Landroid/os/Bundle;)V
    .registers 8
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    const-string v3, "EmailParcelable"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 62
    .local v2, parcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailListParcelable;>;"
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_f

    .line 102
    :goto_e
    return-void

    .line 72
    :cond_f
    const/4 v3, 0x1

    :try_start_10
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailListView;->isDisableScroll:Z

    .line 75
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;

    .line 77
    .local v1, listAdapter:Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;
    if-nez v1, :cond_25

    .line 79
    new-instance v3, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;

    invoke-direct {v3, p0, v0, v2}, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;-><init>(Lcom/lge/appwidget/Andy_EmailListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_34

    .line 100
    .end local v1       #listAdapter:Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;,
    :goto_22
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_EmailListView;->isDisableScroll:Z

    goto :goto_e

    .line 83
    .restart local v1       #listAdapter:Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;,
    :cond_25
    :try_start_25
    invoke-direct {p0, v1, v2}, Lcom/lge/appwidget/Andy_EmailListView;->isScrollChange(Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;Ljava/util/ArrayList;)Z

    move-result v3

    if-ne v3, v5, :cond_36

    .line 85
    new-instance v3, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;

    invoke-direct {v3, p0, v0, v2}, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;-><init>(Lcom/lge/appwidget/Andy_EmailListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_22

    .line 94
    .end local v1       #listAdapter:Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;,
    :catch_34
    move-exception v3

    goto :goto_22

    .line 89
    .restart local v1       #listAdapter:Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;,
    :cond_36
    invoke-virtual {v1, v0, v2}, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->setEmailListItem(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_34

    goto :goto_22

    .line 100
    .end local v1       #listAdapter:Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;,
    :catchall_3a
    move-exception v3

    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_EmailListView;->isDisableScroll:Z

    throw v3
.end method
