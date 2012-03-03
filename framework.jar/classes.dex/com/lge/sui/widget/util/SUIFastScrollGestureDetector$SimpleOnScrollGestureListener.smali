.class public Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$SimpleOnScrollGestureListener;
.super Ljava/lang/Object;
.source "SUIFastScrollGestureDetector.java"


# interfaces
.implements Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScrollGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(FF)Z
    .registers 4
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(FF)Z
    .registers 4
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
