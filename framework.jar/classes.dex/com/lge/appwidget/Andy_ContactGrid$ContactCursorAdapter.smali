.class public Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_ContactGrid.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ContactGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactCursorAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ContactGrid;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 188
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/appwidget/Andy_ContactGrid;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/lge/appwidget/Andy_ContactGrid;->projection:[Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/appwidget/Andy_ContactGrid;->starRed:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p1, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    .line 192
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 194
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 197
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 207
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 211
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    move-object v0, v10

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v11, v0

    iget-object v11, v11, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v2, v10

    .line 215
    .local v2, _Id2:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v11, v0

    iget-object v11, v11, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v12, v0

    iget-object v12, v12, Lcom/lge/appwidget/Andy_ContactGrid;->projection:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v11, v0

    iget-object v11, v11, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v12, v0

    iget-object v12, v12, Lcom/lge/appwidget/Andy_ContactGrid;->projection:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 218
    .local v7, photoId:J
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PhotoID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 221
    .local v9, uri2:Landroid/net/Uri;
    if-nez p2, :cond_107

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    new-instance v11, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v14, v0

    iget v14, v14, Lcom/lge/appwidget/Andy_ContactGrid;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v15, v0

    iget v15, v15, Lcom/lge/appwidget/Andy_ContactGrid;->height:I

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/content/Context;II)V

    iput-object v11, v10, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    .line 227
    .end local p2       
    :goto_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    invoke-virtual {v10, v9}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setImageURI(Landroid/net/Uri;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    invoke-virtual {v10, v4}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setText(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v11, v0

    iget-object v11, v11, Lcom/lge/appwidget/Andy_ContactGrid;->cur:Landroid/database/Cursor;

    const-string v12, "lookup"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, lookupKey2:Ljava/lang/String;
    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 233
    .local v6, lookupUri2:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    invoke-virtual {v10, v6}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setContactUri(Landroid/net/Uri;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    iget-object v10, v10, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    return-object v10

    .line 225
    .end local v5       #lookupKey2:Ljava/lang/String;,
    .end local v6       #lookupUri2:Landroid/net/Uri;,
    .restart local p2       
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactCursorAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    move-object v10, v0

    check-cast p2, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    .end local p2       
    move-object/from16 v0, p2

    move-object v1, v10

    iput-object v0, v1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    goto :goto_c5
.end method
