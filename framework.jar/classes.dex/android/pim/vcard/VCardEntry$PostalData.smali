.class public Landroid/pim/vcard/VCardEntry$PostalData;
.super Ljava/lang/Object;
.source "VCardEntry.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalData"
.end annotation


# static fields
.field public static final ADDR_MAX_DATA_SIZE:I = 0x7



# instance fields
.field public final country:Ljava/lang/String;

.field private final dataArray:[Ljava/lang/String;

.field public final extendedAddress:Ljava/lang/String;

.field public isPrimary:Z

.field public final label:Ljava/lang/String;

.field public final localty:Ljava/lang/String;

.field public final pobox:Ljava/lang/String;

.field public final postalCode:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final street:Ljava/lang/String;

.field public final type:I



# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Z)V
    .registers 13
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x7

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    .line 161
    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    .line 163
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 164
    .local v4, size:I
    if-le v4, v7, :cond_11

    .line 165
    const/4 v4, 0x7

    .line 174
    :cond_11
    const/4 v1, 0x0

    .line 175
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    .local v0, addressElement:Ljava/lang/String;
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    aput-object v0, v5, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_16

    move v2, v1

    .line 181
    .end local v0       #addressElement:Ljava/lang/String;,
    .end local v1       #i:I,
    .local v2, i:I
    :goto_2b
    if-ge v2, v7, :cond_36

    .line 182
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2       #i:I,
    .restart local v1       #i:I,
    const/4 v6, 0x0

    aput-object v6, v5, v2

    move v2, v1

    .end local v1       #i:I,
    .restart local v2       #i:I,
    goto :goto_2b

    .line 185
    :cond_36
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->pobox:Ljava/lang/String;

    .line 186
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    .line 187
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    .line 188
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->localty:Ljava/lang/String;

    .line 189
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->region:Ljava/lang/String;

    .line 190
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->postalCode:Ljava/lang/String;

    .line 191
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry$PostalData;->country:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    .line 193
    iput-boolean p4, p0, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    .line 194
    return-void

    .end local v2       #i:I,
    .restart local v1       #i:I,
    :cond_6c
    move v2, v1

    .end local v1       #i:I,
    .restart local v2       #i:I,
    goto :goto_2b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 198
    instance-of v2, p1, Landroid/pim/vcard/VCardEntry$PostalData;

    if-nez v2, :cond_7

    move v2, v4

    .line 202
    :goto_6
    return v2

    .line 201
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/pim/vcard/VCardEntry$PostalData;

    move-object v1, v0

    .line 202
    .local v1, postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    iget v3, v1, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    if-nez v2, :cond_25

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    iget-object v3, v1, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    if-ne v2, v3, :cond_2d

    :cond_25
    iget-boolean v2, p0, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    iget-boolean v3, v1, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    if-ne v2, v3, :cond_2d

    const/4 v2, 0x1

    goto :goto_6

    :cond_2d
    move v2, v4

    goto :goto_6
.end method

.method public getFormattedAddress(I)Ljava/lang/String;
    .registers 8
    .parameter "vcardType"

    .prologue
    const/16 v5, 0x20

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 212
    .local v2, empty:Z
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 214
    const/4 v3, 0x6

    .local v3, i:I
    :goto_f
    if-ltz v3, :cond_43

    .line 215
    iget-object v4, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    aget-object v0, v4, v3

    .line 216
    .local v0, addressPart:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 217
    if-nez v2, :cond_26

    .line 218
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :goto_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_23
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 220
    :cond_26
    const/4 v2, 0x0

    goto :goto_20

    .line 226
    .end local v0       #addressPart:Ljava/lang/String;,
    .end local v3       #i:I,
    :cond_28
    const/4 v3, 0x0

    .restart local v3       #i:I,
    :goto_29
    const/4 v4, 0x7

    if-ge v3, v4, :cond_43

    .line 227
    iget-object v4, p0, Landroid/pim/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    aget-object v0, v4, v3

    .line 228
    .restart local v0       #addressPart:Ljava/lang/String;,
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 229
    if-nez v2, :cond_41

    .line 230
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :goto_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 232
    :cond_41
    const/4 v2, 0x0

    goto :goto_3b

    .line 239
    .end local v0       #addressPart:Ljava/lang/String;,
    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 244
    const-string/jumbo v0, "type: %d, label: %s, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
