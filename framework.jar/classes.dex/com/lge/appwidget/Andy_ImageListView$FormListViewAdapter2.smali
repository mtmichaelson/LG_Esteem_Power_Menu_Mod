.class public Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter2;
.super Landroid/widget/ArrayAdapter;
.source "Andy_ImageListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ImageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FormListViewAdapter2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/appwidget/Andy_ImageListView$ListType2;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ImageListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ImageListView;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/appwidget/Andy_ImageListView$ListType2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/appwidget/Andy_ImageListView$ListType2;>;"
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter2;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    .line 142
    invoke-static {p1}, Lcom/lge/appwidget/Andy_ImageListView;->access$000(Lcom/lge/appwidget/Andy_ImageListView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 143
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter2;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    iput p3, p0, Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter2;->mResourceId:I

    .line 145
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 149
    if-nez p2, :cond_b

    .line 150
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter2;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter2;->mResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 162
    :cond_b
    return-object p2
.end method
