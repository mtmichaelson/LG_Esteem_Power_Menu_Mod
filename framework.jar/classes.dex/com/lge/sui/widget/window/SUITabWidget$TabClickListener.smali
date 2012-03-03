.class Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "SUITabWidget.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/window/SUITabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/lge/sui/widget/window/SUITabWidget;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/window/SUITabWidget;I)V
    .registers 3
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;->this$0:Lcom/lge/sui/widget/window/SUITabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p2, p0, Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;->mTabIndex:I

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/window/SUITabWidget;ILcom/lge/sui/widget/window/SUITabWidget$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;-><init>(Lcom/lge/sui/widget/window/SUITabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;->this$0:Lcom/lge/sui/widget/window/SUITabWidget;

    invoke-static {v0}, Lcom/lge/sui/widget/window/SUITabWidget;->access$100(Lcom/lge/sui/widget/window/SUITabWidget;)Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 144
    return-void
.end method
