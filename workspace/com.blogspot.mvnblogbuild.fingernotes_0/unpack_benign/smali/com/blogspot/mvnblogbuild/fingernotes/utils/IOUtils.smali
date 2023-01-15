.class public Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static INTERNAL_STORAGE_FLAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "internal"

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->INTERNAL_STORAGE_FLAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 185
    .local v1, "isDeleted":Z
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageReadOnly()Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/notes/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 192
    const/4 v1, 0x1

    .line 196
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 198
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 199
    .restart local v0    # "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 201
    const/4 v1, 0x1

    .line 204
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return v1
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 10

    .prologue
    .line 20
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/etc/vold.fstab"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 22
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 24
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 27
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    if-eqz v5, :cond_0

    .line 34
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 36
    .local v7, "s":Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_3

    move-object v0, v1

    .line 51
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 52
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 54
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 62
    :cond_2
    if-nez v6, :cond_9

    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v4, v5

    .line 65
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_2
    return-object v9

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 37
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "s":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v9, "dev_mount"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 38
    const-string v9, "\\s"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "tokens":[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v6, v8, v9

    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v0, v1

    .line 41
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 44
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v8    # "tokens":[Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    goto :goto_0

    .line 47
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v9

    .line 51
    if-eqz v5, :cond_5

    .line 52
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 54
    :cond_5
    if-eqz v0, :cond_6

    .line 55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    move-object v4, v5

    .line 48
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 57
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 49
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_0
    move-exception v9

    .line 51
    :goto_4
    if-eqz v5, :cond_7

    .line 52
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 54
    :cond_7
    if-eqz v0, :cond_8

    .line 55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 60
    :cond_8
    throw v9

    .line 57
    :catch_3
    move-exception v2

    .line 58
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 57
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .line 58
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_9
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v9, v6

    .line 65
    goto :goto_2

    .line 49
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 47
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getfilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageReadOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/notes/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 178
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 173
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 174
    .restart local v0    # "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 175
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->INTERNAL_STORAGE_FLAG:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 3

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "state":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "extStorageState":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const/4 v1, 0x1

    .line 75
    :cond_0
    return v1
.end method

.method public static isExternalStorageReadOnly()Z
    .locals 3

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "state":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "extStorageState":Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 84
    :cond_0
    return v1
.end method

.method public static loadBinaryData(Landroid/app/Activity;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 138
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageReadOnly()Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/notes/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "path":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    move-object v1, v2

    .line 150
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 158
    :cond_1
    :goto_1
    return-object v1

    .line 154
    :catch_0
    move-exception v5

    goto :goto_1

    .line 145
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static saveBinaryData(Landroid/app/Activity;Ljava/lang/String;[B)Z
    .locals 9
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 88
    const/4 v3, 0x0

    .line 90
    .local v3, "isSaved":Z
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    move-result-object v0

    .line 92
    .local v0, "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    const-string v7, "PREFER_STORAGE"

    invoke-virtual {v0, v7}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "E"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->isExternalStorageReadOnly()Z

    move-result v7

    if-nez v7, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/notes/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "path":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v6, "pathDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 105
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    const/4 v3, 0x1

    .line 131
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "pathDir":Ljava/io/File;
    :goto_0
    return v3

    .line 121
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v7}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 122
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 123
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    const/4 v3, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 125
    :catch_1
    move-exception v7

    goto :goto_0

    .line 109
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_0

    .line 107
    :catch_3
    move-exception v7

    goto :goto_0
.end method
