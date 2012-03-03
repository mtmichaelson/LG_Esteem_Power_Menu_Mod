.class final Lcom/lge/sui/widget/list/SUIListTableModel$2;
.super Ljava/lang/Object;
.source "SUIListTableModel.java"


# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIListTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;



# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModel$2;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    check-cast p1, Ljava/util/Map;

    .end local p1       
    check-cast p2, Ljava/util/Map;

    .end local p2       
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIListTableModel$2;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .registers 7
    .parameter "map1"
    .parameter "map2"

    .prologue
    const-string v3, "TEXT2"

    .line 316
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModel$2;->collator:Ljava/text/Collator;

    const-string v1, "TEXT2"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TEXT2"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
