.class public Lanywheresoftware/b4a/objects/streams/File;
.super Ljava/lang/Object;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;,
        Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;,
        Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;,
        Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    }
.end annotation


# static fields
.field public static final ContentDir:Ljava/lang/String; = "ContentDir"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field

.field private static final assetsDir:Ljava/lang/String; = "AssetsDir"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "DirSource"    # Ljava/lang/String;
    .param p1, "FileSource"    # Ljava/lang/String;
    .param p2, "DirTarget"    # Ljava/lang/String;
    .param p3, "FileTarget"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {p2, p3}, Lanywheresoftware/b4a/objects/streams/File;->Delete(Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 324
    .local v0, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {p2, p3, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 325
    .local v1, "out":Ljava/io/OutputStream;
    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->Copy2(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 327
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 328
    return-void
.end method

.method public static Copy2(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "In"    # Ljava/io/InputStream;
    .param p1, "Out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 335
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 336
    .local v1, "count":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 340
    return-void

    .line 337
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static Delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static Exists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "AssetsDir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 92
    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static GetText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 207
    .local v0, "in":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 208
    .local v1, "tr":Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "Dir":Ljava/lang/String;
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize(Ljava/io/InputStream;)V

    .line 209
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadAll()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static IsDirectory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public static LastModified(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ListFiles(Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 6
    .param p0, "Dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v2, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 151
    .local v2, "list":Lanywheresoftware/b4a/objects/collections/List;
    const-string v3, "AssetsDir"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " is not a folder."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "f":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 157
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 162
    .end local v0    # "f":[Ljava/lang/String;
    .end local v1    # "folder":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 160
    :cond_2
    sget-object v3, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static MakeDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "Parent"    # Ljava/lang/String;
    .param p1, "Dir"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 111
    return-void
.end method

.method public static OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    .locals 4
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;-><init>()V

    .line 190
    .local v0, "is":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    const-string v1, "AssetsDir"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->setObject(Ljava/lang/Object;)V

    .line 199
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const-string v1, "ContentDir"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :cond_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 198
    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 197
    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    .locals 4
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "Append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;-><init>()V

    .line 348
    .local v0, "o":Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 347
    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->setObject(Ljava/lang/Object;)V

    .line 349
    return-object v0
.end method

.method public static ReadList(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 3
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 222
    .local v0, "in":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 223
    .local v1, "tr":Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "Dir":Ljava/lang/String;
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize(Ljava/io/InputStream;)V

    .line 224
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadList()Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v2

    return-object v2
.end method

.method public static ReadMap(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/Map;
    .locals 1
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lanywheresoftware/b4a/objects/streams/File;->ReadMap2(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/objects/collections/Map;)Lanywheresoftware/b4a/objects/collections/Map;

    move-result-object v0

    return-object v0
.end method

.method public static ReadMap2(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/objects/collections/Map;)Lanywheresoftware/b4a/objects/collections/Map;
    .locals 6
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "Map"    # Lanywheresoftware/b4a/objects/collections/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    .line 303
    .local v1, "in":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 304
    .local v2, "p":Ljava/util/Properties;
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "Dir":Ljava/lang/String;
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 305
    if-nez p2, :cond_0

    .line 306
    new-instance p2, Lanywheresoftware/b4a/objects/collections/Map;

    .end local p2    # "Map":Lanywheresoftware/b4a/objects/collections/Map;
    invoke-direct {p2}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    .line 308
    .restart local p2    # "Map":Lanywheresoftware/b4a/objects/collections/Map;
    :cond_0
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/Map;->IsInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 309
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 311
    :cond_1
    invoke-virtual {v2}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 314
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 315
    return-object p2

    .line 311
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static ReadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 260
    .local v0, "in":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v2, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 261
    .local v2, "tr":Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "Dir":Ljava/lang/String;
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v2, p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize(Ljava/io/InputStream;)V

    .line 262
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadAll()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "res":Ljava/lang/String;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 264
    return-object v1
.end method

.method public static Size(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static WriteList(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 3
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "List"    # Lanywheresoftware/b4a/objects/collections/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v0

    .line 235
    .local v0, "out":Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;-><init>()V

    .line 236
    .local v1, "tw":Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "Dir":Ljava/lang/String;
    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Initialize(Ljava/io/OutputStream;)V

    .line 237
    invoke-virtual {v1, p2}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->WriteList(Lanywheresoftware/b4a/objects/collections/List;)V

    .line 238
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Close()V

    .line 239
    return-void
.end method

.method public static WriteMap(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/objects/collections/Map;)V
    .locals 7
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "Map"    # Lanywheresoftware/b4a/objects/collections/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v4, 0x0

    invoke-static {p0, p1, v4}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v2

    .line 274
    .local v2, "out":Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 275
    .local v3, "p":Ljava/util/Properties;
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 276
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 279
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "Dir":Ljava/lang/String;
    check-cast p0, Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->Close()V

    .line 281
    return-void

    .line 276
    .restart local p0    # "Dir":Ljava/lang/String;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "Dir"    # Ljava/lang/String;
    .param p1, "FileName"    # Ljava/lang/String;
    .param p2, "Text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v0

    .line 247
    .local v0, "out":Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;-><init>()V

    .line 248
    .local v1, "tw":Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "Dir":Ljava/lang/String;
    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Initialize(Ljava/io/OutputStream;)V

    .line 249
    invoke-virtual {v1, p2}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Close()V

    .line 251
    return-void
.end method

.method public static getDirAssets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "AssetsDir"

    return-object v0
.end method

.method public static getDirDefaultExternal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Android/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDirInternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirInternalCache()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 57
    .local v0, "cd":Ljava/io/File;
    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirInternal()Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDirRootExternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalReadable()Z
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    const/4 v1, 0x1

    .line 182
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalWritable()Z
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x1

    .line 172
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
