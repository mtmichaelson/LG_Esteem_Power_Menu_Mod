.class Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;
.super Landroid/database/ContentObserver;
.source "Andy_FavoriteContactGridView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FavoriteContactGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    .line 229
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 231
    iget-object v0, p1, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    .line 234
    :cond_9
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 238
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 240
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->wasRequeried:Z

    .line 241
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$000(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 242
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$ContactsObserver;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$000(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->notifyDataSetChanged()V

    .line 244
    :cond_20
    return-void
.end method
