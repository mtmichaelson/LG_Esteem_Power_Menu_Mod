.class Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;
.super Ljava/lang/Object;
.source "EriManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EriPrmpt"
.end annotation


# static fields
.field public static final ERI_CALL_PROMPT_TABLE_SIZE:I = 0x3



# instance fields
.field public mAmountOfTextData:I

.field public mCallPromptId:I

.field public mCharacterEncodingType:I

.field public mReservedBits1:I

.field public mReservedBits2:I

.field public mReservedBits3:I

.field public mTextData:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/EriManager;



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/EriManager;IIIIIILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter "reservedBits1"
    .parameter "callPromptId"
    .parameter "reservedBits2"
    .parameter "reservedBits3"
    .parameter "characterEncodingType"
    .parameter "amountOfTextData"
    .parameter "textData"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->this$0:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mReservedBits1:I

    .line 135
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mCallPromptId:I

    .line 136
    iput p4, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mReservedBits2:I

    .line 137
    iput p5, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mReservedBits3:I

    .line 138
    iput p6, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mCharacterEncodingType:I

    .line 139
    iput p7, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mAmountOfTextData:I

    .line 140
    iput-object p8, p0, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;->mTextData:Ljava/lang/String;

    .line 141
    return-void
.end method
