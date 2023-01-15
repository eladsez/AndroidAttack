.class public Lorg/g_oku/intruderdetection/IntruderDetectionActivity;
.super Landroid/preference/PreferenceActivity;
.source "IntruderDetectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "IntruderDetection"


# instance fields
.field private mBeadExit:Ljp/beyond/sdk/Bead;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->mBeadExit:Ljp/beyond/sdk/Bead;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lorg/g_oku/intruderdetection/IntruderDetectionActivity;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->startGalleryPreGB()V

    return-void
.end method

.method private checkFrontCamera()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 109
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 118
    const/4 v3, 0x0

    :cond_0
    return v3

    .line 110
    :cond_1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 111
    .local v0, "caminfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 113
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v4, v3, :cond_0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static deleteCache(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 282
    if-nez p0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v3

    .line 285
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_3

    .line 294
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_0

    .line 288
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_3
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->deleteCache(Ljava/io/File;)Z

    move-result v2

    .line 289
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isDetect(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private startGalleryPreGB()V
    .locals 9

    .prologue
    .line 184
    const/4 v5, 0x0

    .line 187
    .local v5, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v5    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    :try_start_1
    const-string v7, "com.android.gallery3d"

    const-string v8, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v6}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-object v5, v6

    .line 230
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    move-object v6, v5

    .line 195
    .end local v5    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_1
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_8

    .line 196
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :try_start_3
    const-string v7, "com.cooliris.media"

    const-string v8, "com.cooliris.media.Gallery"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v5}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 199
    :catch_1
    move-exception v1

    move-object v6, v5

    .line 203
    .end local v5    # "intent":Landroid/content/Intent;
    .local v1, "e1":Landroid/content/ActivityNotFoundException;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_2
    :try_start_4
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    .line 204
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :try_start_5
    const-string v7, "content://media/external/images/media"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v5}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 207
    :catch_2
    move-exception v2

    move-object v6, v5

    .line 210
    .end local v5    # "intent":Landroid/content/Intent;
    .local v2, "e2":Landroid/content/ActivityNotFoundException;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_3
    :try_start_6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 211
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :try_start_7
    const-string v7, "com.htc.album"

    const-string v8, "com.htc.album.AlbumTabSwitchActivity"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v5}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 214
    :catch_3
    move-exception v3

    move-object v6, v5

    .line 217
    .end local v5    # "intent":Landroid/content/Intent;
    .local v3, "e3":Landroid/content/ActivityNotFoundException;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_4
    :try_start_8
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    .line 218
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :try_start_9
    const-string v7, "com.htc.album"

    const-string v8, "com.htc.album.AlbumMain.ActivityMainDropList"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v5}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 221
    :catch_4
    move-exception v4

    .line 222
    .local v4, "e4":Landroid/content/ActivityNotFoundException;
    :goto_5
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.PICK"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v7, "image/*"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v5}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 221
    .end local v4    # "e4":Landroid/content/ActivityNotFoundException;
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    goto :goto_5

    .line 214
    .end local v3    # "e3":Landroid/content/ActivityNotFoundException;
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    :catch_6
    move-exception v3

    goto :goto_4

    .line 207
    .end local v2    # "e2":Landroid/content/ActivityNotFoundException;
    :catch_7
    move-exception v2

    goto :goto_3

    .line 199
    .end local v1    # "e1":Landroid/content/ActivityNotFoundException;
    :catch_8
    move-exception v1

    goto :goto_2

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->mBeadExit:Ljp/beyond/sdk/Bead;

    invoke-virtual {v0, p0}, Ljp/beyond/sdk/Bead;->showAd(Landroid/app/Activity;)Z

    .line 262
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->checkFrontCamera()Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08000a

    invoke-virtual {p0, v4}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    const v4, 0x7f08000b

    invoke-virtual {p0, v4}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 51
    const v4, 0x7f08000c

    new-instance v5, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$1;

    invoke-direct {v5, p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$1;-><init>(Lorg/g_oku/intruderdetection/IntruderDetectionActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 58
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 62
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 63
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->addPreferencesFromResource(I)V

    .line 64
    const-string v4, "gallery"

    invoke-virtual {p0, v4}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 65
    .local v2, "galleryPref":Landroid/preference/PreferenceScreen;
    new-instance v4, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$2;

    invoke-direct {v4, p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$2;-><init>(Lorg/g_oku/intruderdetection/IntruderDetectionActivity;)V

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string v4, "switch"

    invoke-virtual {p0, v4}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    .line 77
    .local v3, "switchPref":Lorg/jraf/android/backport/switchwidget/SwitchPreference;
    new-instance v4, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$3;

    invoke-direct {v4, p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$3;-><init>(Lorg/g_oku/intruderdetection/IntruderDetectionActivity;)V

    invoke-virtual {v3, v4}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    .end local v2    # "galleryPref":Landroid/preference/PreferenceScreen;
    .end local v3    # "switchPref":Lorg/jraf/android/backport/switchwidget/SwitchPreference;
    :goto_1
    const-string v4, "df90e2a0ddfc86515ca26e04e660a066b57d3444454d80e1"

    sget-object v5, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    invoke-static {v4, v5}, Ljp/beyond/sdk/Bead;->createExitInstance(Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;)Ljp/beyond/sdk/Bead;

    move-result-object v4

    iput-object v4, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->mBeadExit:Ljp/beyond/sdk/Bead;

    .line 104
    iget-object v4, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->mBeadExit:Ljp/beyond/sdk/Bead;

    invoke-virtual {v4, p0}, Ljp/beyond/sdk/Bead;->requestAd(Landroid/app/Activity;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    new-instance v6, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;

    invoke-direct {v6}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$SettingFragment;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 238
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 274
    iget-object v0, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->mBeadExit:Ljp/beyond/sdk/Bead;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->mBeadExit:Ljp/beyond/sdk/Bead;

    invoke-virtual {v0}, Ljp/beyond/sdk/Bead;->endAd()V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->deleteCache(Ljava/io/File;)Z

    .line 279
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 254
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 249
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/g_oku/intruderdetection/IntruderDetectionPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    const/4 v1, 0x1

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x7f0c000d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 267
    return-void
.end method
