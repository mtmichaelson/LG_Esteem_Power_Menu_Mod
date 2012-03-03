.class public Lcom/lge/config/BConfig;
.super Ljava/lang/Object;
.source "BConfig.java"



# static fields
.field public static final CARRIER:Ljava/lang/String; = null

.field public static final COUNTRY:Ljava/lang/String; = null

.field public static final LOCMGR:Ljava/lang/String; = null

.field public static final SCROLL_BOUNCE_EFFECT_ON:Z = true



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string/jumbo v0, "user.feature.locmgr"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/config/BConfig;->LOCMGR:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "user.carrier"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/config/BConfig;->CARRIER:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "user.country"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/config/BConfig;->COUNTRY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
