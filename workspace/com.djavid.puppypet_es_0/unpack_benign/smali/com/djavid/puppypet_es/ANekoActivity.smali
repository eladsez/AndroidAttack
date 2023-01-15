.class public Lcom/djavid/puppypet_es/ANekoActivity;
.super Landroid/preference/PreferenceActivity;
.source "ANekoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;
    }
.end annotation


# instance fields
.field private myController:Lcom/ievyhrdnoniovof/AdController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/djavid/puppypet_es/ANekoActivity;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/djavid/puppypet_es/ANekoActivity;->startAnimationService()V

    return-void
.end method

.method private startAnimationService()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/djavid/puppypet_es/ANekoActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "motion.visible"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/djavid/puppypet_es/AnimationService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string v2, "com.djavid.puppypet_es.action.START"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 70
    invoke-virtual {p0, v1}, Lcom/djavid/puppypet_es/ANekoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v3, 0x7f040001

    invoke-virtual {p0, v3}, Lcom/djavid/puppypet_es/ANekoActivity;->addPreferencesFromResource(I)V

    .line 27
    invoke-virtual {p0}, Lcom/djavid/puppypet_es/ANekoActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "motion.enable"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 28
    new-instance v4, Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;-><init>(Lcom/djavid/puppypet_es/ANekoActivity;Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 29
    const-string v3, "button"

    invoke-virtual {p0, v3}, Lcom/djavid/puppypet_es/ANekoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 30
    .local v1, "button":Landroid/preference/Preference;
    new-instance v3, Lcom/djavid/puppypet_es/ANekoActivity$1;

    invoke-direct {v3, p0}, Lcom/djavid/puppypet_es/ANekoActivity$1;-><init>(Lcom/djavid/puppypet_es/ANekoActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 43
    const-string v3, "more_apps"

    invoke-virtual {p0, v3}, Lcom/djavid/puppypet_es/ANekoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 44
    .local v2, "more_apps":Landroid/preference/Preference;
    new-instance v3, Lcom/djavid/puppypet_es/ANekoActivity$2;

    invoke-direct {v3, p0}, Lcom/djavid/puppypet_es/ANekoActivity$2;-><init>(Lcom/djavid/puppypet_es/ANekoActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/djavid/puppypet_es/ANekoActivity;->startAnimationService()V

    .line 58
    invoke-static {p0}, Lcom/djavid/puppypet_es/RatingHelper;->app_launched(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/ievyhrdnoniovof/AdController;

    const-string v3, "502402363"

    invoke-direct {v0, p0, v3}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .local v0, "alert":Lcom/ievyhrdnoniovof/AdController;
    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->loadAd()V

    .line 61
    return-void
.end method
