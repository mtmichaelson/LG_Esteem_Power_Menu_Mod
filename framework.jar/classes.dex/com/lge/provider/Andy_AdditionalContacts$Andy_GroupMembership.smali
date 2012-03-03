.class public final Lcom/lge/provider/Andy_AdditionalContacts$Andy_GroupMembership;
.super Ljava/lang/Object;
.source "Andy_AdditionalContacts.java"


# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/lge/provider/Andy_AdditionalContacts$Andy_GroupsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Andy_GroupMembership"
.end annotation


# static fields
.field public static final ISPRIMARY:Ljava/lang/String; = "isprimary"

.field public static final MEMBER_POSITION:Ljava/lang/String; = "member_position"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
