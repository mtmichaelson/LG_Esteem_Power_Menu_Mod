.class Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "SUIIndexedListCursorAdapter.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;



# direct methods
.method public constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;

    .line 493
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 494
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->onContentChanged()V

    .line 502
    return-void
.end method
