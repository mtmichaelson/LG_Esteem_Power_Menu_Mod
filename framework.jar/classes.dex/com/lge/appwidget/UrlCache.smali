.class Lcom/lge/appwidget/UrlCache;
.super Ljava/lang/Object;
.source "Andy_CarousalView.java"



# instance fields
.field imageId:I

.field rowId:I

.field string:Ljava/lang/String;

.field type:I

.field uri:Landroid/net/Uri;



# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1230
    iput p1, p0, Lcom/lge/appwidget/UrlCache;->type:I

    .line 1231
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "type"
    .parameter "imageId"

    .prologue
    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput p1, p0, Lcom/lge/appwidget/UrlCache;->type:I

    .line 1225
    iput p2, p0, Lcom/lge/appwidget/UrlCache;->imageId:I

    .line 1226
    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;)V
    .registers 3
    .parameter "type"
    .parameter "uri"

    .prologue
    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1203
    iput p1, p0, Lcom/lge/appwidget/UrlCache;->type:I

    .line 1204
    iput-object p2, p0, Lcom/lge/appwidget/UrlCache;->uri:Landroid/net/Uri;

    .line 1205
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4
    .parameter "type"
    .parameter "string"
    .parameter "rowId"

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    iput p1, p0, Lcom/lge/appwidget/UrlCache;->type:I

    .line 1218
    iput-object p2, p0, Lcom/lge/appwidget/UrlCache;->string:Ljava/lang/String;

    .line 1219
    iput p3, p0, Lcom/lge/appwidget/UrlCache;->rowId:I

    .line 1220
    return-void
.end method


# virtual methods
.method public getImageId()I
    .registers 2

    .prologue
    .line 1208
    iget v0, p0, Lcom/lge/appwidget/UrlCache;->imageId:I

    return v0
.end method

.method public getRowId()I
    .registers 2

    .prologue
    .line 1190
    iget v0, p0, Lcom/lge/appwidget/UrlCache;->rowId:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/lge/appwidget/UrlCache;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 1234
    iget v0, p0, Lcom/lge/appwidget/UrlCache;->type:I

    return v0
.end method

.method public setImageId(I)V
    .registers 2
    .parameter "imageId"

    .prologue
    .line 1212
    iput p1, p0, Lcom/lge/appwidget/UrlCache;->imageId:I

    .line 1213
    return-void
.end method

.method public setRowId(I)V
    .registers 2
    .parameter "rowId"

    .prologue
    .line 1194
    iput p1, p0, Lcom/lge/appwidget/UrlCache;->rowId:I

    .line 1195
    return-void
.end method
