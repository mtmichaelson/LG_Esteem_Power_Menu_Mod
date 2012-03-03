.class Lcom/lge/appwidget/Andy_CalendarMonthlyView$1;
.super Ljava/lang/Object;
.source "Andy_CalendarMonthlyView.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyDayViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_CalendarMonthlyView;)V
    .registers 2
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$1;->this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "view"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 483
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$1;->this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 485
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_9

    .line 586
    :cond_8
    :goto_8
    return-void

    .line 490
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;

    .line 492
    .local v7, viewTag:Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;
    if-eqz v7, :cond_8

    .line 497
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->getJulianDay()I

    move-result v5

    .line 501
    .local v5, intentJulianDay:I
    invoke-virtual {v7}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->getIsHaveEvent()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_67

    .line 503
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 504
    .local v6, intentTime:Landroid/text/format/Time;
    invoke-virtual {v6, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 506
    const/4 v8, 0x0

    iput v8, v6, Landroid/text/format/Time;->hour:I

    .line 507
    const/4 v8, 0x0

    iput v8, v6, Landroid/text/format/Time;->minute:I

    .line 508
    const/4 v8, 0x0

    iput v8, v6, Landroid/text/format/Time;->second:I

    .line 510
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.calendar"

    const-string v10, "com.android.calendar.LaunchActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 514
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const/high16 v8, 0x1020

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 519
    const-string v8, "beginTime"

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 520
    const-string v8, "DETAIL_VIEW"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    const-string v8, "DETAIL_VIEW_MODE"

    const/4 v9, 0x2

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 529
    .end local v6       #intentTime:Landroid/text/format/Time;,
    :cond_67
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.calendar"

    const-string v10, "com.android.calendar.LaunchActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 533
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const/high16 v8, 0x1020

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 539
    .local v0, beginTime:Landroid/text/format/Time;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 541
    .local v3, endTime:Landroid/text/format/Time;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 542
    .local v2, currentTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 543
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 545
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 547
    iget v8, v2, Landroid/text/format/Time;->minute:I

    if-nez v8, :cond_e9

    .line 549
    iget v8, v2, Landroid/text/format/Time;->hour:I

    iput v8, v0, Landroid/text/format/Time;->hour:I

    .line 550
    const/4 v8, 0x0

    iput v8, v0, Landroid/text/format/Time;->minute:I

    .line 551
    const/4 v8, 0x0

    iput v8, v0, Landroid/text/format/Time;->second:I

    .line 569
    :goto_ad
    invoke-virtual {v3, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 571
    iget v8, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Landroid/text/format/Time;->hour:I

    .line 572
    const/4 v8, 0x0

    iput v8, v3, Landroid/text/format/Time;->minute:I

    .line 573
    const/4 v8, 0x0

    iput v8, v3, Landroid/text/format/Time;->second:I

    .line 575
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 576
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 578
    const-string v8, "beginTime"

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 579
    const-string v8, "endTime"

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 581
    const-string v8, "DETAIL_VIEW"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 582
    const-string v8, "DETAIL_VIEW_MODE"

    const/4 v9, 0x5

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 555
    :cond_e9
    iget v8, v2, Landroid/text/format/Time;->hour:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_fa

    .line 557
    iget v8, v2, Landroid/text/format/Time;->hour:I

    iput v8, v0, Landroid/text/format/Time;->hour:I

    .line 558
    const/4 v8, 0x0

    iput v8, v0, Landroid/text/format/Time;->minute:I

    .line 559
    const/4 v8, 0x0

    iput v8, v0, Landroid/text/format/Time;->second:I

    goto :goto_ad

    .line 563
    :cond_fa
    iget v8, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Landroid/text/format/Time;->hour:I

    .line 564
    const/4 v8, 0x0

    iput v8, v0, Landroid/text/format/Time;->minute:I

    .line 565
    const/4 v8, 0x0

    iput v8, v0, Landroid/text/format/Time;->second:I

    goto :goto_ad
.end method
