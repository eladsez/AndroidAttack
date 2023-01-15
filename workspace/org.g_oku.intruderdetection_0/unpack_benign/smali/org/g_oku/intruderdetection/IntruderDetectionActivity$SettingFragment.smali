.class public Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "IntruderDetectionActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/g_oku/intruderdetection/IntruderDetectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$0(Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;->startGallery()V

    return-void
.end method

.method private startGallery()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;->addPreferencesFromResource(I)V

    .line 134
    const-string v2, "gallery"

    invoke-virtual {p0, v2}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 135
    .local v0, "galleryPref":Landroid/preference/PreferenceScreen;
    new-instance v2, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment$1;

    invoke-direct {v2, p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment$1;-><init>(Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    const-string v2, "switch"

    invoke-virtual {p0, v2}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    .line 147
    .local v1, "switchPref":Lorg/jraf/android/backport/switchwidget/SwitchPreference;
    new-instance v2, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment$2;

    invoke-direct {v2, p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment$2;-><init>(Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;)V

    invoke-virtual {v1, v2}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    return-void
.end method
