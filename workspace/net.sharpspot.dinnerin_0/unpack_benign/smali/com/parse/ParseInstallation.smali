.class public Lcom/parse/ParseInstallation;
.super Lcom/parse/ParseObject;
.source "ParseInstallation.java"


# static fields
.field static final CLASS_NAME:Ljava/lang/String; = "_Installation"

.field private static final STORAGE_LOCATION:Ljava/lang/String; = "currentInstallation"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseInstallation"

.field static currentInstallation:Lcom/parse/ParseInstallation;

.field private static final readonlyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deviceType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "installationId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 24
    const-string v2, "deviceToken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "appVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "appName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "parseVersion"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseInstallation;->readonlyFields:Ljava/util/List;

    .line 15
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseInstallation;-><init>(Z)V

    .line 38
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "isPointer"    # Z

    .prologue
    .line 27
    const-string v0, "_Installation"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .line 28
    if-nez p1, :cond_0

    .line 29
    const-string v0, "deviceType"

    const-string v1, "android"

    invoke-super {p0, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v0, "installationId"

    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/parse/ParseInstallation;)V
    .locals 0

    .prologue
    .line 235
    invoke-static {p0}, Lcom/parse/ParseInstallation;->maybeFlushToDisk(Lcom/parse/ParseInstallation;)V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/ParseInstallation;Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->fetchAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized clearCurrentInstallationFromDisk(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const-class v1, Lcom/parse/ParseInstallation;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 249
    const-string v0, "currentInstallation"

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit v1

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCurrentInstallation()Lcom/parse/ParseInstallation;
    .locals 4

    .prologue
    .line 41
    const-class v2, Lcom/parse/ParseInstallation;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    monitor-exit v2

    return-object v1

    .line 45
    :cond_0
    :try_start_1
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v3, "currentInstallation"

    invoke-static {v1, v3}, Lcom/parse/ParseInstallation;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    .line 46
    .local v0, "installation":Lcom/parse/ParseObject;
    if-nez v0, :cond_1

    .line 47
    new-instance v1, Lcom/parse/ParseInstallation;

    invoke-direct {v1}, Lcom/parse/ParseInstallation;-><init>()V

    sput-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 52
    .end local v0    # "installation":Lcom/parse/ParseObject;
    :goto_1
    sget-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    goto :goto_0

    .line 49
    .restart local v0    # "installation":Lcom/parse/ParseObject;
    :cond_1
    check-cast v0, Lcom/parse/ParseInstallation;

    .end local v0    # "installation":Lcom/parse/ParseObject;
    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 50
    const-string v1, "com.parse.ParseInstallation"

    const-string v3, "Successfully deserialized Installation object"

    invoke-static {v1, v3}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getOrCreateCurrentInstallationId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 73
    const-class v7, Lcom/parse/ParseInstallation;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v6, :cond_1

    .line 74
    sget-object v6, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    invoke-virtual {v6}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 95
    .local v4, "installationIdFile":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v7

    return-object v5

    .line 77
    .end local v4    # "installationIdFile":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "installationId"

    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .restart local v4    # "installationIdFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 80
    .local v2, "f":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 81
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "uuid":Ljava/lang/String;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .local v3, "f":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 97
    if-eqz v3, :cond_0

    .line 99
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v6

    goto :goto_0

    .line 88
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .end local v5    # "uuid":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_5
    const-string v6, "com.parse.ParseInstallation"

    const-string v8, "Reading legacy file for installation ID"

    invoke-static {v6, v8}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v3, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v6, v8

    new-array v0, v6, [B

    .line 91
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 92
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 97
    if-eqz v3, :cond_0

    .line 99
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 100
    :catch_1
    move-exception v6

    goto :goto_0

    .line 94
    .end local v0    # "bytes":[B
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    .line 97
    if-eqz v2, :cond_0

    .line 99
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 100
    :catch_3
    move-exception v6

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 97
    :goto_2
    if-eqz v2, :cond_3

    .line 99
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 105
    :cond_3
    :goto_3
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 73
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 100
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v8

    goto :goto_3

    .line 96
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 94
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/parse/ParseQuery;

    const-string v1, "_Installation"

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized maybeFlushToDisk(Lcom/parse/ParseInstallation;)V
    .locals 3
    .param p0, "installation"    # Lcom/parse/ParseInstallation;

    .prologue
    .line 236
    const-class v1, Lcom/parse/ParseInstallation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-ne v0, p0, :cond_0

    .line 237
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "currentInstallation"

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseInstallation;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    monitor-exit v1

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateTimezone()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "zone":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "timeZone"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const-string v1, "timeZone"

    invoke-super {p0, v1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    :cond_1
    return-void
.end method

.method private updateVersionInfo()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 211
    iget-object v9, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v9

    .line 213
    :try_start_0
    sget-object v8, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "packageName":Ljava/lang/String;
    sget-object v8, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 215
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 216
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 217
    .local v1, "appVersion":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "appName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v8, "appName"

    invoke-virtual {p0, v8}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 220
    const-string v8, "appName"

    invoke-super {p0, v8, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    :cond_0
    if-eqz v1, :cond_3

    move v8, v7

    :goto_0
    const-string v10, "appVersion"

    invoke-virtual {p0, v10}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_1
    and-int/2addr v6, v8

    if-eqz v6, :cond_1

    .line 223
    const-string v6, "appVersion"

    invoke-super {p0, v6, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_2
    :try_start_1
    const-string v6, "1.2.2"

    const-string v7, "parseVersion"

    invoke-virtual {p0, v7}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 230
    const-string v6, "parseVersion"

    const-string v7, "1.2.2"

    invoke-super {p0, v6, v7}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_2
    monitor-exit v9

    .line 233
    return-void

    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v1    # "appVersion":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    move v8, v6

    .line 222
    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1

    .line 225
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "com.parse.ParseInstallation"

    const-string v7, "Cannot load package info; will not be saved to installation"

    invoke-static {v6, v7}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method


# virtual methods
.method checkKeyIsMutable(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->readonlyFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot change "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 121
    const-string v3, " property of an installation object."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    return-void
.end method

.method fetchAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation;->saveAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    .line 187
    .local v0, "result":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/parse/ParseInstallation$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseInstallation$2;-><init>(Lcom/parse/ParseInstallation;Lcom/parse/Task;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 191
    new-instance v3, Lcom/parse/ParseInstallation$3;

    invoke-direct {v3, p0}, Lcom/parse/ParseInstallation$3;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v1, v3}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 187
    monitor-exit v2

    return-object v1

    .line 185
    .end local v0    # "result":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v0

    .restart local v0    # "result":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 177
    .end local v0    # "result":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    monitor-exit v1

    .line 132
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 136
    monitor-exit v1

    .line 140
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method saveAsync(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateTimezone()V

    .line 146
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateVersionInfo()V

    .line 150
    const-string v0, "installationId"

    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v0, "deviceType"

    const-string v2, "android"

    invoke-super {p0, v0, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->saveAsync(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseInstallation$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseInstallation$1;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveEventually(Lcom/parse/SaveCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateTimezone()V

    .line 165
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateVersionInfo()V

    .line 169
    const-string v0, "installationId"

    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v0, "deviceType"

    const-string v2, "android"

    invoke-super {p0, v0, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->saveEventually(Lcom/parse/SaveCallback;)V

    .line 163
    monitor-exit v1

    .line 173
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
