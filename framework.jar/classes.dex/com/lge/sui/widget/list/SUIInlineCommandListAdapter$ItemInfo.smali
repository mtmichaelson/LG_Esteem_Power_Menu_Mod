.class Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "SUIInlineCommandListAdapter.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfo"
.end annotation


# instance fields
.field id:J

.field position:I

.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;IJ)V
    .registers 5
    .parameter
    .parameter "position"
    .parameter "id"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;->this$0:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput p2, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;->position:I

    .line 445
    iput-wide p3, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;->id:J

    .line 446
    return-void
.end method
