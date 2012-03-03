.class Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;
.super Landroid/widget/LinearLayout;
.source "Andy_RichNoteListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationLayout"
.end annotation


# instance fields
.field addressTextView:Landroid/widget/TextView;

.field locationImageView:Landroid/widget/ImageView;

.field final synthetic this$2:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter "context"
    .parameter "address"
    .parameter "locationImagePath"

    .prologue
    const/16 v7, 0x32

    const/4 v6, 0x0

    .line 203
    iput-object p1, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->this$2:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;

    .line 204
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->setOrientation(I)V

    .line 206
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->setBackgroundColor(I)V

    .line 208
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0xfa

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->locationImageView:Landroid/widget/ImageView;

    .line 212
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->locationImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addressTextView:Landroid/widget/TextView;

    .line 217
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addressTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 218
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addressTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 219
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addressTextView:Landroid/widget/TextView;

    const/high16 v4, 0x4170

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 220
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addressTextView:Landroid/widget/TextView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, mBitmap:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 226
    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 229
    .local v2, myBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1       #mBitmap:Landroid/graphics/drawable/BitmapDrawable;,
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v6, v6, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .end local v2       #myBitmap:Landroid/graphics/Bitmap;,
    .restart local v1       #mBitmap:Landroid/graphics/drawable/BitmapDrawable;,
    :cond_6e
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->locationImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addressTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->locationImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addressTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;->addView(Landroid/view/View;)V

    .line 239
    return-void
.end method
