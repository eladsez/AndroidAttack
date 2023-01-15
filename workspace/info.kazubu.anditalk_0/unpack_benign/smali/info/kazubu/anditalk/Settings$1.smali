.class Linfo/kazubu/anditalk/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/kazubu/anditalk/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/kazubu/anditalk/Settings;


# direct methods
.method constructor <init>(Linfo/kazubu/anditalk/Settings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Linfo/kazubu/anditalk/Settings$1;->this$0:Linfo/kazubu/anditalk/Settings;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 33
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 34
    .local v1, "summary":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 35
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 39
    :cond_0
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 41
    const/4 v2, 0x1

    return v2
.end method
