.class public Lcom/broadcom/bt/preference/PreferenceUpdater;
.super Ljava/lang/Object;
.source "PreferenceUpdater.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateSummaryWithEditText(Landroid/preference/EditTextPreference;)V
    .registers 2
    .parameter "pref"

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
