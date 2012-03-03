.class public Lcom/lge/sui/widget/window/SUICommandBar;
.super Landroid/widget/LinearLayout;
.source "SUICommandBar.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/window/SUICommandBar$Command;,
        Lcom/lge/sui/widget/window/SUICommandBar$OnCommandListener;
    }
.end annotation


# static fields
.field static final KEY_COMMAND:I = -0x1



# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field mCommandLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field mOnCommandListener:Lcom/lge/sui/widget/window/SUICommandBar$OnCommandListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, "SUICommandBar"

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar;->LOG_TAG:Ljava/lang/String;

    .line 276
    new-instance v0, Lcom/lge/sui/widget/window/SUICommandBar$1;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/window/SUICommandBar$1;-><init>(Lcom/lge/sui/widget/window/SUICommandBar;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 237
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUICommandBar;->initCommandBar()V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v0, "SUICommandBar"

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar;->LOG_TAG:Ljava/lang/String;

    .line 276
    new-instance v0, Lcom/lge/sui/widget/window/SUICommandBar$1;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/window/SUICommandBar$1;-><init>(Lcom/lge/sui/widget/window/SUICommandBar;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 227
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUICommandBar;->initCommandBar()V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/window/SUICommandBar;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addCommand(Lcom/lge/sui/widget/window/SUICommandBar$Command;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 7
    .parameter "command"
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUICommandBar;->mCommandLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v2, p1, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandText:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v2, p1, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1c

    .line 367
    instance-of v2, p2, Lcom/lge/sui/widget/window/SUIIconButton;

    if-eqz v2, :cond_1c

    .line 368
    move-object v0, p2

    check-cast v0, Lcom/lge/sui/widget/window/SUIIconButton;

    move-object v1, v0

    .line 369
    .local v1, s:Lcom/lge/sui/widget/window/SUIIconButton;
    iget-object v2, p1, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/lge/sui/widget/window/SUIIconButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    .end local v1       #s:Lcom/lge/sui/widget/window/SUIIconButton;,
    :cond_1c
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/lge/sui/widget/window/SUICommandBar;->setPadding(IIII)V

    .line 374
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const/4 v2, -0x1

    invoke-virtual {p2, v2, p1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 376
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUICommandBar;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/window/SUICommandBar;->addView(Landroid/view/View;)V

    .line 379
    return-object p2
.end method

.method private initCommandBar()V
    .registers 5

    .prologue
    .line 387
    const v0, 0x108009a

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUICommandBar;->setBackgroundResource(I)V

    .line 388
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUICommandBar;->setGravity(I)V

    .line 390
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar;->mCommandLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 392
    return-void
.end method


# virtual methods
.method public addCommand(Lcom/lge/sui/widget/window/SUICommandBar$Command;)Landroid/widget/Button;
    .registers 6
    .parameter "command"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUICommandBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x303001f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lge/sui/widget/window/SUICommandBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 258
    .local v0, view:Landroid/widget/Button;
    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/window/SUICommandBar;->addCommand(Lcom/lge/sui/widget/window/SUICommandBar$Command;Landroid/widget/Button;)Landroid/widget/Button;

    move-result-object v1

    return-object v1
.end method

.method public addCommand(Lcom/lge/sui/widget/window/SUICommandBar$Command;I)Landroid/widget/Button;
    .registers 6
    .parameter "command"
    .parameter "Buttonid"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUICommandBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/lge/sui/widget/window/SUICommandBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 271
    .local v0, view:Landroid/widget/Button;
    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/window/SUICommandBar;->addCommand(Lcom/lge/sui/widget/window/SUICommandBar$Command;Landroid/widget/Button;)Landroid/widget/Button;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUICommandBar;->mOnCommandListener:Lcom/lge/sui/widget/window/SUICommandBar$OnCommandListener;

    if-eqz v1, :cond_10

    .line 399
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/window/SUICommandBar$Command;

    .line 400
    .local v0, command:Lcom/lge/sui/widget/window/SUICommandBar$Command;
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUICommandBar;->mOnCommandListener:Lcom/lge/sui/widget/window/SUICommandBar$OnCommandListener;

    invoke-interface {v1, v0, p1}, Lcom/lge/sui/widget/window/SUICommandBar$OnCommandListener;->onCommand(Lcom/lge/sui/widget/window/SUICommandBar$Command;Landroid/view/View;)V

    .line 402
    .end local v0       #command:Lcom/lge/sui/widget/window/SUICommandBar$Command;,
    :cond_10
    return-void
.end method

.method public setOnCommandListener(Lcom/lge/sui/widget/window/SUICommandBar$OnCommandListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUICommandBar;->mOnCommandListener:Lcom/lge/sui/widget/window/SUICommandBar$OnCommandListener;

    .line 247
    return-void
.end method
