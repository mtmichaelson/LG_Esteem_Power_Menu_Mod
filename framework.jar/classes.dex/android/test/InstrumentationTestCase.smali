.class public Landroid/test/InstrumentationTestCase;
.super Ljunit/framework/TestCase;
.source "InstrumentationTestCase.java"



# instance fields
.field private mInstrumentation:Landroid/app/Instrumentation;



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;I)V

    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;I)V
    .registers 7
    .parameter "runMethod"
    .parameter "tolerance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, exception:Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 204
    .local v2, runCount:I
    :cond_2
    const/4 v3, 0x0

    :try_start_3
    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_8} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_8} :catch_1e

    .line 205
    const/4 v1, 0x0

    .line 213
    add-int/lit8 v2, v2, 0x1

    .line 215
    :goto_b
    if-ge v2, p2, :cond_f

    if-nez v1, :cond_2

    .line 217
    :cond_f
    if-eqz v1, :cond_2b

    .line 218
    throw v1

    .line 206
    :catch_12
    move-exception v3

    move-object v0, v3

    .line 207
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 208
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 213
    add-int/lit8 v2, v2, 0x1

    .line 214
    goto :goto_b

    .line 209
    .end local v0       #e:Ljava/lang/reflect/InvocationTargetException;,
    :catch_1e
    move-exception v3

    move-object v0, v3

    .line 210
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_27

    .line 211
    move-object v1, v0

    .line 213
    add-int/lit8 v2, v2, 0x1

    .line 214
    goto :goto_b

    .line 213
    .end local v0       #e:Ljava/lang/IllegalAccessException;,
    :catchall_27
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    throw v3

    .line 220
    :cond_2b
    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public injectInsrumentation(Landroid/app/Instrumentation;)V
    .registers 2
    .parameter "instrumentation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 62
    return-void
.end method

.method public injectInstrumentation(Landroid/app/Instrumentation;)V
    .registers 2
    .parameter "instrumentation"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    .line 48
    return-void
.end method

