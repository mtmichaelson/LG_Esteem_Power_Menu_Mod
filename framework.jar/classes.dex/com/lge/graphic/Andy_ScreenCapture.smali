.class public Lcom/lge/graphic/Andy_ScreenCapture;
.super Ljava/lang/Object;
.source "Andy_ScreenCapture.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenCapture"



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const-string v0, "ScreenCapture"

    const-string v1, "loadLibrary screencapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string/jumbo v0, "screencapture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native saveBMP(Ljava/lang/String;)I
.end method
