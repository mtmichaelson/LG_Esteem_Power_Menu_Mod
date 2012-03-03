.class public Landroid/provider/ReferenceCountry;
.super Ljava/lang/Object;
.source "ReferenceCountry.java"



# instance fields
.field private areaCode:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private countryName:Ljava/lang/String;

.field private iddPrefix:Ljava/lang/String;

.field private index:I

.field private mccCode:Ljava/lang/String;

.field private nanp:Ljava/lang/String;

.field private nddPrefix:Ljava/lang/String;

.field private numLength:Ljava/lang/String;



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "index"
    .parameter "countryName"
    .parameter "mccCode"
    .parameter "countryCode"
    .parameter "iddPrefix"
    .parameter "nddPrefix"
    .parameter "nanp"
    .parameter "areaCode"
    .parameter "numLength"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroid/provider/ReferenceCountry;->index:I

    .line 48
    iput-object p2, p0, Landroid/provider/ReferenceCountry;->countryName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Landroid/provider/ReferenceCountry;->mccCode:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Landroid/provider/ReferenceCountry;->countryCode:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Landroid/provider/ReferenceCountry;->iddPrefix:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Landroid/provider/ReferenceCountry;->nddPrefix:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Landroid/provider/ReferenceCountry;->nanp:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Landroid/provider/ReferenceCountry;->areaCode:Ljava/lang/String;

    .line 55
    iput-object p9, p0, Landroid/provider/ReferenceCountry;->numLength:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "countryName"
    .parameter "mccCode"
    .parameter "countryCode"
    .parameter "iddPrefix"
    .parameter "nddPrefix"
    .parameter "nanp"
    .parameter "areaCode"
    .parameter "numLength"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->countryName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Landroid/provider/ReferenceCountry;->mccCode:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Landroid/provider/ReferenceCountry;->countryCode:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Landroid/provider/ReferenceCountry;->iddPrefix:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Landroid/provider/ReferenceCountry;->nddPrefix:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Landroid/provider/ReferenceCountry;->nanp:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Landroid/provider/ReferenceCountry;->areaCode:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Landroid/provider/ReferenceCountry;->numLength:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIddPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->iddPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Landroid/provider/ReferenceCountry;->index:I

    return v0
.end method

.method public getMccCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->mccCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNanp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->nanp:Ljava/lang/String;

    return-object v0
.end method

.method public getNddPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->nddPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getNumLength()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->numLength:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .registers 2
    .parameter "areaCode"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->areaCode:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2
    .parameter "countryCode"

    .prologue
    .line 116
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->countryCode:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .registers 2
    .parameter "countryName"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->countryName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setIddPrefix(Ljava/lang/String;)V
    .registers 2
    .parameter "iddPrefix"

    .prologue
    .line 132
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->iddPrefix:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 93
    iput p1, p0, Landroid/provider/ReferenceCountry;->index:I

    .line 94
    return-void
.end method

.method public setMccCode(Ljava/lang/String;)V
    .registers 2
    .parameter "mccCode"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->mccCode:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setNanp(Ljava/lang/String;)V
    .registers 2
    .parameter "nanp"

    .prologue
    .line 164
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->nanp:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setNddPrefix(Ljava/lang/String;)V
    .registers 2
    .parameter "nddPrefix"

    .prologue
    .line 148
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->nddPrefix:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setNumLength(Ljava/lang/String;)V
    .registers 2
    .parameter "numLength"

    .prologue
    .line 196
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->numLength:Ljava/lang/String;

    .line 197
    return-void
.end method
