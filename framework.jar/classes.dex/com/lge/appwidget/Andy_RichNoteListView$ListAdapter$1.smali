.class Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$1;
.super Landroid/database/ContentObserver;
.source "Andy_RichNoteListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;-><init>(Lcom/lge/appwidget/Andy_RichNoteListView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

.field final synthetic val$this$0:Lcom/lge/appwidget/Andy_RichNoteListView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;Landroid/os/Handler;Lcom/lge/appwidget/Andy_RichNoteListView;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$1;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    iput-object p3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$1;->val$this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 114
    const-string v0, "Andy_RichNoteListView> "

    const-string v1, "  contentObserver called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$1;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 117
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$1;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method
