.class public final Lcom/lge/provider/Andy_AdditionalContacts$Andy_Organizations;
.super Ljava/lang/Object;
.source "Andy_AdditionalContacts.java"


# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$OrganizationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Andy_Organizations"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/organizations"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/organizations"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