.method public final launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;
    .registers 6
    .parameter "pkg"
    .parameter
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, activityCls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    if-eqz p3, :cond_c

    .line 95
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    :cond_c
    invoke-virtual {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public final launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 6
    .parameter "pkg"
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, activityCls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, activity:Landroid/app/Activity;,"TT;"
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 121
    return-object v0
.end method

.method protected runTest()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-class v11, Landroid/test/FlakyTest;

    const-string v10, "Method \""

    .line 155
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getName()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, fName:Ljava/lang/String;
    invoke-static {v2}, Landroid/test/InstrumentationTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 157
    const/4 v3, 0x0

    .line 163
    .local v3, method:Ljava/lang/reflect/Method;
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v8, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_17} :catch_73

    move-result-object v3

    .line 168
    :goto_18
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method \""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" should be public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    .line 172
    :cond_3e
    const/4 v4, 0x1

    .line 173
    .local v4, runCount:I
    const-class v7, Landroid/test/FlakyTest;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 174
    const-class v7, Landroid/test/FlakyTest;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/test/FlakyTest;

    invoke-interface {v7}, Landroid/test/FlakyTest;->tolerance()I

    move-result v4

    .line 177
    :cond_53
    const-class v7, Landroid/test/UiThreadTest;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 178
    move v6, v4

    .line 179
    .local v6, tolerance:I
    move-object v5, v3

    .line 180
    .local v5, testMethod:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/Throwable;

    .line 181
    .local v1, exceptions:[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    new-instance v8, Landroid/test/InstrumentationTestCase$2;

    invoke-direct {v8, p0, v5, v6, v1}, Landroid/test/InstrumentationTestCase$2;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;I[Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 190
    aget-object v7, v1, v9

    if-eqz v7, :cond_95

    .line 191
    aget-object v7, v1, v9

    throw v7

    .line 164
    .end local v1       #exceptions:[Ljava/lang/Throwable;,
    .end local v4       #runCount:I,
    .end local v5       #testMethod:Ljava/lang/reflect/Method;,
    .end local v6       #tolerance:I,
    :catch_73
    move-exception v7

    move-object v0, v7

    .line 165
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method \""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    goto :goto_18

    .line 194
    .end local v0       #e:Ljava/lang/NoSuchMethodException;,
    .restart local v4       #runCount:I,
    :cond_92
    invoke-direct {p0, v3, v4}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;I)V

    .line 196
    :cond_95
    return-void
.end method

.method public runTestOnUiThread(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Throwable;

    .line 135
    .local v0, exceptions:[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    new-instance v2, Landroid/test/InstrumentationTestCase$1;

    invoke-direct {v2, p0, p1, v0}, Landroid/test/InstrumentationTestCase$1;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/Runnable;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 144
    aget-object v1, v0, v3

    if-eqz v1, :cond_17

    .line 145
    aget-object v1, v0, v3

    throw v1

    .line 147
    :cond_17
    return-void
.end method

.method public sendKeys(Ljava/lang/String;)V
    .registers 16
    .parameter "keysSequence"

    .prologue
    .line 232
    const-string v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, keys:[Ljava/lang/String;
    array-length v0, v9

    .line 235
    .local v0, count:I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    .line 237
    .local v3, instrumentation:Landroid/app/Instrumentation;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v0, :cond_a9

    .line 238
    aget-object v5, v9, v2

    .line 239
    .local v5, key:Ljava/lang/String;
    const/16 v11, 0x2a

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 243
    .local v10, repeater:I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4b

    const/4 v11, 0x1

    move v8, v11

    .line 249
    .local v8, keyCount:I
    :goto_1b
    const/4 v11, -0x1

    if-eq v10, v11, :cond_24

    .line 250
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 253
    :cond_24
    const/4 v4, 0x0

    .local v4, j:I
    :goto_25
    if-ge v4, v8, :cond_70

    .line 255
    :try_start_27
    const-class v11, Landroid/view/KeyEvent;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 256
    .local v7, keyCodeField:Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_44
    .catch Ljava/lang/NoSuchFieldException; {:try_start_27 .. :try_end_44} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_44} :catch_8e

    move-result v6

    .line 258
    .local v6, keyCode:I
    :try_start_45
    invoke-virtual {v3, v6}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_48} :catch_ad
    .catch Ljava/lang/NoSuchFieldException; {:try_start_45 .. :try_end_48} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_48} :catch_8e

    .line 253
    :goto_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 243
    .end local v4       #j:I,
    .end local v6       #keyCode:I,
    .end local v7       #keyCodeField:Ljava/lang/reflect/Field;,
    .end local v8       #keyCount:I,
    :cond_4b
    const/4 v11, 0x0

    :try_start_4c
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_53} :catch_56

    move-result v11

    move v8, v11

    goto :goto_1b

    .line 244
    :catch_56
    move-exception v11

    move-object v1, v11

    .line 245
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid repeat count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v1       #e:Ljava/lang/NumberFormatException;,
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 264
    .restart local v4       #j:I,
    .restart local v8       #keyCount:I,
    :catch_73
    move-exception v11

    move-object v1, v11

    .line 265
    .local v1, e:Ljava/lang/NoSuchFieldException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown keycode: KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 267
    .end local v1       #e:Ljava/lang/NoSuchFieldException;,
    :catch_8e
    move-exception v11

    move-object v1, v11

    .line 268
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown keycode: KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 274
    .end local v1       #e:Ljava/lang/IllegalAccessException;,
    .end local v4       #j:I,
    .end local v5       #key:Ljava/lang/String;,
    .end local v8       #keyCount:I,
    .end local v10       #repeater:I,
    :cond_a9
    invoke-virtual {v3}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 275
    return-void

    .line 259
    .restart local v4       #j:I,
    .restart local v5       #key:Ljava/lang/String;,
    .restart local v6       #keyCode:I,
    .restart local v7       #keyCodeField:Ljava/lang/reflect/Field;,
    .restart local v8       #keyCount:I,
    .restart local v10       #repeater:I,
    :catch_ad
    move-exception v11

    goto :goto_48
.end method

.method public varargs sendKeys([I)V
    .registers 6
    .parameter "keys"

    .prologue
    .line 284
    array-length v0, p1

    .line 285
    .local v0, count:I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .line 287
    .local v2, instrumentation:Landroid/app/Instrumentation;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_10

    .line 289
    :try_start_8
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_d} :catch_14

    .line 287
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 297
    :cond_10
    invoke-virtual {v2}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 298
    return-void

    .line 290
    :catch_14
    move-exception v3

    goto :goto_d
.end method

.method public varargs sendRepeatedKeys([I)V
    .registers 10
    .parameter "keys"

    .prologue
    .line 308
    array-length v0, p1

    .line 309
    .local v0, count:I
    and-int/lit8 v6, v0, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    .line 310
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The size of the keys array must be a multiple of 2"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 314
    :cond_e
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .line 316
    .local v2, instrumentation:Landroid/app/Instrumentation;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v0, :cond_27

    .line 317
    aget v5, p1, v1

    .line 318
    .local v5, keyCount:I
    add-int/lit8 v6, v1, 0x1

    aget v4, p1, v6

    .line 319
    .local v4, keyCode:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1c
    if-ge v3, v5, :cond_24

    .line 321
    :try_start_1e
    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_21} :catch_2b

    .line 319
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 316
    :cond_24
    add-int/lit8 v1, v1, 0x2

    goto :goto_13

    .line 330
    .end local v3       #j:I,
    .end local v4       #keyCode:I,
    .end local v5       #keyCount:I,
    :cond_27
    invoke-virtual {v2}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 331
    return-void

    .line 322
    .restart local v3       #j:I,
    .restart local v4       #keyCode:I,
    .restart local v5       #keyCount:I,
    :catch_2b
    move-exception v6

    goto :goto_21
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 343
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 344
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 345
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 346
    return-void
.end method
