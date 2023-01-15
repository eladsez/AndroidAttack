.class Lorg/g_oku/intruderdetection/IntruderDetectionActivity$2;
.super Ljava/lang/Object;
.source "IntruderDetectionActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    iput-object p1, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$2;->this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$2;->this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;

    invoke-static {v0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->access$0(Lorg/g_oku/intruderdetection/IntruderDetectionActivity;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method
