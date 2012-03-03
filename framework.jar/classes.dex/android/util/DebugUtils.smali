.class public Landroid/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isObjectSelected(Ljava/lang/Object;)Z
    .registers 15
    .parameter "object"

    .prologue
    const/4 v11, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, match:Z
    const-string v10, "ANDROID_OBJECT_FILTER"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, s:Ljava/lang/String;
    if-eqz v7, :cond_a3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a3

    .line 67
    const-string v10, "@"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, selectors:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 71
    const/4 v2, 0x1

    .local v2, i:I
    :goto_27
    array-length v10, v8

    if-ge v2, v10, :cond_a3

    .line 72
    aget-object v10, v8, v2

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, pair:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 75
    .local v3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 76
    .local v0, declaredMethod:Ljava/lang/reflect/Method;
    move-object v6, v3

    .line 78
    .local v6, parent:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_38
    :try_start_38
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_73

    if-eqz v0, :cond_38

    .line 85
    :cond_73
    if-eqz v0, :cond_8a

    .line 86
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 88
    .local v9, value:Ljava/lang/Object;
    if-eqz v9, :cond_8d

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_82
    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v4, v10

    .line 71
    .end local v9       #value:Ljava/lang/Object;,
    :cond_8a
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 88
    .restart local v9       #value:Ljava/lang/Object;,
    :cond_8d
    const-string/jumbo v10, "null"
    :try_end_90
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_90} :catch_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_90} :catch_97
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_90} :catch_9d

    goto :goto_82

    .line 91
    .end local v9       #value:Ljava/lang/Object;,
    :catch_91
    move-exception v10

    move-object v1, v10

    .line 92
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_8a

    .line 93
    .end local v1       #e:Ljava/lang/NoSuchMethodException;,
    :catch_97
    move-exception v10

    move-object v1, v10

    .line 94
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_8a

    .line 95
    .end local v1       #e:Ljava/lang/IllegalAccessException;,
    :catch_9d
    move-exception v10

    move-object v1, v10

    .line 96
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_8a

    .line 101
    .end local v0       #declaredMethod:Ljava/lang/reflect/Method;,
    .end local v1       #e:Ljava/lang/reflect/InvocationTargetException;,
    .end local v2       #i:I,
    .end local v3       #klass:Ljava/lang/Class;,, "Ljava/lang/Class<*>;"
    .end local v5       #pair:[Ljava/lang/String;,
    .end local v6       #parent:Ljava/lang/Class;,, "Ljava/lang/Class<*>;"
    .end local v8       #selectors:[Ljava/lang/String;,
    :cond_a3
    return v4
.end method
