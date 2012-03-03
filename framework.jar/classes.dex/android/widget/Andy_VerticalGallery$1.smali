.class Landroid/widget/Andy_VerticalGallery$1;
.super Ljava/lang/Object;
.source "Andy_VerticalGallery.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Andy_VerticalGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Andy_VerticalGallery;



# direct methods
.method constructor <init>(Landroid/widget/Andy_VerticalGallery;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Landroid/widget/Andy_VerticalGallery$1;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$1;->this$0:Landroid/widget/Andy_VerticalGallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Andy_VerticalGallery;->access$002(Landroid/widget/Andy_VerticalGallery;Z)Z

    .line 126
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$1;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v0}, Landroid/widget/Andy_VerticalGallery;->selectionChanged()V

    .line 127
    return-void
.end method
