.class public Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;
.super Ljava/lang/Object;
.source "Andy_TodayPlusRichNoteLayout.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParsedRichNoteData"
.end annotation


# static fields
.field public static final TYPE_AUDIO:I = 0x3

.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_LOCATION:I = 0x4

.field public static final TYPE_TEXT:I = 0x1



# instance fields
.field private mExtra:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 335
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->this$0:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mText:Ljava/lang/String;

    .line 331
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mFilePath:Ljava/lang/String;

    .line 332
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mExtra:Ljava/lang/String;

    .line 336
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mType:I

    .line 337
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mText:Ljava/lang/String;

    .line 338
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mFilePath:Ljava/lang/String;

    .line 339
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mExtra:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public constructor <init>(Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;I)V
    .registers 4
    .parameter
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 343
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->this$0:Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mText:Ljava/lang/String;

    .line 331
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mFilePath:Ljava/lang/String;

    .line 332
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mExtra:Ljava/lang/String;

    .line 344
    iput p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mType:I

    .line 345
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mType:I

    return v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2
    .parameter "extra"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mExtra:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2
    .parameter "filepath"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mFilePath:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mText:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 364
    iput p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichNoteLayout$ParsedRichNoteData;->mType:I

    .line 365
    return-void
.end method
