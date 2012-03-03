.class Lcom/lge/appwidget/ImageComparator;
.super Ljava/lang/Object;
.source "Andy_ImageInfo.java"


# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/appwidget/Andy_ImageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/appwidget/Andy_ImageInfo;Lcom/lge/appwidget/Andy_ImageInfo;)I
    .registers 7
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 24
    move-object v0, p1

    .line 25
    .local v0, p1:Lcom/lge/appwidget/Andy_ImageInfo;
    move-object v1, p2

    .line 27
    .local v1, p2:Lcom/lge/appwidget/Andy_ImageInfo;
    iget v2, v0, Lcom/lge/appwidget/Andy_ImageInfo;->imagePriority:I

    iget v3, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imagePriority:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    check-cast p1, Lcom/lge/appwidget/Andy_ImageInfo;

    .end local p1       
    check-cast p2, Lcom/lge/appwidget/Andy_ImageInfo;

    .end local p2       
    invoke-virtual {p0, p1, p2}, Lcom/lge/appwidget/ImageComparator;->compare(Lcom/lge/appwidget/Andy_ImageInfo;Lcom/lge/appwidget/Andy_ImageInfo;)I

    move-result v0

    return v0
.end method
