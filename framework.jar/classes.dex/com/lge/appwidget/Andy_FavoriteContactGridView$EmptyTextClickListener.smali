.class Lcom/lge/appwidget/Andy_FavoriteContactGridView$EmptyTextClickListener;
.super Ljava/lang/Object;
.source "Andy_FavoriteContactGridView.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FavoriteContactGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyTextClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$EmptyTextClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v0, favContactActIntent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.STREQUENT_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "menu_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$EmptyTextClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$100(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method
