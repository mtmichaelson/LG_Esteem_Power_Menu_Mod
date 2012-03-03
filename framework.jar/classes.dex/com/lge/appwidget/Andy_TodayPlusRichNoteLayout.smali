.class public Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;
.super Landroid/widget/RelativeLayout;
.source "Andy_TodayPlusRichNoteLayout.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;,
        Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;
    }
.end annotation


# static fields
.field private static final AUDIO_DATA:Ljava/lang/String; = "IsAudioData"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.app.richnote"

.field public static final COLUME_ALARM:I = 0x5

.field public static final COLUME_AUDIO_SIZE:I = 0x4

.field public static final COLUME_CONTENTS:I = 0x2

.field public static final COLUME_IMAGE_SIZE:I = 0x3

.field public static final COLUME_MODIFIED_DATE:I = 0x6

.field public static final COLUME_ROWID:I = 0x0

.field public static final COLUME_TITLE:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "time DESC"

.field private static final LOCATION_DATA:Ljava/lang/String; = "IsLocationData"

.field public static final RICH_NOTE_DETAIL_VIEW_ACTIVITY_INTENT:Ljava/lang/String; = "com.lge.appwidget.todayplus.action.RICH_NOTE_DETAIL_VIEW_ACTIVITY"

.field public static final RICH_NOTE_ITEM_INFORMATION_INTENT:Ljava/lang/String; = "com.lge.appwidget.todayplus.action.RICH_NOTE_ITEM_INFORMATION"

.field public static final RICH_NOTE_NO_ITEM_INTENT:Ljava/lang/String; = "com.lge.appwidget.todayplus.action.RICH_NOTE_NO_ITEM"

.field public static final TODAY_RICH_NOTE_ID:Ljava/lang/String; = "widget/rich_note_id/"

.field public static final TODAY_URI_SCHEME:Ljava/lang/String; = "today://"

.field public static final VIEW_PROJECTION:[Ljava/lang/String;

.field private static mRecentRichNoteItemId:J



# instance fields
.field mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const-string v0, "content://com.lge.app.richnote/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->CONTENT_URI:Landroid/net/Uri;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "audio_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->VIEW_PROJECTION:[Ljava/lang/String;

    .line 54
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRecentRichNoteItemId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->initRichNoteView(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->initRichNoteView(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->initRichNoteView(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private getRecentlyRichNote()Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;
    .registers 18

    .prologue
    .line 170
    const/4 v15, 0x0

    .line 171
    .local v15, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, contentResolver:Landroid/content/ContentResolver;
    :try_start_9
    sget-object v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->VIEW_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "time DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 177
    if-eqz v15, :cond_1e

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_1b} :catch_5c

    move-result v1

    if-nez v1, :cond_25

    .line 179
    :cond_1e
    const/4 v1, 0x0

    .line 201
    if-eqz v15, :cond_24

    .line 203
    :goto_21
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_24
    :goto_24
    return-object v1

    .line 182
    :cond_25
    :try_start_25
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 184
    const/4 v1, 0x0

    .line 201
    if-eqz v15, :cond_24

    goto :goto_21

    .line 187
    :cond_2f
    new-instance v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v14}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;-><init>(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;JLjava/lang/String;Ljava/lang/String;JJJJ)V
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_59} :catch_5c

    .line 201
    if-eqz v15, :cond_24

    goto :goto_21

    .line 195
    :catch_5c
    move-exception v1

    move-object/from16 v16, v1

    .line 197
    .local v16, sqliteException:Landroid/database/sqlite/SQLiteException;
    :try_start_5f
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_69

    .line 201
    if-eqz v15, :cond_67

    .line 203
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_67
    const/4 v1, 0x0

    goto :goto_24

    .line 201
    .end local v16       #sqliteException:Landroid/database/sqlite/SQLiteException;,
    :catchall_69
    move-exception v1

    if-eqz v15, :cond_6f

    .line 203
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_6f
    throw v1
.end method


# virtual methods
.method public initRichNoteView(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->removeAllViews()V

    .line 80
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2030028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, view:Landroid/view/View;
    const v2, 0x205016d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    iput-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    .line 85
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->addView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 158
    sget-wide v3, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRecentRichNoteItemId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2a

    .line 160
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.appwidget.todayplus.action.RICH_NOTE_DETAIL_VIEW_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, intent:Landroid/content/Intent;
    sget-wide v3, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRecentRichNoteItemId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v3, "today://widget/rich_note_id/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 166
    .end local v0       #data:Ljava/lang/String;,
    .end local v1       #dataUri:Landroid/net/Uri;,
    .end local v2       #intent:Landroid/content/Intent;,
    :cond_2a
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 94
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->getRecentlyRichNote()Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;

    move-result-object v1

    .line 96
    .local v1, richNoteData:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRecentRichNoteItemId:J

    .line 97
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    if-nez v1, :cond_25

    .line 100
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->setVisibility(I)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.appwidget.todayplus.action.RICH_NOTE_NO_ITEM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    :goto_24
    return-void

    .line 106
    .end local v0       #intent:Landroid/content/Intent;,
    :cond_25
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->setVisibility(I)V

    .line 107
    iget-wide v2, v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mRowId:J

    sput-wide v2, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRecentRichNoteItemId:J

    .line 108
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    invoke-virtual {v2, v1}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->setTodayPlusRichNoteView(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;)Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;

    .line 109
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    invoke-virtual {v2, v1}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->setTodayPlusRichNoteView(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;)Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;

    move-result-object v1

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.appwidget.todayplus.action.RICH_NOTE_ITEM_INFORMATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v0       #intent:Landroid/content/Intent;,
    const-string v2, "IsLocationData"

    iget-boolean v3, v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mIsLocationData:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v2, "IsAudioData"

    iget-boolean v3, v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mIsAudioData:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_24
.end method

.method public refreshItem(I)V
    .registers 6
    .parameter "number"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->getRecentlyRichNote()Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;

    move-result-object v1

    .line 124
    .local v1, richNoteData:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRecentRichNoteItemId:J

    .line 125
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    if-nez v1, :cond_22

    .line 128
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->setVisibility(I)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.appwidget.todayplus.action.RICH_NOTE_NO_ITEM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    :goto_21
    return-void

    .line 134
    .end local v0       #intent:Landroid/content/Intent;,
    :cond_22
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->setVisibility(I)V

    .line 135
    iget-wide v2, v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mRowId:J

    sput-wide v2, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRecentRichNoteItemId:J

    .line 136
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->mRichNoteView:Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;

    invoke-virtual {v2, v1}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteView;->setTodayPlusRichNoteView(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;)Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;

    move-result-object v1

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.appwidget.todayplus.action.RICH_NOTE_ITEM_INFORMATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v0       #intent:Landroid/content/Intent;,
    const-string v2, "IsLocationData"

    iget-boolean v3, v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mIsLocationData:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const-string v2, "IsAudioData"

    iget-boolean v3, v1, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$RichNoteData;->mIsAudioData:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_21
.end method
