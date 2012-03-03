.class public Lcom/lge/appwidget/Andy_SmartBoxGridView;
.super Landroid/widget/GridView;
.source "Andy_SmartBoxGridView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final REMOTE_SMARTBOX_ITEMS_PARCELABLE_KEY:Ljava/lang/String; = "SmartBoxParcelable"



# instance fields
.field _context:Landroid/content/Context;

.field _gridviewNumColumns:I

.field mSmartBoxGridAdapter:Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView;->_context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-string/jumbo v3, "numColumns"

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView;->_context:Landroid/content/Context;

    .line 33
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "numColumns"

    const/4 v1, 0x2

    invoke-interface {p2, v0, v3, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView;->_gridviewNumColumns:I

    .line 34
    const-string v0, "Andy_SmartBoxGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numColumns"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView;->_gridviewNumColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method public setSmartBoxGridItem(Landroid/os/Bundle;)V
    .registers 6
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 41
    const-string v1, "SmartBoxParcelable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    .local v0, parcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_SmartBoxParcelable;>;"
    new-instance v1, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView;->_context:Landroid/content/Context;

    iget v3, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView;->_gridviewNumColumns:I

    invoke-direct {v1, v2, v0, v3}, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView;->mSmartBoxGridAdapter:Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;

    .line 43
    iget-object v1, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView;->mSmartBoxGridAdapter:Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_SmartBoxGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    new-instance v1, Lcom/lge/appwidget/Andy_SmartBoxGridView$1;

    invoke-direct {v1, p0}, Lcom/lge/appwidget/Andy_SmartBoxGridView$1;-><init>(Lcom/lge/appwidget/Andy_SmartBoxGridView;)V

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_SmartBoxGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    return-void
.end method
