.class Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;
.super Landroid/widget/RelativeLayout;
.source "Andy_ContactGrid.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ContactGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactLayout"
.end annotation


# instance fields
.field imageView1:Landroid/widget/ImageView;

.field imageView2:Landroid/widget/ImageView;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mView:Landroid/view/View;

.field quickContact:Landroid/net/Uri;

.field textview1:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ContactGrid;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/content/Context;II)V
    .registers 9
    .parameter
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, -0x1

    .line 302
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    .line 303
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 305
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setGravity(I)V

    .line 306
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 310
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->mView:Landroid/view/View;

    .line 311
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->mView:Landroid/view/View;

    iget v2, p1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactTextId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->textview1:Landroid/widget/TextView;

    .line 313
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->mView:Landroid/view/View;

    iget v2, p1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactImageId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->imageView1:Landroid/widget/ImageView;

    .line 315
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->mView:Landroid/view/View;

    iget v2, p1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactImageId2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->imageView2:Landroid/widget/ImageView;

    .line 317
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->mView:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v1, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout$1;-><init>(Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;Lcom/lge/appwidget/Andy_ContactGrid;)V

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public setContactUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->quickContact:Landroid/net/Uri;

    .line 359
    return-void
.end method

.method public setImage(I)V
    .registers 3
    .parameter "newPhoto"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->imageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 3
    .parameter "mURI"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 351
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->textview1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method public setViewSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 342
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    return-void
.end method
