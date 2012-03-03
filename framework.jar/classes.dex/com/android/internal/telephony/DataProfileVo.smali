.class public Lcom/android/internal/telephony/DataProfileVo;
.super Ljava/lang/Object;
.source "DataProfileVo.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataProfileVo$apnEnable;,
        Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;,
        Lcom/android/internal/telephony/DataProfileVo$apnClassType;
    }
.end annotation


# instance fields
.field private apnBearer:I

.field private apnClass:I

.field private apnEnable:I

.field private apnId:I

.field private apnIpType:I

.field private apnNi:Ljava/lang/String;

.field private apnTime:I



# direct methods
.method public constructor <init>(IILjava/lang/String;IIII)V
    .registers 8
    .parameter "apnId"
    .parameter "apnClass"
    .parameter "apnNi"
    .parameter "apnIpType"
    .parameter "apnBearer"
    .parameter "apnEnable"
    .parameter "apnTime"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnId:I

    .line 71
    iput p2, p0, Lcom/android/internal/telephony/DataProfileVo;->apnClass:I

    .line 72
    iput-object p3, p0, Lcom/android/internal/telephony/DataProfileVo;->apnNi:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/android/internal/telephony/DataProfileVo;->apnIpType:I

    .line 74
    iput p5, p0, Lcom/android/internal/telephony/DataProfileVo;->apnBearer:I

    .line 75
    iput p6, p0, Lcom/android/internal/telephony/DataProfileVo;->apnEnable:I

    .line 76
    iput p7, p0, Lcom/android/internal/telephony/DataProfileVo;->apnTime:I

    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 9
    .parameter "apnId"
    .parameter "apnClass"
    .parameter "apnNi"
    .parameter "apnIpType"
    .parameter "apnBearer"
    .parameter "apnEnable"
    .parameter "apnTime"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnId:I

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataProfileVo;->getApnClassIntToString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnClass:I

    .line 61
    iput-object p3, p0, Lcom/android/internal/telephony/DataProfileVo;->apnNi:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/DataProfileVo;->getApnIpTypeStringtoInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnIpType:I

    .line 63
    iput p5, p0, Lcom/android/internal/telephony/DataProfileVo;->apnBearer:I

    .line 64
    iput p6, p0, Lcom/android/internal/telephony/DataProfileVo;->apnEnable:I

    .line 65
    iput p7, p0, Lcom/android/internal/telephony/DataProfileVo;->apnTime:I

    .line 66
    return-void
.end method


# virtual methods
.method public getApnBearer()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnBearer:I

    return v0
.end method

.method public getApnClass()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnClass:I

    return v0
.end method

.method public getApnClassIntToString(Ljava/lang/String;)I
    .registers 4
    .parameter "apnClassString"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, apnClassInt:I
    const-string v1, "ims"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 83
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->ims:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v0

    .line 91
    :cond_f
    :goto_f
    return v0

    .line 84
    :cond_10
    const-string v1, "admin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 85
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->admin:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v0

    goto :goto_f

    .line 86
    :cond_1f
    const-string v1, "internet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 87
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->internet:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v0

    goto :goto_f

    .line 88
    :cond_2e
    const-string/jumbo v1, "vzwapp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 89
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->vzwapp:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v0

    goto :goto_f
.end method

.method public getApnClassStringtoInt(I)Ljava/lang/String;
    .registers 4
    .parameter "apnClassInt"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, apnClassString:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->ims:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v1

    if-ne p1, v1, :cond_10

    .line 97
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->ims:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_f
    :goto_f
    return-object v0

    .line 98
    :cond_10
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->admin:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v1

    if-ne p1, v1, :cond_1f

    .line 99
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->admin:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 100
    :cond_1f
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->internet:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v1

    if-ne p1, v1, :cond_2e

    .line 101
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->internet:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 102
    :cond_2e
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->vzwapp:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v1

    if-ne p1, v1, :cond_f

    .line 103
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->internet:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getApnEnable()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnEnable:I

    return v0
.end method

.method public getApnId()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnId:I

    return v0
.end method

.method public getApnIpType()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnIpType:I

    return v0
.end method

.method public getApnIpTypeIntToString(I)Ljava/lang/String;
    .registers 4
    .parameter "apnIpTypeInt"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, apnIpTypeString:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_10

    .line 123
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->getApnIpType()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_f
    :goto_f
    return-object v0

    .line 124
    :cond_10
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1f

    .line 125
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->getApnIpType()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 126
    :cond_1f
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4andIPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_f

    .line 127
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4andIPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->getApnIpType()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getApnIpTypeStringtoInt(Ljava/lang/String;)I
    .registers 4
    .parameter "apnIpTypeString"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, apnIpTypeInt:I
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->getApnIpType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 111
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v0

    .line 117
    :cond_13
    :goto_13
    return v0

    .line 112
    :cond_14
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->getApnIpType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 113
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v0

    goto :goto_13

    .line 114
    :cond_27
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4andIPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->getApnIpType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 115
    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4andIPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v0

    goto :goto_13
.end method

.method public getApnNi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnNi:Ljava/lang/String;

    return-object v0
.end method

.method public getApnTime()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/android/internal/telephony/DataProfileVo;->apnTime:I

    return v0
.end method

.method public setApnBearer(I)V
    .registers 2
    .parameter "apnBearer"

    .prologue
    .line 169
    iput p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnBearer:I

    .line 170
    return-void
.end method

.method public setApnClass(I)V
    .registers 2
    .parameter "apnClass"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnClass:I

    .line 146
    return-void
.end method

.method public setApnEnable(I)V
    .registers 2
    .parameter "apnEnable"

    .prologue
    .line 177
    iput p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnEnable:I

    .line 178
    return-void
.end method

.method public setApnId(I)V
    .registers 2
    .parameter "apnId"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnId:I

    .line 138
    return-void
.end method

.method public setApnIpType(I)V
    .registers 2
    .parameter "apnIpType"

    .prologue
    .line 161
    iput p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnIpType:I

    .line 162
    return-void
.end method

.method public setApnNi(Ljava/lang/String;)V
    .registers 2
    .parameter "apnNi"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnNi:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setApnTime(I)V
    .registers 2
    .parameter "apnTime"

    .prologue
    .line 185
    iput p1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnTime:I

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " apnId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apnClass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apnNi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnNi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apnIpType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnIpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apnBearer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnBearer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apnEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apnTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileVo;->apnTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
