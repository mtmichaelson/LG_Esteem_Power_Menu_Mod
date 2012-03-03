.class public Landroid/pim/vcard/VCardEntry$PhoneData;
.super Ljava/lang/Object;
.source "VCardEntry.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneData"
.end annotation


# instance fields
.field public final data:Ljava/lang/String;

.field public isPrimary:Z

.field public final label:Ljava/lang/String;

.field public final type:I



# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    .line 90
    iput-object p2, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    .line 92
    iput-boolean p4, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    .line 93
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 97
    instance-of v2, p1, Landroid/pim/vcard/VCardEntry$PhoneData;

    if-nez v2, :cond_7

    move v2, v4

    .line 101
    :goto_6
    return v2

    .line 100
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/pim/vcard/VCardEntry$PhoneData;

    move-object v1, v0

    .line 101
    .local v1, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    iget v2, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    iget v3, v1, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    if-ne v2, v3, :cond_2d

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-boolean v2, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    iget-boolean v3, v1, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    if-ne v2, v3, :cond_2d

    const/4 v2, 0x1

    goto :goto_6

    :cond_2d
    move v2, v4

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 107
    const-string/jumbo v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
