.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"



# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .registers 7
    .parameter "shaderA"
    .parameter "shaderB"
    .parameter "mode"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 44
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    iget v1, p2, Landroid/graphics/Shader;->native_instance:I

    iget v2, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/ComposeShader;->nativeCreate2(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .registers 7
    .parameter "shaderA"
    .parameter "shaderB"
    .parameter "mode"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 32
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    iget v1, p2, Landroid/graphics/Shader;->native_instance:I

    if-eqz p3, :cond_12

    iget v2, p3, Landroid/graphics/Xfermode;->native_instance:I

    :goto_b
    invoke-static {v0, v1, v2}, Landroid/graphics/ComposeShader;->nativeCreate1(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 34
    return-void

    .line 32
    :cond_12
    const/4 v2, 0x0

    goto :goto_b
.end method

.method private static native nativeCreate1(III)I
.end method

.method private static native nativeCreate2(III)I
.end method
