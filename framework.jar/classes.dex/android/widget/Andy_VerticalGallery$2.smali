.class Landroid/widget/Andy_VerticalGallery$2;
.super Ljava/lang/Object;
.source "Andy_VerticalGallery.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Andy_VerticalGallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    .line 1163
    iput-object p1, p0, Landroid/widget/Andy_VerticalGallery$2;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$2;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-static {v0}, Landroid/widget/Andy_VerticalGallery;->access$300(Landroid/widget/Andy_VerticalGallery;)V

    .line 1167
    return-void
.end method
