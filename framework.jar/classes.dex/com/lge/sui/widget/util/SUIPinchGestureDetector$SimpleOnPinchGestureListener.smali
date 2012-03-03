.class public Lcom/lge/sui/widget/util/SUIPinchGestureDetector$SimpleOnPinchGestureListener;
.super Ljava/lang/Object;
.source "SUIPinchGestureDetector.java"


# interfaces
.implements Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/util/SUIPinchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnPinchGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinchIn(Lcom/lge/sui/widget/util/SUIPinchGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onPinchOut(Lcom/lge/sui/widget/util/SUIPinchGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method
