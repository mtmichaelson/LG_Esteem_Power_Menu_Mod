.class public Lcom/lge/appwidget/Andy_ContactGrid$ContactComparable;
.super Ljava/lang/Object;
.source "Andy_ContactGrid.java"


# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ContactGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/appwidget/Andy_ContactGrid$ContactData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_ContactGrid;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ContactGrid;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactComparable;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/appwidget/Andy_ContactGrid$ContactData;Lcom/lge/appwidget/Andy_ContactGrid$ContactData;)I
    .registers 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 244
    iget-object v0, p1, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->contactText:Ljava/lang/String;

    iget-object v1, p2, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->contactText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 240
    check-cast p1, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;

    .end local p1       
    check-cast p2, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;

    .end local p2       
    invoke-virtual {p0, p1, p2}, Lcom/lge/appwidget/Andy_ContactGrid$ContactComparable;->compare(Lcom/lge/appwidget/Andy_ContactGrid$ContactData;Lcom/lge/appwidget/Andy_ContactGrid$ContactData;)I

    move-result v0

    return v0
.end method
