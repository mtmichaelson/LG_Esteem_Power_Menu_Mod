.class public abstract Landroid/security/MessageDigest;
.super Ljava/lang/Object;
.source "MessageDigest.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;
    .registers 2
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    .line 48
    :goto_3
    return-object v0

    .line 44
    :cond_4
    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    new-instance v0, Landroid/security/Sha1MessageDigest;

    invoke-direct {v0}, Landroid/security/Sha1MessageDigest;-><init>()V

    goto :goto_3

    .line 47
    :cond_12
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 48
    new-instance v0, Landroid/security/Md5MessageDigest;

    invoke-direct {v0}, Landroid/security/Md5MessageDigest;-><init>()V

    goto :goto_3

    .line 51
    :cond_20
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract digest()[B
.end method

.method public abstract digest([B)[B
.end method

.method public abstract update([B)V
.end method
