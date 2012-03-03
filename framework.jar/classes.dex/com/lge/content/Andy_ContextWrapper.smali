.class public Lcom/lge/content/Andy_ContextWrapper;
.super Landroid/content/ContextWrapper;
.source "Andy_ContextWrapper.java"


# interfaces
.implements Lcom/lge/content/Andy_IContext;


# instance fields
.field mBase:Landroid/app/Andy_ApplicationContext;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "base"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 26
    instance-of v0, p1, Landroid/app/Andy_ApplicationContext;

    if-eqz v0, :cond_12

    .line 27
    check-cast p1, Landroid/app/Andy_ApplicationContext;

    .end local p1       
    iput-object p1, p0, Lcom/lge/content/Andy_ContextWrapper;->mBase:Landroid/app/Andy_ApplicationContext;

    .line 31
    :goto_c
    iget-object v0, p0, Lcom/lge/content/Andy_ContextWrapper;->mBase:Landroid/app/Andy_ApplicationContext;

    invoke-super {p0, v0}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 32
    return-void

    .line 29
    .restart local p1       
    :cond_12
    invoke-static {p1}, Landroid/app/Andy_ApplicationContext;->translate(Landroid/content/Context;)Landroid/app/Andy_ApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/content/Andy_ContextWrapper;->mBase:Landroid/app/Andy_ApplicationContext;

    goto :goto_c
.end method
