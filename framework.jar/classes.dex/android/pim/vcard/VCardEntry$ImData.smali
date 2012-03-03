.class public Landroid/pim/vcard/VCardEntry$ImData;
.super Ljava/lang/Object;
.source "VCardEntry.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImData"
.end annotation


# instance fields
.field public final customProtocol:Ljava/lang/String;

.field public final data:Ljava/lang/String;

.field public final isPrimary:Z

.field public final protocol:I

.field public final type:I



# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 6
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "type"
    .parameter "data"
    .parameter "isPrimary"

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput p1, p0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    .line 328
    iput-object p2, p0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    .line 329
    iput p3, p0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    .line 330
    iput-object p4, p0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    .line 331
    iput-boolean p5, p0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    .line 332
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 336
    instance-of v2, p1, Landroid/pim/vcard/VCardEntry$ImData;

    if-nez v2, :cond_7

    move v2, v4

    .line 340
    :goto_6
    return v2

    .line 339
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/pim/vcard/VCardEntry$ImData;

    move-object v1, v0

    .line 340
    .local v1, imData:Landroid/pim/vcard/VCardEntry$ImData;
    iget v2, p0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    iget v3, v1, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    if-ne v2, v3, :cond_3f

    iget v2, p0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    iget v3, v1, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_25
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :goto_33
    iget-boolean v2, p0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    iget-boolean v3, v1, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    if-ne v2, v3, :cond_3f

    const/4 v2, 0x1

    goto :goto_6

    :cond_3b
    iget-object v2, v1, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    if-eqz v2, :cond_25

    :cond_3f
    move v2, v4

    goto :goto_6

    :cond_41
    iget-object v2, v1, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    if-nez v2, :cond_3f

    goto :goto_33
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 349
    const-string/jumbo v0, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
