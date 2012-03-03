.class public Lcom/lge/provider/Andy_AdditionalContacts;
.super Ljava/lang/Object;
.source "Andy_AdditionalContacts.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_Intents;,
        Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;,
        Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotos;,
        Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotosColumns;,
        Lcom/lge/provider/Andy_AdditionalContacts$DeleteContacts;,
        Lcom/lge/provider/Andy_AdditionalContacts$DeleteContactsColumns;,
        Lcom/lge/provider/Andy_AdditionalContacts$SnsIds;,
        Lcom/lge/provider/Andy_AdditionalContacts$SnsIdsColumns;,
        Lcom/lge/provider/Andy_AdditionalContacts$SpeedDials;,
        Lcom/lge/provider/Andy_AdditionalContacts$SpeedDialsColumns;,
        Lcom/lge/provider/Andy_AdditionalContacts$GroupPhotos;,
        Lcom/lge/provider/Andy_AdditionalContacts$GroupPhotosColumns;,
        Lcom/lge/provider/Andy_AdditionalContacts$Stuffs;,
        Lcom/lge/provider/Andy_AdditionalContacts$StuffsColumns;,
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_Organizations;,
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_ContactMethods;,
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_GroupMembership;,
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_PhonesColumns;,
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;,
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_GroupsColumns;,
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;,
        Lcom/lge/provider/Andy_AdditionalContacts$Andy_PeopleColumns;
    }
.end annotation


# static fields
.field public static final KIND_BIRTHDAY:I = 0x3f0

.field public static final KIND_EMAIL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_IM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_NICKNAME:I = 0x3f2

.field public static final KIND_NOTE:I = 0x3ef

.field public static final KIND_ORGANIZATION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_PHONE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_POSTAL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_SNSID:I = 0x3f1

.field public static final KIND_WEBSITE:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "Andy_Contacts"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1423
    return-void
.end method
