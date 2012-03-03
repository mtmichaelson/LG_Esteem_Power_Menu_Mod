.class public Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_CalendarAgendaListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_CalendarAgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Andy_CalendarAgendaListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;
    }
.end annotation


# instance fields
.field private mAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

.field private mCalendarEventInfomations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarEventParcelables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentJulianDay:I

.field private mCurrentTime:Landroid/text/format/Time;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_CalendarAgendaListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView;Landroid/content/Context;Ljava/util/ArrayList;Landroid/text/format/Time;ILcom/lge/appwidget/Andy_CalendarAgendaView;)V
    .registers 13
    .parameter
    .parameter "context"
    .parameter
    .parameter "currentTime"
    .parameter "currentJulianDay"
    .parameter "agendaView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;",
            "Landroid/text/format/Time;",
            "I",
            "Lcom/lge/appwidget/Andy_CalendarAgendaView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p3, pacelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->this$0:Lcom/lge/appwidget/Andy_CalendarAgendaListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->setAgendaListItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/text/format/Time;ILcom/lge/appwidget/Andy_CalendarAgendaView;)V

    .line 190
    return-void
.end method

.method private initEvent(Ljava/util/ArrayList;)V
    .registers 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, pacelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v12, eventPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v11, eventPositionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_df

    .line 222
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/appwidget/Andy_CalendarEventParcelable;

    .line 226
    .local v15, parcelable:Lcom/lge/appwidget/Andy_CalendarEventParcelable;
    iget v3, v15, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCurrentJulianDay:I

    move v4, v0

    if-ge v3, v4, :cond_73

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCurrentJulianDay:I

    move/from16 v16, v0

    .line 235
    .local v16, parcelableStartDay:I
    :goto_29
    iget v3, v15, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndDay:I

    sub-int v9, v3, v16

    .line 237
    .local v9, eventDays:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_2e
    if-gt v14, v9, :cond_db

    .line 239
    add-int v19, v16, v14

    .line 241
    .local v19, startDay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCurrentJulianDay:I

    move v3, v0

    move/from16 v0, v19

    move v1, v3

    if-ne v0, v1, :cond_79

    .line 243
    iget v3, v15, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mIsAllDay:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_79

    iget-wide v3, v15, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEnd:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCurrentTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_79

    .line 245
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 247
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_70
    :goto_70
    add-int/lit8 v14, v14, 0x1

    goto :goto_2e

    .line 232
    .end local v9       #eventDays:I,
    .end local v14       #j:I,
    .end local v16       #parcelableStartDay:I,
    .end local v19       #startDay:I,
    :cond_73
    move-object v0, v15

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    move/from16 v16, v0

    .restart local v16       #parcelableStartDay:I,
    goto :goto_29

    .line 255
    .restart local v9       #eventDays:I,
    .restart local v14       #j:I,
    .restart local v19       #startDay:I,
    :cond_79
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b9

    .line 257
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;

    .line 259
    .local v10, eventPosition:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;
    if-nez v10, :cond_a4

    .line 261
    new-instance v10, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;

    .end local v10       #eventPosition:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;,
    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;-><init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;I)V

    .line 264
    .restart local v10       #eventPosition:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;,
    :cond_a4
    invoke-virtual {v10, v13}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->addCalendarEventPosition(I)V

    .line 265
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v12, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 270
    .end local v10       #eventPosition:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;,
    :cond_b9
    new-instance v10, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;-><init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;I)V

    .line 272
    .restart local v10       #eventPosition:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;,
    invoke-virtual {v10, v13}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->addCalendarEventPosition(I)V

    .line 273
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 220
    .end local v10       #eventPosition:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;,
    .end local v19       #startDay:I,
    :cond_db
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 280
    .end local v9       #eventDays:I,
    .end local v14       #j:I,
    .end local v15       #parcelable:Lcom/lge/appwidget/Andy_CalendarEventParcelable;,
    .end local v16       #parcelableStartDay:I,
    :cond_df
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 285
    const/4 v13, 0x0

    .end local p1       #pacelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    :goto_e3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_14f

    .line 287
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;

    .line 289
    .local v17, position:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;
    if-nez v17, :cond_f4

    .line 285
    :cond_f1
    add-int/lit8 v13, v13, 0x1

    goto :goto_e3

    .line 294
    :cond_f4
    invoke-virtual/range {v17 .. v17}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->getCalendarEventPositions()Ljava/util/ArrayList;

    move-result-object v18

    .line 295
    .local v18, positions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;

    invoke-virtual/range {p1 .. p1}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->getJulianDay()J

    move-result-wide v7

    .line 297
    .local v7, eventJulianDay:J
    const/4 v14, 0x0

    .restart local v14       #j:I,
    :goto_103
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_f1

    .line 299
    if-nez v14, :cond_12e

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    move-object v9, v0

    new-instance v3, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->this$0:Lcom/lge/appwidget/Andy_CalendarAgendaListView;

    move-object v4, v0

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;-><init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView;IZJ)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :goto_12b
    add-int/lit8 v14, v14, 0x1

    goto :goto_103

    .line 305
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    move-object v9, v0

    new-instance v3, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->this$0:Lcom/lge/appwidget/Andy_CalendarAgendaListView;

    move-object v4, v0

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;-><init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView;IZJ)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12b

    .line 310
    .end local v7       #eventJulianDay:J,
    .end local v14       #j:I,
    .end local v17       #position:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;,
    .end local v18       #positions:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_14f
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->notifyDataSetChanged()V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    move-object v3, v0

    if-eqz v3, :cond_164

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_16c

    .line 315
    :cond_164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->requestShowEmptyView()V

    .line 317
    :cond_16c
    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;)V
    .registers 25
    .parameter "position"
    .parameter "view"

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->this$0:Lcom/lge/appwidget/Andy_CalendarAgendaListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 395
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_d

    .line 488
    :cond_c
    :goto_c
    return-void

    .line 400
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_c

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;

    .line 408
    .local v5, info:Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;
    if-eqz v5, :cond_c

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventParcelables:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->getIndex()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/appwidget/Andy_CalendarEventParcelable;

    .line 415
    .local v11, parcelable:Lcom/lge/appwidget/Andy_CalendarEventParcelable;
    const v18, 0x205002a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 417
    .local v4, indexView:Landroid/widget/TextView;
    const v18, 0x205002d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 418
    .local v16, titleView:Landroid/widget/TextView;
    const v18, 0x205002f

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 419
    .local v7, locationView:Landroid/widget/TextView;
    const v18, 0x205002c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 420
    .local v14, timeView:Landroid/widget/TextView;
    const v18, 0x205002e

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 421
    .local v10, noLocationTitleView:Landroid/widget/TextView;
    const v18, 0x205002b

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 424
    .local v17, type:Landroid/widget/ImageView;
    iget-object v15, v11, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mTitle:Ljava/lang/String;

    .line 425
    .local v15, title:Ljava/lang/String;
    iget-object v6, v11, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventLocation:Ljava/lang/String;

    .line 426
    .local v6, location:Ljava/lang/String;
    iget-wide v12, v11, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mBegin:J

    .line 428
    .local v12, time:J
    if-eqz v15, :cond_a3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_ae

    .line 431
    :cond_a3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x20800d8

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 434
    :cond_ae
    if-eqz v6, :cond_b6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_13e

    .line 437
    :cond_b6
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    const/16 v18, 0x8

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    const/16 v18, 0x0

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    :goto_d2
    move-object v0, v11

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mIsAllDay:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_162

    .line 455
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x20800db

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :goto_f0
    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->isNeedIndex()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_195

    .line 464
    const/16 v18, 0x0

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 467
    .local v3, indexTime:Landroid/text/format/Time;
    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->getJulianDay()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v8

    .line 469
    .local v8, millis:J
    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->getJulianDay()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCurrentJulianDay:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_16d

    .line 471
    const/16 v18, 0x8

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    .end local v3       #indexTime:Landroid/text/format/Time;,
    .end local v8       #millis:J,
    :goto_134
    move-object v0, v11

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_c

    .line 445
    :cond_13e
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    const/16 v18, 0x8

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d2

    .line 459
    :cond_162
    invoke-static {v2, v12, v13}, Lcom/lge/appwidget/util/calendar/Andy_TimeHelper;->getTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f0

    .line 473
    .restart local v3       #indexTime:Landroid/text/format/Time;,
    .restart local v8       #millis:J,
    :cond_16d
    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->getJulianDay()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCurrentJulianDay:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_18a

    .line 475
    const/16 v18, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_134

    .line 479
    :cond_18a
    invoke-static {v2, v8, v9}, Lcom/lge/appwidget/util/calendar/Andy_TimeHelper;->getAgendaIndexTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_134

    .line 484
    .end local v3       #indexTime:Landroid/text/format/Time;,
    .end local v8       #millis:J,
    :cond_195
    const/16 v18, 0x8

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_134
.end method

