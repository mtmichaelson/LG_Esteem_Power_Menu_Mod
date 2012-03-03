.class Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout$1;
.super Ljava/lang/Object;
.source "Andy_ContactGrid.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

.field final synthetic val$this$0:Lcom/lge/appwidget/Andy_ContactGrid;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;Lcom/lge/appwidget/Andy_ContactGrid;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout$1;->this$1:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    iput-object p2, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout$1;->val$this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 325
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 335
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 328
    :pswitch_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ontouchDown"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout$1;->this$1:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->access$000(Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout$1;->this$1:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->quickContact:Landroid/net/Uri;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_7

    .line 325
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
