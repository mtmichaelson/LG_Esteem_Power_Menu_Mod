.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"


# interfaces
.implements Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 66
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method
