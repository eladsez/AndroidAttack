.class public Linfo/kazubu/anditalk/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# static fields
.field private static final OPT_AUTOLINK:Ljava/lang/String; = "autolink"

.field private static final OPT_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final OPT_PORT:Ljava/lang/String; = "port"

.field private static final OPT_SERVER:Ljava/lang/String; = "server"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getEnableAutolink(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autolink"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getNickname(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "nickname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPort(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "port"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v5, 0x7f040000

    invoke-virtual {p0, v5}, Linfo/kazubu/anditalk/Settings;->addPreferencesFromResource(I)V

    .line 25
    const-string v5, "server"

    invoke-virtual {p0, v5}, Linfo/kazubu/anditalk/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    .line 26
    .local v4, "server":Landroid/preference/EditTextPreference;
    const-string v5, "port"

    invoke-virtual {p0, v5}, Linfo/kazubu/anditalk/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 27
    .local v3, "port":Landroid/preference/EditTextPreference;
    const-string v5, "nickname"

    invoke-virtual {p0, v5}, Linfo/kazubu/anditalk/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 28
    .local v2, "nickname":Landroid/preference/EditTextPreference;
    const-string v5, "autolink"

    invoke-virtual {p0, v5}, Linfo/kazubu/anditalk/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 30
    .local v1, "autolink":Landroid/preference/CheckBoxPreference;
    new-instance v0, Linfo/kazubu/anditalk/Settings$1;

    invoke-direct {v0, p0}, Linfo/kazubu/anditalk/Settings$1;-><init>(Linfo/kazubu/anditalk/Settings;)V

    .line 45
    .local v0, "EditTextPreferenceChangeListener":Landroid/preference/Preference$OnPreferenceChangeListener;
    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v4, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    invoke-virtual {v3, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    const-string v5, "Enable AutoLink"

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 54
    const-string v5, "Disable AutoLink"

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/EditTextPreference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/EditTextPreference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v0, "Selected"

    .line 65
    .local v0, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v1, 0x1

    return v1

    .line 62
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    const-string v0, "Unselected"

    .restart local v0    # "summary":Ljava/lang/String;
    goto :goto_0
.end method