.method public getCalendarEventParcelable()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventParcelables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventParcelables:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventParcelables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1b

    :cond_19
    move-object v1, v2

    .line 353
    :goto_1a
    return-object v1

    .line 339
    :cond_1b
    if-ltz p1, :cond_25

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_27

    :cond_25
    move-object v1, v2

    .line 342
    goto :goto_1a

    .line 345
    :cond_27
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;

    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->getIndex()I

    move-result v0

    .line 347
    .local v0, index:I
    if-ltz v0, :cond_3d

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventParcelables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3f

    :cond_3d
    move-object v1, v2

    .line 350
    goto :goto_1a

    .line 353
    :cond_3f
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventParcelables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1a
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 358
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 365
    if-nez p2, :cond_a

    .line 367
    invoke-virtual {p0, p3}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, view:Landroid/view/View;
    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->bindView(ILandroid/view/View;)V

    .line 376
    return-object v0

    .line 371
    .end local v0       #view:Landroid/view/View;,
    :cond_a
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;,
    goto :goto_6
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public setAgendaListItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/text/format/Time;ILcom/lge/appwidget/Andy_CalendarAgendaView;)V
    .registers 7
    .parameter "context"
    .parameter
    .parameter "currentTime"
    .parameter "currentJulianDay"
    .parameter "agendaView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;",
            "Landroid/text/format/Time;",
            "I",
            "Lcom/lge/appwidget/Andy_CalendarAgendaView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, pacelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    iput-object p2, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventParcelables:Ljava/util/ArrayList;

    .line 201
    iput-object p5, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

    .line 202
    iput-object p3, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCurrentTime:Landroid/text/format/Time;

    .line 203
    iput p4, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCurrentJulianDay:I

    .line 205
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->mCalendarEventInfomations:Ljava/util/ArrayList;

    .line 208
    invoke-direct {p0, p2}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->initEvent(Ljava/util/ArrayList;)V

    .line 209
    return-void
.end method
