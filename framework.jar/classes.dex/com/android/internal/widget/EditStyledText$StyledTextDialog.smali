.class Lcom/android/internal/widget/EditStyledText$StyledTextDialog;
.super Ljava/lang/Object;
.source "EditStyledText.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextDialog"
.end annotation


# instance fields
.field mAlignNames:[Ljava/lang/CharSequence;

.field mAlignTitle:Ljava/lang/CharSequence;

.field mBuilder:Landroid/app/AlertDialog$Builder;

.field mColorInts:[Ljava/lang/CharSequence;

.field mColorNames:[Ljava/lang/CharSequence;

.field mColorTitle:Ljava/lang/CharSequence;

.field mEST:Lcom/android/internal/widget/EditStyledText;

.field mSizeDisplayInts:[Ljava/lang/CharSequence;

.field mSizeNames:[Ljava/lang/CharSequence;

.field mSizeSendInts:[Ljava/lang/CharSequence;

.field mSizeTitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/widget/EditStyledText;



# direct methods
.method public constructor <init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V
    .registers 3
    .parameter
    .parameter "est"

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->this$0:Lcom/android/internal/widget/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mEST:Lcom/android/internal/widget/EditStyledText;

    .line 1280
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowForegroundColorAlertDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowBackgroundColorAlertDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowSizeAlertDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowAlignAlertDialog()V

    return-void
.end method

.method private checkAlignAlertParams()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "EditStyledText"

    .line 1351
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_10

    .line 1352
    const-string v0, "EditStyledText"

    const-string v0, "--- builder is null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1358
    :goto_f
    return v0

    .line 1354
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1d

    .line 1355
    const-string v0, "EditStyledText"

    const-string v0, "--- align alert params are null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1356
    goto :goto_f

    .line 1358
    :cond_1d
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private checkColorAlertParams()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "EditStyledText"

    .line 1312
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_10

    .line 1313
    const-string v0, "EditStyledText"

    const-string v0, "--- builder is null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1324
    :goto_f
    return v0

    .line 1315
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    if-nez v0, :cond_25

    .line 1317
    :cond_1c
    const-string v0, "EditStyledText"

    const-string v0, "--- color alert params are null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1318
    goto :goto_f

    .line 1319
    :cond_25
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eq v0, v1, :cond_36

    .line 1320
    const-string v0, "EditStyledText"

    const-string v0, "--- the length of color alert params are different."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1322
    goto :goto_f

    .line 1324
    :cond_36
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private checkSizeAlertParams()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "EditStyledText"

    .line 1331
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_10

    .line 1332
    const-string v0, "EditStyledText"

    const-string v0, "--- builder is null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1344
    :goto_f
    return v0

    .line 1334
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    if-nez v0, :cond_29

    .line 1336
    :cond_20
    const-string v0, "EditStyledText"

    const-string v0, "--- size alert params are null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1337
    goto :goto_f

    .line 1338
    :cond_29
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eq v0, v1, :cond_42

    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eq v0, v1, :cond_42

    .line 1340
    const-string v0, "EditStyledText"

    const-string v0, "--- the length of size alert params are different."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1342
    goto :goto_f

    .line 1344
    :cond_42
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private onShowAlignAlertDialog()V
    .registers 4

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->checkAlignAlertParams()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1459
    :goto_6
    return-void

    .line 1434
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1435
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1436
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mAlignNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$4;-><init>(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1458
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6
.end method

.method private onShowBackgroundColorAlertDialog()V
    .registers 4

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->checkColorAlertParams()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1403
    :goto_6
    return-void

    .line 1390
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1391
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1392
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$2;-><init>(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1402
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6
.end method

.method private onShowForegroundColorAlertDialog()V
    .registers 4

    .prologue
    .line 1365
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->checkColorAlertParams()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1381
    :goto_6
    return-void

    .line 1368
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1369
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1370
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$1;-><init>(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1380
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6
.end method

.method private onShowSizeAlertDialog()V
    .registers 4

    .prologue
    .line 1409
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->checkSizeAlertParams()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1425
    :goto_6
    return-void

    .line 1412
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1413
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1414
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$3;-><init>(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1424
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6
.end method


# virtual methods
.method public setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "aligntitle"
    .parameter "alignnames"

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    .line 1305
    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mAlignNames:[Ljava/lang/CharSequence;

    .line 1306
    return-void
.end method

.method public setBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 1284
    return-void
.end method

.method public setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "colortitle"
    .parameter "colornames"
    .parameter "colorints"

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    .line 1289
    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    .line 1290
    iput-object p3, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    .line 1291
    return-void
.end method

.method public setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "sizetitle"
    .parameter "sizenames"
    .parameter "sizedisplayints"
    .parameter "sizesendints"

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    .line 1297
    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    .line 1298
    iput-object p3, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    .line 1299
    iput-object p4, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    .line 1300
    return-void
.end method
