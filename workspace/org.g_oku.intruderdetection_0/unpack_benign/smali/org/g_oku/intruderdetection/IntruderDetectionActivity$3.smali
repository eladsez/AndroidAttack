.class Lorg/g_oku/intruderdetection/IntruderDetectionActivity$3;
.super Ljava/lang/Object;
.source "IntruderDetectionActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/IntruderDetectionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$3;->this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$3;->this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;

    const-class v2, Lorg/g_oku/intruderdetection/WatchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$3;->this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;

    invoke-virtual {v1, v0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->stopService(Landroid/content/Intent;)Z

    .line 94
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
