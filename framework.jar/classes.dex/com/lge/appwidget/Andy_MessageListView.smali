.class public Lcom/lge/appwidget/Andy_MessageListView;
.super Landroid/widget/ListView;
.source "Andy_MessageListView.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;
    }
.end annotation


# static fields
.field public static final REMOTE_MESSAGE_LIST_ITEMS_PARCELABLE_KEY:Ljava/lang/String; = "MessageParcelable"



# instance fields
.field private isDisableScroll:Z

.field mAppWidgetId:I

.field mMessageListAdapter:Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;

.field mViewId:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageListView;->isDisableScroll:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageListView;->isDisableScroll:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageListView;->isDisableScroll:Z

    .line 51
    return-void
.end method

.method private isScrollChange(Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;Ljava/util/ArrayList;)Z
    .registers 10
    .parameter "listAdapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_MessageListParcelable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, pacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageListParcelable;>;"
    const/4 v6, 0x1

    .line 108
    if-nez p1, :cond_5

    move v2, v6

    .line 136
    .end local p0       
    :goto_4
    return v2

    .line 113
    .restart local p0       
    :cond_5
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->getMessageListParcelable()Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    .local v0, adapterPacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageListParcelable;>;"
    if-eqz p2, :cond_d

    if-nez v0, :cond_f

    :cond_d
    move v2, v6

    .line 118
    goto :goto_4

    .line 121
    :cond_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1b

    move v2, v6

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

    if-ge v1, v2, :cond_3b

    .line 129
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/appwidget/Andy_MessageListParcelable;

    iget-wide v2, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mId:J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/appwidget/Andy_MessageListParcelable;

    iget-wide v4, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_38

    move v2, v6

    .line 131
    goto :goto_4

    .line 127
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 136
    :cond_3b
    const/4 v2, 0x0

    goto :goto_4
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageListView;->isDisableScroll:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 326
    const/4 v0, 0x0

    .line 329
    :goto_6
    return v0

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_6
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v8, "com.android.mms"

    .line 141
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 143
    .local v2, listAdapter:Landroid/widget/ListAdapter;
    if-eqz v2, :cond_d

    iget-boolean v6, p0, Lcom/lge/appwidget/Andy_MessageListView;->isDisableScroll:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    .line 186
    :cond_d
    :goto_d
    return-void

    .line 148
    :cond_e
    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/appwidget/Andy_MessageListParcelable;

    .line 151
    .local v3, message:Lcom/lge/appwidget/Andy_MessageListParcelable;
    if-eqz v3, :cond_d

    .line 156
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_d

    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_MessageListParcelable;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4a

    .line 167
    const-string v6, "com.android.mms"

    const-string v6, "com.android.mms.ui.CBMessageViewActivity"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v6, "cbs_id"

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_MessageListParcelable;->getId()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    const-string v6, "cbs_body"

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_MessageListParcelable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/high16 v6, 0x1020

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 177
    :cond_4a
    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_MessageListParcelable;->getThreadId()J

    move-result-wide v4

    .line 179
    .local v4, threadId:J
    const-string v6, "com.android.mms"

    const-string v6, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v6, "thread_id"

    invoke-virtual {v1, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 182
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public setListItems(Landroid/os/Bundle;)V
    .registers 9
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    const-string v4, "MessageParcelable"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 62
    .local v3, parcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageListParcelable;>;"
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_f

    .line 102
    :goto_e
    return-void

    .line 71
    :cond_f
    const/4 v4, 0x1

    :try_start_10
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_MessageListView;->isDisableScroll:Z

    .line 74
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;

    .line 76
    .local v2, listAdapter:Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;
    if-nez v2, :cond_28

    .line 78
    new-instance v4, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;

    invoke-direct {v4, p0, v0, v3}, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;-><init>(Lcom/lge/appwidget/Andy_MessageListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    :goto_22
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_3d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_37

    .line 100
    .end local v2       #listAdapter:Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;,
    :goto_25
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_MessageListView;->isDisableScroll:Z

    goto :goto_e

    .line 82
    .restart local v2       #listAdapter:Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;,
    :cond_28
    :try_start_28
    invoke-direct {p0, v2, v3}, Lcom/lge/appwidget/Andy_MessageListView;->isScrollChange(Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;Ljava/util/ArrayList;)Z

    move-result v4

    if-ne v4, v6, :cond_41

    .line 84
    new-instance v4, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;

    invoke-direct {v4, p0, v0, v3}, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;-><init>(Lcom/lge/appwidget/Andy_MessageListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_36} :catch_37

    goto :goto_22

    .line 94
    .end local v2       #listAdapter:Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;,
    :catch_37
    move-exception v4

    move-object v1, v4

    .line 96
    .local v1, exception:Ljava/lang/Exception;
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_25

    .line 100
    .end local v1       #exception:Ljava/lang/Exception;,
    :catchall_3d
    move-exception v4

    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_MessageListView;->isDisableScroll:Z

    throw v4

    .line 88
    .restart local v2       #listAdapter:Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;,
    :cond_41
    :try_start_41
    invoke-virtual {v2, v0, v3}, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->setAgendaListItem(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_37

    goto :goto_22
.end method
