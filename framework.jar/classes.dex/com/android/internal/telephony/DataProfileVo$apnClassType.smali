.class final enum Lcom/android/internal/telephony/DataProfileVo$apnClassType;
.super Ljava/lang/Enum;
.source "DataProfileVo.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataProfileVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "apnClassType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataProfileVo$apnClassType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnClassType;

.field public static final enum admin:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

.field public static final enum ims:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

.field public static final enum internet:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

.field public static final enum vzwapp:Lcom/android/internal/telephony/DataProfileVo$apnClassType;



# instance fields
.field classInt:I



# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 14
    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    const-string v1, "ims"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->ims:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    .line 15
    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    const-string v1, "admin"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->admin:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    .line 16
    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    const-string v1, "internet"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->internet:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    .line 17
    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    const-string/jumbo v1, "vzwapp"

    invoke-direct {v0, v1, v4, v6}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->vzwapp:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    .line 13
    new-array v0, v6, [Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->ims:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->admin:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->internet:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->vzwapp:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->$VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "classInt"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->classInt:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfileVo$apnClassType;
    .registers 2
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataProfileVo$apnClassType;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->$VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataProfileVo$apnClassType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    return-object v0
.end method


# virtual methods
.method public getClassInt()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->classInt:I

    return v0
.end method
