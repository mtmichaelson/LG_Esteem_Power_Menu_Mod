.class Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;
.super Ljava/lang/Object;
.source "Andy_CalendarMonthlyView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_CalendarMonthlyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarMonthlyViewTag"
.end annotation


# instance fields
.field private mIsHaveEvent:Z

.field private mIsNowMonthDay:Z

.field private mJulianDay:I

.field final synthetic this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_CalendarMonthlyView;IZZ)V
    .registers 5
    .parameter
    .parameter "julianDay"
    .parameter "isHaveEvent"
    .parameter "isNowMonthDay"

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    iput p2, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mJulianDay:I

    .line 1187
    iput-boolean p3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mIsHaveEvent:Z

    .line 1188
    iput-boolean p4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mIsNowMonthDay:Z

    .line 1189
    return-void
.end method


# virtual methods
.method public getIsHaveEvent()Z
    .registers 2

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mIsHaveEvent:Z

    return v0
.end method

.method public getIsNowMonthDay()Z
    .registers 2

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mIsNowMonthDay:Z

    return v0
.end method

.method public getJulianDay()I
    .registers 2

    .prologue
    .line 1208
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mJulianDay:I

    return v0
.end method

.method public setIsHaveEvent(Z)V
    .registers 2
    .parameter "isHaveEvent"

    .prologue
    .line 1198
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mIsHaveEvent:Z

    .line 1199
    return-void
.end method

.method public setJulianDay(I)V
    .registers 2
    .parameter "julianDay"

    .prologue
    .line 1193
    iput p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mJulianDay:I

    .line 1194
    return-void
.end method

.method public setNowMonthDay(Z)V
    .registers 2
    .parameter "isNowMonthDay"

    .prologue
    .line 1203
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->mIsNowMonthDay:Z

    .line 1204
    return-void
.end method
