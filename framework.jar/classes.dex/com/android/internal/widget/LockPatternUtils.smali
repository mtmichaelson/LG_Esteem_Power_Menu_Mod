.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"



# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final HISTORY_DELIMITER:[B = null

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field private static final LOCK_HISTORY_FILE:Ljava/lang/String; = "history.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_RECOVERY_FILE:Ljava/lang/String; = "/system/recovery.key"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x3

.field public static final PASSWORD_EXPIRE_MODE:Ljava/lang/String; = "PASSWORD_EXPIRE"

.field public static final PASSWORD_RECOVERY_MODE:Ljava/lang/String; = "PASSWORD_RECOVERY"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPasswordHistoryFileName:Ljava/lang/String;

.field private static sLockPasswordRecoveryFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;



# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x7c

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->HISTORY_DELIMITER:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 159
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_c3

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 165
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_c4

    move v3, v6

    :goto_6b
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_c6

    move v3, v6

    :goto_80
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/recovery.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordRecoveryFilename:Ljava/lang/String;

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "history.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFileName:Ljava/lang/String;

    .line 174
    const/16 v1, 0x388

    .line 176
    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    .line 187
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 189
    .end local v0       #dataSystemDirectory:Ljava/lang/String;,
    .end local v1       #fileObserverMask:I,
    :cond_c3
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;,
    :cond_c4
    move v3, v5

    .line 165
    goto :goto_6b

    :cond_c6
    move v3, v5

    .line 166
    goto :goto_80
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static computePasswordComplexity(Ljava/lang/String;)I
    .registers 8
    .parameter "password"

    .prologue
    .line 752
    const/4 v4, 0x0

    .line 753
    .local v4, nDigit:I
    const/4 v5, 0x0

    .line 754
    .local v5, nSymbol:I
    const/4 v2, 0x0

    .line 755
    .local v2, nAlphaLower:I
    const/4 v3, 0x0

    .line 757
    .local v3, nAlphaUpper:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_35

    .line 758
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 759
    .local v0, c:C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_1c

    const/16 v6, 0x39

    if-gt v0, v6, :cond_1c

    .line 760
    add-int/lit8 v4, v4, 0x1

    .line 757
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 761
    :cond_1c
    const/16 v6, 0x41

    if-lt v0, v6, :cond_27

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_27

    .line 762
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 764
    :cond_27
    const/16 v6, 0x61

    if-lt v0, v6, :cond_32

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_32

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 768
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 778
    .end local v0       #c:C,
    :cond_35
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 6
    .parameter "password"

    .prologue
    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 728
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 729
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 730
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 731
    const/4 v0, 0x1

    .line 729
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 733
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 737
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 738
    const/high16 v4, 0x5

    .line 746
    :goto_1f
    return v4

    .line 740
    :cond_20
    if-eqz v1, :cond_25

    .line 741
    const/high16 v4, 0x4

    goto :goto_1f

    .line 743
    :cond_25
    if-eqz v0, :cond_2a

    .line 744
    const/high16 v4, 0x2

    goto :goto_1f

    .line 746
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method public static computePasswordSimplicity(Ljava/lang/String;)Z
    .registers 16
    .parameter "password"

    .prologue
    .line 793
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 794
    .local v0, aAlpha:Ljava/lang/String;
    const-string v1, "01234567890"

    .line 796
    .local v1, aNumeric:Ljava/lang/String;
    const/4 v4, 0x1

    .line 797
    .local v4, nRepCount:I
    const/4 v5, 0x4

    .line 798
    .local v5, nReqLimit:I
    const/4 v2, 0x0

    .line 799
    .local v2, currChar:C
    const/4 v6, 0x0

    .line 800
    .local v6, prevChar:C
    const-string v7, ""

    .line 803
    .local v7, sRepeatedString:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    move-object v10, v7

    .end local v7       #sRepeatedString:Ljava/lang/String;,
    .local v10, sRepeatedString:Ljava/lang/String;
    move v8, v6

    .end local v6       #prevChar:C,
    .local v8, prevChar:C
    move v6, v4

    .end local v4       #nRepCount:I,
    .local v6, nRepCount:I
    move v4, v2

    .end local v2       #currChar:C,
    .local v4, currChar:C
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_45

    .line 805
    move v7, v4

    .line 806
    .end local v8       #prevChar:C,
    .local v7, prevChar:C
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 808
    .end local v4       #currChar:C,
    .restart local v2       #currChar:C,
    if-ne v7, v2, :cond_38

    .line 810
    add-int/lit8 v4, v6, 0x1

    .line 811
    .end local v6       #nRepCount:I,
    .local v4, nRepCount:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 819
    .end local v10       #sRepeatedString:Ljava/lang/String;,
    .local v6, sRepeatedString:Ljava/lang/String;
    :goto_2f
    if-lt v4, v5, :cond_3e

    .line 821
    const/4 p0, 0x1

    move v1, v7

    .end local v7       #prevChar:C,
    .local v1, prevChar:C
    move v0, v4

    .end local v4       #nRepCount:I,
    .local v0, nRepCount:I
    move v3, p0

    move p0, v2

    .end local v2       #currChar:C,
    .local p0, currChar:C
    move-object v2, v6

    .line 878
    .end local v3       #i:I,
    .end local v5       #nReqLimit:I,
    .end local v6       #sRepeatedString:Ljava/lang/String;,
    .local v2, sRepeatedString:Ljava/lang/String;
    :goto_37
    return v3

    .line 815
    .local v0, aAlpha:Ljava/lang/String;
    .local v1, aNumeric:Ljava/lang/String;
    .local v2, currChar:C
    .restart local v3       #i:I,
    .restart local v5       #nReqLimit:I,
    .local v6, nRepCount:I
    .restart local v7       #prevChar:C,
    .restart local v10       #sRepeatedString:Ljava/lang/String;,
    .local p0, password:Ljava/lang/String;
    :cond_38
    const/4 v4, 0x1

    .line 816
    .end local v6       #nRepCount:I,
    .restart local v4       #nRepCount:I,
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .end local v10       #sRepeatedString:Ljava/lang/String;,
    .local v6, sRepeatedString:Ljava/lang/String;
    goto :goto_2f

    .line 803
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    move-object v10, v6

    .end local v6       #sRepeatedString:Ljava/lang/String;,
    .restart local v10       #sRepeatedString:Ljava/lang/String;,
    move v8, v7

    .end local v7       #prevChar:C,
    .restart local v8       #prevChar:C,
    move v6, v4

    .end local v4       #nRepCount:I,
    .local v6, nRepCount:I
    move v4, v2

    .end local v2       #currChar:C,
    .local v4, currChar:C
    goto :goto_f

    .line 825
    :cond_45
    const/4 v3, 0x0

    .line 826
    .local v3, bSeqDigit:Z
    const/4 v2, 0x0

    .line 827
    .local v2, bSeqAlpha:Z
    const/4 v5, 0x0

    .line 828
    .local v5, nSeqSymbol:I
    const/4 v7, 0x4

    .line 829
    .local v7, nSeqLimit:I
    const-string v12, ""

    .line 832
    .local v12, sSequentialString:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    if-ge v5, v9, :cond_ca

    .line 834
    add-int v9, v7, v5

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 835
    .local v9, sFwd:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->strReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 837
    .local v11, sRev:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_74

    .line 839
    const/4 v0, 0x1

    .line 840
    .end local v2       #bSeqAlpha:Z,
    .local v0, bSeqAlpha:Z
    move-object v2, v9

    .end local v12       #sSequentialString:Ljava/lang/String;,
    .local v2, sSequentialString:Ljava/lang/String;
    move-object v9, v2

    .line 852
    .end local v2       #sSequentialString:Ljava/lang/String;,
    .end local v11       #sRev:Ljava/lang/String;,
    .local v9, sSequentialString:Ljava/lang/String;
    :goto_6b
    if-eqz v0, :cond_86

    .line 853
    const/4 p0, 0x1

    move-object v2, v10

    .end local v10       #sRepeatedString:Ljava/lang/String;,
    .local v2, sRepeatedString:Ljava/lang/String;
    move v1, v8

    .end local v8       #prevChar:C,
    .local v1, prevChar:C
    move v0, v6

    .end local v6       #nRepCount:I,
    .local v0, nRepCount:I
    move v3, p0

    move p0, v4

    .end local v4       #currChar:C,
    .local p0, currChar:C
    goto :goto_37

    .line 844
    .local v0, aAlpha:Ljava/lang/String;
    .local v1, aNumeric:Ljava/lang/String;
    .local v2, bSeqAlpha:Z
    .restart local v4       #currChar:C,
    .restart local v6       #nRepCount:I,
    .restart local v8       #prevChar:C,
    .local v9, sFwd:Ljava/lang/String;
    .restart local v10       #sRepeatedString:Ljava/lang/String;,
    .restart local v11       #sRev:Ljava/lang/String;,
    .restart local v12       #sSequentialString:Ljava/lang/String;,
    .local p0, password:Ljava/lang/String;
    :cond_74
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .end local v9       #sFwd:Ljava/lang/String;,
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v13, -0x1

    if-eq v9, v13, :cond_83

    .line 846
    const/4 v0, 0x1

    .line 847
    .end local v2       #bSeqAlpha:Z,
    .local v0, bSeqAlpha:Z
    move-object v2, v11

    .end local v12       #sSequentialString:Ljava/lang/String;,
    .local v2, sSequentialString:Ljava/lang/String;
    move-object v9, v2

    .line 848
    .end local v2       #sSequentialString:Ljava/lang/String;,
    .local v9, sSequentialString:Ljava/lang/String;
    goto :goto_6b

    .line 832
    .end local v9       #sSequentialString:Ljava/lang/String;,
    .local v0, aAlpha:Ljava/lang/String;
    .local v2, bSeqAlpha:Z
    .restart local v12       #sSequentialString:Ljava/lang/String;,
    :cond_83
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 856
    .end local v2       #bSeqAlpha:Z,
    .end local v11       #sRev:Ljava/lang/String;,
    .end local v12       #sSequentialString:Ljava/lang/String;,
    .local v0, bSeqAlpha:Z
    .restart local v9       #sSequentialString:Ljava/lang/String;,
    :cond_86
    const/4 v0, 0x0

    .end local v5       #i:I,
    .local v0, i:I
    :goto_87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v7

    if-ge v0, v2, :cond_c7

    .line 858
    add-int v2, v7, v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, sFwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->strReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, sRev:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_ae

    .line 862
    const/4 p0, 0x1

    .line 863
    .end local v3       #bSeqDigit:Z,
    .local p0, bSeqDigit:Z
    move-object v0, v2

    .line 875
    .end local v2       #sFwd:Ljava/lang/String;,
    .end local v5       #sRev:Ljava/lang/String;,
    .end local v9       #sSequentialString:Ljava/lang/String;,
    .local v0, sSequentialString:Ljava/lang/String;
    :goto_a5
    if-eqz p0, :cond_bf

    .line 876
    const/4 p0, 0x1

    move-object v2, v10

    .end local v10       #sRepeatedString:Ljava/lang/String;,
    .local v2, sRepeatedString:Ljava/lang/String;
    move v1, v8

    .end local v8       #prevChar:C,
    .local v1, prevChar:C
    move v0, v6

    .end local v6       #nRepCount:I,
    .local v0, nRepCount:I
    move v3, p0

    move p0, v4

    .end local v4       #currChar:C,
    .local p0, currChar:C
    goto :goto_37

    .line 867
    .local v0, i:I
    .local v1, aNumeric:Ljava/lang/String;
    .local v2, sFwd:Ljava/lang/String;
    .restart local v3       #bSeqDigit:Z,
    .restart local v4       #currChar:C,
    .restart local v5       #sRev:Ljava/lang/String;,
    .restart local v6       #nRepCount:I,
    .restart local v8       #prevChar:C,
    .restart local v9       #sSequentialString:Ljava/lang/String;,
    .restart local v10       #sRepeatedString:Ljava/lang/String;,
    .local p0, password:Ljava/lang/String;
    :cond_ae
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .end local v2       #sFwd:Ljava/lang/String;,
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_bc

    .line 869
    const/4 p0, 0x1

    .line 870
    .end local v3       #bSeqDigit:Z,
    .local p0, bSeqDigit:Z
    move-object v0, v5

    .line 871
    .end local v9       #sSequentialString:Ljava/lang/String;,
    .local v0, sSequentialString:Ljava/lang/String;
    goto :goto_a5

    .line 856
    .local v0, i:I
    .restart local v3       #bSeqDigit:Z,
    .restart local v9       #sSequentialString:Ljava/lang/String;,
    .local p0, password:Ljava/lang/String;
    :cond_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 878
    .end local v3       #bSeqDigit:Z,
    .end local v5       #sRev:Ljava/lang/String;,
    .end local v9       #sSequentialString:Ljava/lang/String;,
    .local v0, sSequentialString:Ljava/lang/String;
    .local p0, bSeqDigit:Z
    :cond_bf
    const/4 p0, 0x0

    move-object v2, v10

    .end local v10       #sRepeatedString:Ljava/lang/String;,
    .local v2, sRepeatedString:Ljava/lang/String;
    move v1, v8

    .end local v8       #prevChar:C,
    .local v1, prevChar:C
    move v0, v6

    .end local v6       #nRepCount:I,
    .local v0, nRepCount:I
    move v3, p0

    move p0, v4

    .end local v4       #currChar:C,
    .local p0, currChar:C
    goto/16 :goto_37

    .end local v2       #sRepeatedString:Ljava/lang/String;,
    .local v0, i:I
    .local v1, aNumeric:Ljava/lang/String;
    .restart local v3       #bSeqDigit:Z,
    .restart local v4       #currChar:C,
    .restart local v6       #nRepCount:I,
    .restart local v8       #prevChar:C,
    .restart local v9       #sSequentialString:Ljava/lang/String;,
    .restart local v10       #sRepeatedString:Ljava/lang/String;,
    .local p0, password:Ljava/lang/String;
    :cond_c7
    move-object v0, v9

    .end local v9       #sSequentialString:Ljava/lang/String;,
    .local v0, sSequentialString:Ljava/lang/String;
    move p0, v3

    .end local v3       #bSeqDigit:Z,
    .local p0, bSeqDigit:Z
    goto :goto_a5

    .local v0, aAlpha:Ljava/lang/String;
    .local v2, bSeqAlpha:Z
    .restart local v3       #bSeqDigit:Z,
    .local v5, i:I
    .restart local v12       #sSequentialString:Ljava/lang/String;,
    .local p0, password:Ljava/lang/String;
    :cond_ca
    move-object v9, v12

    .end local v12       #sSequentialString:Ljava/lang/String;,
    .restart local v9       #sSequentialString:Ljava/lang/String;,
    move v0, v2

    .end local v2       #bSeqAlpha:Z,
    .local v0, bSeqAlpha:Z
    goto :goto_6b
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .registers 5
    .parameter "secureSettingKey"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1243
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_c

    move v0, v2

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 6
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const-string v6, "lockscreen.password_salt"

    .line 1080
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1081
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_24

    .line 1083
    :try_start_e
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1084
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1085
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_24} :catch_29

    .line 1091
    :cond_24
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1086
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 1088
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private nonEmptyFileExists(Ljava/lang/String;)Z
    .registers 9
    .parameter "filename"

    .prologue
    .line 577
    const/4 v3, 0x0

    .line 578
    .local v3, raf:Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 581
    .local v0, exist:Z
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_a} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_21

    .line 582
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    .line 583
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_10} :catch_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_3e

    .line 584
    const/4 v3, 0x0

    .line 585
    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    const/4 v0, 0x1

    .line 592
    if-eqz v3, :cond_16

    .line 593
    :try_start_14
    throw v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_33

    .line 594
    const/4 v3, 0x0

    .line 599
    :cond_16
    :goto_16
    return v0

    .line 586
    :catch_17
    move-exception v5

    move-object v1, v5

    .line 587
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    :goto_19
    const/4 v0, 0x0

    .line 592
    if-eqz v3, :cond_16

    .line 593
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_35

    .line 594
    const/4 v3, 0x0

    goto :goto_16

    .line 588
    .end local v1       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_21
    move-exception v5

    move-object v2, v5

    .line 589
    .local v2, ioe:Ljava/io/IOException;
    :goto_23
    const/4 v0, 0x0

    .line 592
    if-eqz v3, :cond_16

    .line 593
    :try_start_26
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_37

    .line 594
    const/4 v3, 0x0

    goto :goto_16

    .line 591
    .end local v2       #ioe:Ljava/io/IOException;,
    :catchall_2b
    move-exception v5

    .line 592
    :goto_2c
    if-eqz v3, :cond_32

    .line 593
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_39

    .line 594
    const/4 v3, 0x0

    .line 597
    :cond_32
    :goto_32
    throw v5

    .line 596
    :catch_33
    move-exception v5

    goto :goto_16

    .restart local v1       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_35
    move-exception v5

    goto :goto_16

    .end local v1       #fnfe:Ljava/io/FileNotFoundException;,
    .restart local v2       #ioe:Ljava/io/IOException;,
    :catch_37
    move-exception v5

    goto :goto_16

    .end local v2       #ioe:Ljava/io/IOException;,
    :catch_39
    move-exception v6

    goto :goto_32

    .line 591
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .restart local v4       #raf:Ljava/io/RandomAccessFile;,
    :catchall_3b
    move-exception v5

    move-object v3, v4

    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    goto :goto_2c

    .line 588
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .restart local v4       #raf:Ljava/io/RandomAccessFile;,
    :catch_3e
    move-exception v5

    move-object v2, v5

    move-object v3, v4

    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    goto :goto_23

    .line 586
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .restart local v4       #raf:Ljava/io/RandomAccessFile;,
    :catch_42
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    goto :goto_19
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 1061
    const/4 v7, 0x0

    .line 1075
    :goto_3
    return-object v7

    .line 1064
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1065
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 1066
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 1067
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1068
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1066
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1071
    .end local v0       #cell:Lcom/android/internal/widget/LockPatternView$Cell;,
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v3

    .line 1072
    .local v3, md:Landroid/security/MessageDigest;
    invoke-virtual {v3, v6}, Landroid/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_30

    move-result-object v1

    .local v1, hash:[B
    move-object v7, v1

    .line 1073
    goto :goto_3

    .line 1074
    .end local v1       #hash:[B,
    .end local v3       #md:Landroid/security/MessageDigest;,
    :catch_30
    move-exception v7

    move-object v4, v7

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v7, v6

    .line 1075
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1039
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 1040
    const-string v4, ""

    .line 1049
    :goto_4
    return-object v4

    .line 1042
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1044
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 1045
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 1046
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1047
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1049
    .end local v0       #cell:Lcom/android/internal/widget/LockPatternView$Cell;,
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1250
    return-void

    .line 1248
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1258
    return-void
.end method

.method private static strReverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 783
    const-string v1, ""

    .line 784
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 788
    :cond_21
    return-object v1
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1023
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1025
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1026
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 1027
    aget-byte v0, v1, v2

    .line 1028
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1030
    .end local v0       #b:B,
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "ary"

    .prologue
    const-string v5, "0123456789ABCDEF"

    .line 1119
    const-string v0, "0123456789ABCDEF"

    .line 1120
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 1121
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_45

    .line 1122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1121
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1125
    :cond_45
    return-object v2
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .registers 10
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    .line 371
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 373
    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 374
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 375
    if-gtz v1, :cond_1f

    move v5, v7

    .line 383
    .end local v1       #got:I,
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .end local v4       #stored:[B,
    :goto_1e
    return v5

    .line 379
    .restart local v1       #got:I,
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    .restart local v4       #stored:[B,
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_2c

    move-result v5

    goto :goto_1e

    .line 380
    .end local v1       #got:I,
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .end local v4       #stored:[B,
    :catch_28
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    .line 381
    goto :goto_1e

    .line 382
    .end local v0       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_2c
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    .line 383
    goto :goto_1e
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .registers 17
    .parameter "password"

    .prologue
    .line 437
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    sget-object v12, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFileName:Ljava/lang/String;

    const-string/jumbo v13, "r"

    invoke-direct {v7, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .local v7, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_e

    .line 440
    const/4 v12, 0x0

    .line 482
    .end local v7       #raf:Ljava/io/RandomAccessFile;,
    :goto_d
    return v12

    .line 444
    .restart local v7       #raf:Ljava/io/RandomAccessFile;,
    :cond_e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v12, v12

    new-array v8, v12, [B

    .line 445
    .local v8, stored:[B
    const/4 v12, 0x0

    array-length v13, v8

    invoke-virtual {v7, v8, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 446
    .local v2, got:I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 447
    if-gtz v2, :cond_22

    .line 448
    const/4 v12, 0x0

    goto :goto_d

    .line 453
    :cond_22
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v3

    .line 454
    .local v3, hashPassword:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 455
    .local v0, fileData:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    .line 457
    .local v9, strPassword:Ljava/lang/String;
    new-instance v11, Ljava/util/StringTokenizer;

    new-instance v12, Ljava/lang/String;

    sget-object v13, Lcom/android/internal/widget/LockPatternUtils;->HISTORY_DELIMITER:[B

    const-string v14, "UTF-8"

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v11, v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .local v11, tok:Ljava/util/StringTokenizer;
    const/4 v5, 0x0

    .line 459
    .local v5, nTokCount:I
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 460
    .local v6, nTotalTokCount:I
    :goto_43
    if-le v6, v5, :cond_5c

    if-lez v6, :cond_5c

    .line 462
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 463
    .local v10, strTmp:Ljava/lang/String;
    if-nez v10, :cond_50

    .line 465
    add-int/lit8 v5, v5, 0x1

    .line 466
    goto :goto_43

    .line 468
    :cond_50
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_53} :catch_5e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_69

    move-result v12

    if-eqz v12, :cond_58

    .line 470
    const/4 v12, 0x1

    goto :goto_d

    .line 472
    :cond_58
    add-int/lit8 v5, v5, 0x1

    .line 473
    const/4 v10, 0x0

    goto :goto_43

    .line 475
    .end local v10       #strTmp:Ljava/lang/String;,
    :cond_5c
    const/4 v12, 0x0

    goto :goto_d

    .line 477
    .end local v0       #fileData:Ljava/lang/String;,
    .end local v2       #got:I,
    .end local v3       #hashPassword:[B,
    .end local v5       #nTokCount:I,
    .end local v6       #nTotalTokCount:I,
    .end local v7       #raf:Ljava/io/RandomAccessFile;,
    .end local v8       #stored:[B,
    .end local v9       #strPassword:Ljava/lang/String;,
    .end local v11       #tok:Ljava/util/StringTokenizer;,
    :catch_5e
    move-exception v12

    move-object v1, v12

    .line 478
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v12, "LockPatternUtils"

    const-string v13, "checkPasswordHistory is FileNotFoundException "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v12, 0x0

    goto :goto_d

    .line 480
    .end local v1       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_69
    move-exception v12

    move-object v4, v12

    .line 481
    .local v4, ioe:Ljava/io/IOException;
    const-string v12, "LockPatternUtils"

    const-string v13, "checkPasswordHistory is IOException"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v12, 0x0

    goto :goto_d
.end method

.method public checkPasswordRecovery(Ljava/lang/String;)Z
    .registers 10
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    .line 295
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordRecoveryFilename:Ljava/lang/String;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 297
    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 298
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 299
    if-gtz v1, :cond_1f

    move v5, v7

    .line 307
    .end local v1       #got:I,
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .end local v4       #stored:[B,
    :goto_1e
    return v5

    .line 303
    .restart local v1       #got:I,
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    .restart local v4       #stored:[B,
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_2c

    move-result v5

    goto :goto_1e

    .line 304
    .end local v1       #got:I,
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .end local v4       #stored:[B,
    :catch_28
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    .line 305
    goto :goto_1e

    .line 306
    .end local v0       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_2c
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    .line 307
    goto :goto_1e
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x1

    .line 346
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 348
    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 349
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 350
    if-gtz v1, :cond_1f

    move v5, v7

    .line 358
    .end local v1       #got:I,
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .end local v4       #stored:[B,
    :goto_1e
    return v5

    .line 354
    .restart local v1       #got:I,
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    .restart local v4       #stored:[B,
    :cond_1f
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_2c

    move-result v5

    goto :goto_1e

    .line 355
    .end local v1       #got:I,
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .end local v4       #stored:[B,
    :catch_28
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    .line 356
    goto :goto_1e

    .line 357
    .end local v0       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_2c
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    .line 358
    goto :goto_1e
.end method

.method public checkSecurityMode()Z
    .registers 5

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSecurityLockOn()Z

    move-result v0

    goto :goto_10
.end method

.method public cleanPassword()V
    .registers 10

    .prologue
    const-wide/16 v5, 0x0

    const-string v8, "Unable to save lock pattern to "

    const-string v7, "LockPatternUtils"

    .line 1287
    :try_start_6
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    .local v2, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    .line 1290
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1292
    :cond_1d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_20} :catch_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_20} :catch_3e

    .line 1302
    .end local v2       #raf:Ljava/io/RandomAccessFile;,
    :goto_20
    return-void

    .line 1294
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 1297
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v3, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern to "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1298
    .end local v0       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_3e
    move-exception v3

    move-object v1, v3

    .line 1300
    .local v1, ioe:Ljava/io/IOException;
    const-string v3, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern to "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public cleanPasswordHistory(I)V
    .registers 12
    .parameter "historyCount"

    .prologue
    const-string/jumbo v6, "rw"

    const-string v9, "Unable to save History passoword to "

    const-string v8, "LockPatternUtils"

    .line 397
    :try_start_7
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFileName:Ljava/lang/String;

    const-string/jumbo v7, "rw"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v3, raf:Ljava/io/RandomAccessFile;
    if-gtz p1, :cond_1c

    .line 401
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 422
    :cond_18
    :goto_18
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 430
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    :cond_1b
    :goto_1b
    return-void

    .line 405
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    :cond_1c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 406
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 407
    new-instance v3, Ljava/io/RandomAccessFile;

    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFileName:Ljava/lang/String;

    const-string/jumbo v7, "rw"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .restart local v3       #raf:Ljava/io/RandomAccessFile;,
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v7, "r"

    invoke-direct {v4, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v4, rafPassword:Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v5, v6, [B

    .line 411
    .local v5, stored:[B
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 412
    .local v1, got:I
    if-lez v1, :cond_1b

    .line 415
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 416
    array-length v6, v5

    if-ltz v6, :cond_18

    .line 418
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 419
    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->HISTORY_DELIMITER:[B

    invoke-virtual {v3, v6}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_57} :catch_58
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_57} :catch_75

    goto :goto_18

    .line 423
    .end local v1       #got:I,
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    .end local v4       #rafPassword:Ljava/io/RandomAccessFile;,
    .end local v5       #stored:[B,
    :catch_58
    move-exception v6

    move-object v0, v6

    .line 425
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v6, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save History passoword to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 426
    .end local v0       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_75
    move-exception v6

    move-object v2, v6

    .line 428
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save History passoword to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public cleanPasswordRecovery()V
    .registers 9

    .prologue
    const-string v7, "Unable to save recovery passoword to "

    const-string v6, "LockPatternUtils"

    .line 276
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 279
    .local v1, hash:[B
    :try_start_9
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordRecoveryFilename:Ljava/lang/String;

    const-string/jumbo v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v3, raf:Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 282
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_39

    .line 290
    .end local v3       #raf:Ljava/io/RandomAccessFile;,
    :goto_1b
    return-void

    .line 283
    :catch_1c
    move-exception v4

    move-object v0, v4

    .line 285
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v4, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save recovery passoword to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordRecoveryFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 286
    .end local v0       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_39
    move-exception v4

    move-object v2, v4

    .line 288
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save recovery passoword to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordRecoveryFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public clearLock()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(II)V

    .line 680
    const/high16 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 681
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 682
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 683
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 684
    return-void
.end method

.method public genPasswordRecovery()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v9, 0x0

    const-string v11, "Unable to save recovery passoword to "

    const-string v10, "LockPatternUtils"

    .line 239
    new-instance v5, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 240
    .local v5, random:Ljava/util/Random;
    const-string v6, ""

    .line 243
    .local v6, recovery:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    const/16 v7, 0x10

    if-ge v2, v7, :cond_2f

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 249
    :cond_2f
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 253
    .local v1, hash:[B
    :try_start_33
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordRecoveryFilename:Ljava/lang/String;

    const-string/jumbo v8, "rw"

    invoke-direct {v4, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v4, raf:Ljava/io/RandomAccessFile;
    if-nez v6, :cond_49

    .line 256
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 260
    :goto_44
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    move-object v7, v6

    .line 269
    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    :goto_48
    return-object v7

    .line 258
    .restart local v4       #raf:Ljava/io/RandomAccessFile;,
    :cond_49
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v4, v1, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_4e} :catch_4f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4e} :catch_6d

    goto :goto_44

    .line 262
    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    :catch_4f
    move-exception v7

    move-object v0, v7

    .line 264
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v7, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save recovery passoword to "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordRecoveryFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 265
    goto :goto_48

    .line 266
    .end local v0       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_6d
    move-exception v7

    move-object v3, v7

    .line 268
    .local v3, ioe:Ljava/io/IOException;
    const-string v7, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save recovery passoword to "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordRecoveryFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 269
    goto :goto_48
.end method

.method public getActivePasswordQuality()I
    .registers 3

    .prologue
    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, activePasswordQuality:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_2e

    .line 670
    :cond_8
    :goto_8
    return v0

    .line 650
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 651
    const/high16 v0, 0x1

    goto :goto_8

    .line 655
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 656
    const/high16 v0, 0x2

    goto :goto_8

    .line 660
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 661
    const/high16 v0, 0x4

    goto :goto_8

    .line 665
    :sswitch_24
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 666
    const/high16 v0, 0x5

    goto :goto_8

    .line 648
    nop

    :sswitch_data_2e
    .sparse-switch
        0x10000 -> :sswitch_9
        0x20000 -> :sswitch_12
        0x40000 -> :sswitch_1b
        0x50000 -> :sswitch_24
    .end sparse-switch
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 145
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFailPasswordCount()I
    .registers 2

    .prologue
    .line 1277
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getFailPasswordCount()I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 4

    .prologue
    .line 1014
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 1200
    const-string v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1201
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1202
    .local v2, now:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_19

    :cond_17
    move-wide v4, v6

    .line 1205
    :goto_18
    return-wide v4

    :cond_19
    move-wide v4, v0

    goto :goto_18
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .registers 3

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1234
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1237
    :cond_11
    const/4 v1, 0x0

    .line 1239
    :goto_12
    return-object v1

    :cond_13
    move-object v1, v0

    goto :goto_12
.end method

.method public getPasswordLeftDaysToExpire()I
    .registers 16

    .prologue
    const/16 v14, 0x16d

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v12

    const/high16 v13, 0x2

    if-ge v12, v13, :cond_c

    move v12, v14

    .line 563
    :goto_b
    return v12

    .line 490
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordExpiration()I

    move-result v0

    .line 538
    .local v0, expire:I
    if-gtz v0, :cond_14

    move v12, v14

    .line 539
    goto :goto_b

    .line 541
    :cond_14
    new-instance v10, Ljava/io/File;

    sget-object v12, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v10, passwordFile:Ljava/io/File;
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 543
    .local v9, nowTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 544
    .local v7, now:J
    invoke-virtual {v9, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 546
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 547
    .local v5, modifiedTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 549
    .local v3, modified:J
    const-wide/16 v12, 0x0

    cmp-long v12, v3, v12

    if-nez v12, :cond_38

    move v12, v14

    .line 550
    goto :goto_b

    .line 552
    :cond_38
    invoke-virtual {v5, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 554
    iget-wide v12, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 555
    .local v2, m:I
    iget-wide v12, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v7, v8, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    .line 557
    .local v6, n:I
    sub-int v11, v6, v2

    .line 558
    .local v11, usedDays:I
    sub-int v1, v0, v11

    .line 560
    .local v1, leftDays:I
    if-gez v1, :cond_4e

    .line 561
    const/4 v1, 0x0

    :cond_4e
    move v12, v1

    .line 563
    goto :goto_b
.end method

.method public getRequestedAllowSimplePassword()Z
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowSimplePassword(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getRequestedInactivityTimeDeviceLock()J
    .registers 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestedMinimumPasswordComplexCharacters()I
    .registers 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMinimumPasswordComplexCharacters(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordExpiration()I
    .registers 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistory()I
    .registers 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 3

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordRecoveryEnabled()Z
    .registers 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getSecurityLockOn()Z
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSecurityLockOn()Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 6

    .prologue
    .line 1132
    const-string v2, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1133
    .local v0, mode:J
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_25

    const-wide/32 v2, 0x40000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    const-wide/32 v2, 0x50000

    cmp-long v2, v0, v2

    if-nez v2, :cond_25

    :cond_23
    const/4 v2, 0x1

    :goto_24
    return v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public isLockPatternEnabled()Z
    .registers 5

    .prologue
    const-wide/32 v2, 0x10000

    .line 1143
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isPasswordUnlock()I
    .registers 5

    .prologue
    .line 1352
    const/4 v1, 0x0

    .line 1354
    .local v1, isPasswordUnlok:I
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "passcode_unlock_code"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 1360
    :goto_e
    return v1

    .line 1356
    :catch_f
    move-exception v2

    move-object v0, v2

    .line 1357
    .local v0, ex:Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "oasis[reportFailedUnlockAttempt2]"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public isPatternEverChosen()Z
    .registers 2

    .prologue
    .line 639
    const-string v0, "lockscreen.patterneverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 2

    .prologue
    .line 1214
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1261
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    int-to-long v2, v5

    .line 1262
    .local v2, mode:J
    const-wide/32 v5, 0x10000

    cmp-long v5, v2, v5

    if-nez v5, :cond_3d

    move v1, v8

    .line 1263
    .local v1, isPattern:Z
    :goto_f
    const-wide/32 v5, 0x20000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_24

    const-wide/32 v5, 0x40000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_24

    const-wide/32 v5, 0x50000

    cmp-long v5, v2, v5

    if-nez v5, :cond_3f

    :cond_24
    move v0, v8

    .line 1266
    .local v0, isPassword:Z
    :goto_25
    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v5

    if-nez v5, :cond_3b

    :cond_33
    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_3b
    move v4, v8

    .line 1268
    .local v4, secure:Z
    :goto_3c
    return v4

    .end local v0       #isPassword:Z,
    .end local v1       #isPattern:Z,
    .end local v4       #secure:Z,
    :cond_3d
    move v1, v7

    .line 1262
    goto :goto_f

    .restart local v1       #isPattern:Z,
    :cond_3f
    move v0, v7

    .line 1263
    goto :goto_25

    .restart local v0       #isPassword:Z,
    :cond_41
    move v4, v7

    .line 1266
    goto :goto_3c
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    .line 1173
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .registers 2

    .prologue
    .line 1159
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 11
    .parameter "password"

    .prologue
    .line 1102
    if-nez p1, :cond_4

    .line 1103
    const/4 v6, 0x0

    .line 1115
    :goto_3
    return-object v6

    .line 1105
    :cond_4
    const/4 v0, 0x0

    .line 1106
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1108
    .local v2, hashed:[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1109
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1110
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1111
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_52

    move-result-object v2

    .end local v3       #md5:[B,
    .end local v4       #saltedPassword:[B,
    .end local v5       #sha1:[B,
    :goto_50
    move-object v6, v2

    .line 1115
    goto :goto_3

    .line 1112
    :catch_52
    move-exception v6

    move-object v1, v6

    .line 1113
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method public reportFailedPasswordAttempt()V
    .registers 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 331
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 335
    return-void
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 1332
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1334
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    :try_start_d
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    .line 1335
    const/4 v1, 0x1

    .line 1340
    :goto_14
    return v1

    .line 1337
    :catch_15
    move-exception v1

    .line 1340
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 27
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 893
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v10

    .line 896
    .local v10, hash:[B
    :try_start_4
    new-instance v15, Ljava/io/RandomAccessFile;

    sget-object v20, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v21, "rw"

    move-object v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .local v15, raf:Ljava/io/RandomAccessFile;
    const/16 v16, 0x0

    .line 900
    .local v16, rafHistory:Ljava/io/RandomAccessFile;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2b

    .line 902
    new-instance v16, Ljava/io/RandomAccessFile;

    .end local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    sget-object v20, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFileName:Ljava/lang/String;

    const-string/jumbo v21, "rw"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .restart local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    :cond_2b
    if-nez p1, :cond_6f

    .line 908
    const-wide/16 v20, 0x0

    move-object v0, v15

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 954
    :cond_35
    :goto_35
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    .line 957
    if-eqz v16, :cond_3d

    .line 959
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    .line 963
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    .line 964
    .local v7, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1bc

    .line 965
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v6

    .line 967
    .local v6, computedQuality:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordSimplicity(Ljava/lang/String;)Z

    move-result v12

    .line 968
    .local v12, isSimple:Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexity(Ljava/lang/String;)I

    move-result v5

    .line 970
    .local v5, computedComplexity:I
    const-string v20, "lockscreen.password_type"

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 971
    if-eqz v6, :cond_1a2

    .line 972
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move-object v0, v7

    move v1, v6

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(II)V

    .line 975
    invoke-virtual {v7, v5, v12}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateExtension(IZ)V

    .line 1005
    .end local v5       #computedComplexity:I,
    .end local v6       #computedQuality:I,
    .end local v7       #dpm:Landroid/app/admin/DevicePolicyManager;,
    .end local v12       #isSimple:Z,
    .end local v15       #raf:Ljava/io/RandomAccessFile;,
    .end local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    :goto_6e
    return-void

    .line 910
    .restart local v15       #raf:Ljava/io/RandomAccessFile;,
    .restart local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    :cond_6f
    const/16 v20, 0x0

    move-object v0, v10

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v15

    move-object v1, v10

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistory()I

    move-result v14

    .line 914
    .local v14, nHistoryCount:I
    if-eqz v16, :cond_35

    if-lez v14, :cond_35

    .line 916
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_c8

    .line 918
    const/16 v20, 0x0

    move-object v0, v10

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    move-object v1, v10

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 919
    sget-object v20, Lcom/android/internal/widget/LockPatternUtils;->HISTORY_DELIMITER:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_a9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_a9} :catch_aa
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a9} :catch_183

    goto :goto_35

    .line 998
    .end local v14       #nHistoryCount:I,
    .end local v15       #raf:Ljava/io/RandomAccessFile;,
    .end local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    :catch_aa
    move-exception v20

    move-object/from16 v8, v20

    .line 1000
    .local v8, fnfe:Ljava/io/FileNotFoundException;
    const-string v20, "LockPatternUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to save lock pattern to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 924
    .end local v8       #fnfe:Ljava/io/FileNotFoundException;,
    .restart local v14       #nHistoryCount:I,
    .restart local v15       #raf:Ljava/io/RandomAccessFile;,
    .restart local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    :cond_c8
    :try_start_c8
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 925
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 926
    sget-object v20, Lcom/android/internal/widget/LockPatternUtils;->HISTORY_DELIMITER:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 928
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    .line 929
    new-instance v16, Ljava/io/RandomAccessFile;

    .end local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    sget-object v20, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFileName:Ljava/lang/String;

    const-string/jumbo v21, "rw"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .restart local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object v4, v0

    .line 932
    .local v4, byteFileData:[B
    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    .line 933
    .local v9, got:I
    move-object v0, v4

    array-length v0, v0

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_35

    .line 934
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 935
    .local v17, strFileData:Ljava/lang/String;
    new-instance v19, Ljava/util/StringTokenizer;

    new-instance v20, Ljava/lang/String;

    sget-object v21, Lcom/android/internal/widget/LockPatternUtils;->HISTORY_DELIMITER:[B

    const-string v22, "UTF-8"

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    .local v19, tok:Ljava/util/StringTokenizer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v20

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_35

    .line 938
    const/16 v18, 0x0

    .line 939
    .local v18, strSub:Ljava/lang/String;
    new-instance v20, Ljava/lang/String;

    sget-object v21, Lcom/android/internal/widget/LockPatternUtils;->HISTORY_DELIMITER:[B

    const-string v22, "UTF-8"

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 940
    .local v13, nFirstDemiterIdx:I
    const/16 v20, -0x1

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_35

    .line 943
    const-wide/16 v20, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 944
    add-int/lit8 v20, v13, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 945
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_181
    .catch Ljava/io/FileNotFoundException; {:try_start_c8 .. :try_end_181} :catch_aa
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_181} :catch_183

    goto/16 :goto_35

    .line 1001
    .end local v4       #byteFileData:[B,
    .end local v9       #got:I,
    .end local v13       #nFirstDemiterIdx:I,
    .end local v14       #nHistoryCount:I,
    .end local v15       #raf:Ljava/io/RandomAccessFile;,
    .end local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    .end local v17       #strFileData:Ljava/lang/String;,
    .end local v18       #strSub:Ljava/lang/String;,
    .end local v19       #tok:Ljava/util/StringTokenizer;,
    :catch_183
    move-exception v20

    move-object/from16 v11, v20

    .line 1003
    .local v11, ioe:Ljava/io/IOException;
    const-string v20, "LockPatternUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to save lock pattern to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 981
    .end local v11       #ioe:Ljava/io/IOException;,
    .restart local v5       #computedComplexity:I,
    .restart local v6       #computedQuality:I,
    .restart local v7       #dpm:Landroid/app/admin/DevicePolicyManager;,
    .restart local v12       #isSimple:Z,
    .restart local v15       #raf:Ljava/io/RandomAccessFile;,
    .restart local v16       #rafHistory:Ljava/io/RandomAccessFile;,
    :cond_1a2
    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_1a6
    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(II)V

    .line 985
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateExtension(IZ)V

    goto/16 :goto_6e

    .line 990
    .end local v5       #computedComplexity:I,
    .end local v6       #computedQuality:I,
    .end local v12       #isSimple:Z,
    :cond_1bc
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(II)V

    .line 994
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateExtension(IZ)V
    :try_end_1d4
    .catch Ljava/io/FileNotFoundException; {:try_start_1a6 .. :try_end_1d4} :catch_aa
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1d4} :catch_183

    goto/16 :goto_6e
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v9, "Unable to save lock pattern to "

    const-string v8, "LockPatternUtils"

    .line 692
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 695
    .local v2, hash:[B
    :try_start_8
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .local v4, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_3a

    .line 698
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 702
    :goto_19
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 703
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 704
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_5d

    .line 705
    const-string v5, "lockscreen.patterneverchosen"

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 706
    const-string v5, "lockscreen.password_type"

    const-wide/32 v6, 0x10000

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 707
    const/high16 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(II)V

    .line 720
    .end local v0       #dpm:Landroid/app/admin/DevicePolicyManager;,
    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    :goto_39
    return-void

    .line 700
    .restart local v4       #raf:Ljava/io/RandomAccessFile;,
    :cond_3a
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_3f} :catch_40
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3f} :catch_63

    goto :goto_19

    .line 713
    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    :catch_40
    move-exception v5

    move-object v1, v5

    .line 715
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save lock pattern to "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 710
    .end local v1       #fnfe:Ljava/io/FileNotFoundException;,
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;,
    .restart local v4       #raf:Ljava/io/RandomAccessFile;,
    :cond_5d
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_5f
    invoke-virtual {v0, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(II)V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_62} :catch_40
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_39

    .line 716
    .end local v0       #dpm:Landroid/app/admin/DevicePolicyManager;,
    .end local v4       #raf:Ljava/io/RandomAccessFile;,
    :catch_63
    move-exception v5

    move-object v3, v5

    .line 718
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save lock pattern to "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public savedPasswordExists()Z
    .registers 2

    .prologue
    .line 629
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .registers 2

    .prologue
    .line 621
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1152
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1153
    return-void
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1190
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1191
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .parameter "locked"

    .prologue
    .line 1226
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1227
    return-void
.end method

.method public setSecurityLockOn(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->setSecurityLockOn(Z)V

    .line 216
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1180
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1181
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1166
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1167
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .registers 8
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 1310
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 1312
    .local v1, newState:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_19

    .line 1314
    const v3, 0x104029f

    .line 1315
    .local v3, textId:I
    const v2, 0x1080084

    .line 1316
    .local v2, phoneCallIcon:I
    invoke-virtual {p1, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1322
    .end local v2       #phoneCallIcon:I,
    :goto_15
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 1323
    return-void

    .line 1318
    .end local v3       #textId:I,
    :cond_19
    const v3, 0x104029e

    .line 1319
    .restart local v3       #textId:I,
    const v0, 0x108019e

    .line 1320
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_15
.end method
