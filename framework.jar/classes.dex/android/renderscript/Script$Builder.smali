.class public Landroid/renderscript/Script$Builder;
.super Ljava/lang/Object;
.source "Script.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mInvokableCount:I

.field mInvokables:[Landroid/renderscript/Script$Invokable;

.field mIsRoot:Z

.field mNames:[Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;

.field mTypes:[Landroid/renderscript/Type;

.field mWritable:[Z



# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 4
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v0, p0, Landroid/renderscript/Script$Builder;->mIsRoot:Z

    .line 85
    iput v0, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    .line 89
    iput-object p1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 90
    new-array v0, v1, [Landroid/renderscript/Type;

    iput-object v0, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    .line 91
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Script$Builder;->mNames:[Ljava/lang/String;

    .line 92
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/renderscript/Script$Builder;->mWritable:[Z

    .line 93
    new-array v0, v1, [Landroid/renderscript/Script$Invokable;

    iput-object v0, p0, Landroid/renderscript/Script$Builder;->mInvokables:[Landroid/renderscript/Script$Invokable;

    .line 94
    return-void
.end method


# virtual methods
.method public addInvokable(Ljava/lang/String;)Landroid/renderscript/Script$Invokable;
    .registers 6
    .parameter "func"

    .prologue
    .line 107
    new-instance v0, Landroid/renderscript/Script$Invokable;

    invoke-direct {v0}, Landroid/renderscript/Script$Invokable;-><init>()V

    .line 108
    .local v0, i:Landroid/renderscript/Script$Invokable;
    iput-object p1, v0, Landroid/renderscript/Script$Invokable;->mName:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iput-object v1, v0, Landroid/renderscript/Script$Invokable;->mRS:Landroid/renderscript/RenderScript;

    .line 110
    iget v1, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    iput v1, v0, Landroid/renderscript/Script$Invokable;->mSlot:I

    .line 111
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mInvokables:[Landroid/renderscript/Script$Invokable;

    iget v2, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    aput-object v0, v1, v2

    .line 112
    return-object v0
.end method

.method public setRoot(Z)V
    .registers 2
    .parameter "r"

    .prologue
    .line 143
    iput-boolean p1, p0, Landroid/renderscript/Script$Builder;->mIsRoot:Z

    .line 144
    return-void
.end method

.method public setType(Landroid/renderscript/Type;I)V
    .registers 5
    .parameter "t"
    .parameter "slot"

    .prologue
    .line 97
    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    aput-object p1, v0, p2

    .line 98
    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 99
    return-void
.end method

.method public setType(Landroid/renderscript/Type;Ljava/lang/String;I)V
    .registers 5
    .parameter "t"
    .parameter "name"
    .parameter "slot"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    aput-object p1, v0, p3

    .line 103
    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mNames:[Ljava/lang/String;

    aput-object p2, v0, p3

    .line 104
    return-void
.end method

.method public setType(ZI)V
    .registers 4
    .parameter "writable"
    .parameter "slot"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mWritable:[Z

    aput-boolean p1, v0, p2

    .line 117
    return-void
.end method

.method transferCreate()V
    .registers 6

    .prologue
    .line 120
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v2, p0, Landroid/renderscript/Script$Builder;->mIsRoot:Z

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->nScriptSetRoot(Z)V

    .line 121
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_8
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 122
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    aget-object v1, v1, v0

    if-eqz v1, :cond_26

    .line 123
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/BaseObj;->mID:I

    iget-object v3, p0, Landroid/renderscript/Script$Builder;->mWritable:[Z

    aget-boolean v3, v3, v0

    iget-object v4, p0, Landroid/renderscript/Script$Builder;->mNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/renderscript/RenderScript;->nScriptSetType(IZLjava/lang/String;I)V

    .line 121
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 126
    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iget v1, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    if-ge v0, v1, :cond_3c

    .line 127
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script$Builder;->mInvokables:[Landroid/renderscript/Script$Invokable;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Script$Invokable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/renderscript/RenderScript;->nScriptSetInvokable(Ljava/lang/String;I)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 129
    :cond_3c
    return-void
.end method

.method transferObject(Landroid/renderscript/Script;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 132
    iget-boolean v1, p0, Landroid/renderscript/Script$Builder;->mIsRoot:Z

    iput-boolean v1, p1, Landroid/renderscript/Script;->mIsRoot:Z

    .line 133
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    iput-object v1, p1, Landroid/renderscript/Script;->mTypes:[Landroid/renderscript/Type;

    .line 134
    iget v1, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    new-array v1, v1, [Landroid/renderscript/Script$Invokable;

    iput-object v1, p1, Landroid/renderscript/Script;->mInvokables:[Landroid/renderscript/Script$Invokable;

    .line 135
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_f
    iget v1, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    if-ge v0, v1, :cond_24

    .line 136
    iget-object v1, p1, Landroid/renderscript/Script;->mInvokables:[Landroid/renderscript/Script$Invokable;

    iget-object v2, p0, Landroid/renderscript/Script$Builder;->mInvokables:[Landroid/renderscript/Script$Invokable;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 137
    iget-object v1, p1, Landroid/renderscript/Script;->mInvokables:[Landroid/renderscript/Script$Invokable;

    aget-object v1, v1, v0

    iput-object p1, v1, Landroid/renderscript/Script$Invokable;->mScript:Landroid/renderscript/Script;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 139
    :cond_24
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/renderscript/Script;->mInvokables:[Landroid/renderscript/Script$Invokable;

    .line 140
    return-void
.end method
