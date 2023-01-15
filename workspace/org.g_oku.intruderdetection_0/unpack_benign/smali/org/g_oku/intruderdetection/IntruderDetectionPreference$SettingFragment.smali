.class public Lorg/g_oku/intruderdetection/IntruderDetectionPreference$SettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "IntruderDetectionPreference.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/g_oku/intruderdetection/IntruderDetectionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/IntruderDetectionPreference$SettingFragment;->addPreferencesFromResource(I)V

    .line 33
    return-void
.end method
