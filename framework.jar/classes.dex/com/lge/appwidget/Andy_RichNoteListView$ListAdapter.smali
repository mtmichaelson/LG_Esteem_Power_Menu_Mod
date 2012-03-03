.class Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_RichNoteListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_RichNoteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;
    }
.end annotation


# instance fields
.field contentObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_RichNoteListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_RichNoteListView;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "mContext"

    .prologue
    const/4 v3, 0x0

    .line 105
    iput-object p1, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    iput-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->contentObserver:Landroid/database/ContentObserver;

    .line 106
    const-string v0, "content://com.lge.app.richnote/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "data"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p1, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    .line 110
    new-instance v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2, p1}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$1;-><init>(Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;Landroid/os/Handler;Lcom/lge/appwidget/Andy_RichNoteListView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->contentObserver:Landroid/database/ContentObserver;

    .line 121
    iget-object v0, p1, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->contentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 135
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 140
    const-string/jumbo v3, "position>>>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez p2, :cond_62

    .line 142
    new-instance p2, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;

    .end local p2       
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_RichNoteListView;->access$000(Lcom/lge/appwidget/Andy_RichNoteListView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v4}, Lcom/lge/appwidget/Andy_RichNoteListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_RichNoteListView;->getHeight()I

    move-result v5

    invoke-direct {p2, p0, v3, v4, v5}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;-><init>(Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;Landroid/content/Context;II)V

    .line 144
    .restart local p2       
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    iget-object v3, v3, Lcom/lge/appwidget/Andy_RichNoteListView;->pageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :goto_39
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    iget-object v3, v3, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 155
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    iget-object v3, v3, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    iget-object v4, v4, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    const-string v5, "data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, xmlString:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    iget-object v3, v3, Lcom/lge/appwidget/Andy_RichNoteListView;->mRichnoteSAXParser:Lcom/lge/appwidget/Andy_RichnoteSAXParser;

    invoke-virtual {v3, v2}, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->parseDocument(Ljava/lang/String;)Lcom/lge/appwidget/Note;

    move-result-object v1

    .line 159
    .local v1, mNote:Lcom/lge/appwidget/Note;
    move-object v0, p2

    check-cast v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;

    move-object v3, v0

    invoke-virtual {v3, v1}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->populateDynamicLayout(Lcom/lge/appwidget/Note;)V

    .line 161
    return-object p2

    .line 150
    .end local v1       #mNote:Lcom/lge/appwidget/Note;,
    .end local v2       #xmlString:Ljava/lang/String;,
    :cond_62
    move-object v0, p2

    check-cast v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;

    move-object v3, v0

    iget-object v4, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v4}, Lcom/lge/appwidget/Andy_RichNoteListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_RichNoteListView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->setLayoutSize(II)V

    goto :goto_39
.end method
