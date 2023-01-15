.class Lorg/g_oku/intruderdetection/MyGalleryActivity$8;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;->alertNotifyDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$8;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 286
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$8;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-virtual {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, "sharePref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "displayFlag"

    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$8;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    iget-boolean v2, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDisplayFlag:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    return-void

    .line 288
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
