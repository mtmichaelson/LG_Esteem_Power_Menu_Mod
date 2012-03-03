.class Lcom/lge/appwidget/Andy_ContactGrid$1;
.super Ljava/lang/Object;
.source "Andy_ContactGrid.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ContactGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_ContactGrid;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_ContactGrid;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid$1;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    move-object v1, v0

    .line 72
    .local v1, mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnItemClickListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ContactGrid$1;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_ContactGrid;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->quickContact:Landroid/net/Uri;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 76
    return-void
.end method
