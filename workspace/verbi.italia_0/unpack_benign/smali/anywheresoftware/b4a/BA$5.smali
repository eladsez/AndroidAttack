.class Lanywheresoftware/b4a/BA$5;
.super Ljava/lang/Object;
.source "BA.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/BA;->__b([BI)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "UTF8"

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v4

    if-nez v4, :cond_1

    .line 696
    new-array v4, v10, [[B

    invoke-static {v4}, Lanywheresoftware/b4a/BA;->access$2([[B)V

    .line 697
    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v4

    sget-object v5, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    const-string v6, "UTF8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v8

    .line 698
    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v4

    sget-object v5, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v6, "UTF8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v9

    .line 699
    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v4

    aget-object v4, v4, v9

    array-length v4, v4

    if-nez v4, :cond_0

    .line 700
    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v4

    const-string v5, "jsdkfh"

    const-string v6, "UTF8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v9

    .line 701
    :cond_0
    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v4

    new-array v5, v9, [B

    sget-object v6, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    aput-object v5, v4, v11

    .line 705
    :cond_1
    div-int/lit8 v4, p1, 0x7

    add-int/lit16 v3, v4, 0x4d2

    .line 706
    .local v3, "value":I
    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v10, [B

    .line 707
    ushr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 708
    ushr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    .line 709
    ushr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v11

    const/4 v7, 0x3

    .line 710
    int-to-byte v8, v3

    aput-byte v8, v6, v7

    .line 706
    aput-object v6, v4, v5

    .line 713
    const/4 v0, 0x0

    .local v0, "__b":I
    :goto_0
    if-lt v0, v10, :cond_2

    .line 1
    return-void

    .line 714
    :cond_2
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    :try_start_0
    array-length v4, p2

    if-lt v1, v4, :cond_3

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_3
    aget-byte v4, p2, v1

    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {}, Lanywheresoftware/b4a/BA;->access$1()[[B

    move-result-object v6

    aget-object v6, v6, v0

    array-length v6, v6

    rem-int v6, v1, v6

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 719
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 720
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method
