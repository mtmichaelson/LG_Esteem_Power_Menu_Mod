.class Lcom/lge/appwidget/Note$LocationInfo;
.super Ljava/lang/Object;
.source "Andy_RichnoteSAXParser.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Note;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationInfo"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field imageLocation:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/appwidget/Note;

.field uri:Ljava/lang/String;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Note;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/lge/appwidget/Note$LocationInfo;->this$0:Lcom/lge/appwidget/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lge/appwidget/Note$LocationInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/appwidget/Note$LocationInfo;->imageLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lge/appwidget/Note$LocationInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/lge/appwidget/Note$LocationInfo;->address:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setImageLocation(Ljava/lang/String;)V
    .registers 2
    .parameter "imageLocation"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/lge/appwidget/Note$LocationInfo;->imageLocation:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/lge/appwidget/Note$LocationInfo;->uri:Ljava/lang/String;

    .line 231
    return-void
.end method
