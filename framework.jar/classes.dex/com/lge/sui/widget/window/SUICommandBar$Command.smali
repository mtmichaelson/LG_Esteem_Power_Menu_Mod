.class public Lcom/lge/sui/widget/window/SUICommandBar$Command;
.super Ljava/lang/Object;
.source "SUICommandBar.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/window/SUICommandBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field mCommandDrawable:Landroid/graphics/drawable/Drawable;

.field final mCommandId:I

.field final mCommandText:Ljava/lang/String;

.field rate:D



# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .parameter "commandId"
    .parameter "commandText"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide v0, 0x3fc999999999999aL

    iput-wide v0, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->rate:D

    .line 105
    iput p1, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandId:I

    .line 106
    iput-object p2, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandText:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .parameter "ctx"
    .parameter "commandId"
    .parameter "textResId"

    .prologue
    .line 118
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/lge/sui/widget/window/SUICommandBar$Command;-><init>(ILjava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 6
    .parameter "ctx"
    .parameter "commandId"
    .parameter "textResId"
    .parameter "drawble"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/window/SUICommandBar$Command;-><init>(Landroid/content/Context;II)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIID)V
    .registers 7
    .parameter "ctx"
    .parameter "commandId"
    .parameter "textResId"
    .parameter "drawble"
    .parameter "rate"

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sui/widget/window/SUICommandBar$Command;-><init>(Landroid/content/Context;III)V

    .line 194
    iput-wide p5, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->rate:D

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 6
    .parameter "ctx"
    .parameter "commandId"
    .parameter "textResId"
    .parameter "drawble"

    .prologue
    .line 153
    invoke-direct {p0, p2, p3}, Lcom/lge/sui/widget/window/SUICommandBar$Command;-><init>(ILjava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ID)V
    .registers 7
    .parameter "ctx"
    .parameter "commandId"
    .parameter "textResId"
    .parameter "drawble"
    .parameter "rate"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sui/widget/window/SUICommandBar$Command;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    .line 174
    iput-wide p5, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->rate:D

    .line 175
    return-void
.end method


# virtual methods
.method public getCommandDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCommandId()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandId:I

    return v0
.end method

.method public getCommandText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandText:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()D
    .registers 3

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->rate:D

    return-wide v0
.end method

.method public setCommandDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "mCommandDrawable"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->mCommandDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    return-void
.end method

.method public setRate(D)V
    .registers 3
    .parameter "rate"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;->rate:D

    .line 91
    return-void
.end method
