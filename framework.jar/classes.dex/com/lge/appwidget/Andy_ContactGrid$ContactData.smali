.class public Lcom/lge/appwidget/Andy_ContactGrid$ContactData;
.super Ljava/lang/Object;
.source "Andy_ContactGrid.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ContactGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactData"
.end annotation


# instance fields
.field contactLookUpUri:Landroid/net/Uri;

.field contactText:Ljava/lang/String;

.field contactUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ContactGrid;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter "mURI"
    .parameter "mText"
    .parameter "contactLookUp"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->contactUri:Landroid/net/Uri;

    .line 256
    iput-object p3, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->contactText:Ljava/lang/String;

    .line 257
    iput-object p4, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->contactLookUpUri:Landroid/net/Uri;

    .line 258
    return-void
.end method
