.class final enum Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;
.super Ljava/lang/Enum;
.source "Andy_LockScreen2.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum Airplane:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum CARDERROR:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum IS3GSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum IS4GSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum NONMPCSSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum NetworkLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum Normal:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum RuimCorporateLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum RuimHrpdLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum RuimNetwork1Locked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum RuimNetwork2Locked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum RuimRuimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum RuimServiceProviderLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum SimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum SimMissingLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum SimPermLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum SimPukLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field public static final enum Unknown:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;



# instance fields
.field private final mShowStatusLines:Z



# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 286
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Normal:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 291
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->NetworkLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 296
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 301
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v6, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Unknown:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 307
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v7, v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 313
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "SimPukLocked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimPukLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 318
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "SimPermLocked"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimPermLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 324
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "SimLocked"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 328
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "RuimNetwork1Locked"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimNetwork1Locked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 333
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "RuimNetwork2Locked"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimNetwork2Locked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 338
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "RuimHrpdLocked"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimHrpdLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 343
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "RuimCorporateLocked"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimCorporateLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 348
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "RuimServiceProviderLocked"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimServiceProviderLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 353
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "RuimRuimLocked"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimRuimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 364
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "IS3GSIM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->IS3GSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 365
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "IS4GSIM"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->IS4GSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 366
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "NONMPCSSIM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->NONMPCSSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 367
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "CARDERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->CARDERROR:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 375
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    const-string v1, "Airplane"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Airplane:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 282
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Normal:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->NetworkLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Unknown:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimPukLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimPermLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimNetwork1Locked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimNetwork2Locked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimHrpdLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimCorporateLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimServiceProviderLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->RuimRuimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->IS3GSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->IS4GSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->NONMPCSSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->CARDERROR:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Airplane:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->$VALUES:[Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter "mShowStatusLines"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 381
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->mShowStatusLines:Z

    .line 382
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 282
    const-class v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;
    .registers 1

    .prologue
    .line 282
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->$VALUES:[Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    return-object v0
.end method


# virtual methods
.method public showStatusLines()Z
    .registers 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->mShowStatusLines:Z

    return v0
.end method
