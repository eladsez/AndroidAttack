.class public Lcom/ievyhrdnoniovof/AdAssetController;
.super Lcom/ievyhrdnoniovof/AdController;


# static fields
.field private static final synthetic k:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ievyhrdnoniovof/AdAssetController;->k:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/ievyhrdnoniovof/AdController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic A(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v0, "E"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private synthetic D(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private synthetic I(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "arg0":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private synthetic L(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdAssetController;->W:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 4
    .param p0, "arg0"    # Ljava/io/File;

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdAssetController;->deleteDirectory(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdAssetController;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdAssetController;->W:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0007\u000e"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "yt"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic l(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 7
    .param p1, "arg0"    # Ljava/security/MessageDigest;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    new-array v4, v1, [C

    move v1, v0

    move v2, v0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    sget-object v0, Lcom/ievyhrdnoniovof/AdAssetController;->k:[C

    add-int/lit8 v5, v1, 0x1

    aget-byte v6, v3, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v0, v0, v6

    aput-char v0, v4, v1

    sget-object v0, Lcom/ievyhrdnoniovof/AdAssetController;->k:[C

    add-int/lit8 v1, v5, 0x1

    aget-byte v6, v3, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    add-int/lit8 v0, v2, 0x1

    aput-char v6, v4, v5

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public addAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Lcom/ievyhrdnoniovof/AdAssetController;->D(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/ievyhrdnoniovof/AdAssetController;->writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\'\u000e)\u0018\u000b\u0007\u0007+\u0002)\t\u0004\u0012\u0018\t\u0006\n\u000f\u0014D\u0007\u000e\u0002\u000f\u0002+\u0015\u0019\u0003\u001eNM"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "789"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdAssetController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v3, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v0, v2

    :goto_1
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_0
    :goto_4
    throw v0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4
.end method

.method public cacheRemaining()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdAssetController;->W:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/ievyhrdnoniovof/AdAssetController;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u000c\u000f\u0006\u0003P"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "1"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v3, p1, v1}, Lcom/ievyhrdnoniovof/AdAssetController;->writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_2
    :try_start_5
    const-string v4, "LBAdController"

    invoke-static {v4, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_3
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_6
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v3, v0

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method public deleteOldAds()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdAssetController;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "yt"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdAssetController;->deleteDirectory(Ljava/io/File;)Z

    return-void
.end method

.method public getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdAssetController;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ievyhrdnoniovof/AdAssetController;->L(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdAssetController;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getAssetPath()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "vq|}*7?"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdAssetController;->W:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "E"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAsset(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdAssetController;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ievyhrdnoniovof/AdAssetController;->L(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdAssetController;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "YtWbu}yQ|Sw~lbw|tuj>yckulB}}wf}t07"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MFC"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdAssetController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public stopAllListeners()V
    .locals 0

    return-void
.end method

.method public writeHTMLToDiskWrap(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .param p6, "arg5"    # Ljava/lang/String;

    .prologue
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    :try_start_0
    const-string v2, "\'\"_"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, p1

    .end local p1    # "arg0":Ljava/lang/String;
    .local v0, "arg0":Ljava/lang/String;
    move-object v4, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    const-string v2, "wbu}y>rc"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const-string v3, "\t\u0018\u000b\u0007\u0007D\u000c\u0019"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, "vq|}*7?"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    const-string v2, "\u000b\u0018\u0007\u0003\u0002D\u000c\u0019"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const-string v3, "ubyy|>rc"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, "\u000c\u000f\u0006\u0003PIE"

    invoke-static {v8}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/ievyhrdnoniovof/AdAssetController;->getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .local v1, "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :goto_3
    invoke-direct {v1}, Lcom/ievyhrdnoniovof/AdAssetController;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_2

    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/ievyhrdnoniovof/AdAssetController;->l(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/ievyhrdnoniovof/AdAssetController;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2

    .end local v0    # "arg0":Ljava/lang/String;
    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p1    # "arg0":Ljava/lang/String;
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_3
    move-object v0, p1

    .end local p1    # "arg0":Ljava/lang/String;
    .restart local v0    # "arg0":Ljava/lang/String;
    move-object v4, v3

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v3, "LBAdController"

    invoke-static {v3, v2}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "LBAdController"

    invoke-static {v3, v2}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    goto :goto_3

    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :catch_4
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    goto :goto_3

    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :catch_5
    move-exception v2

    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    goto :goto_3

    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :catch_6
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    goto :goto_3

    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :catch_7
    move-exception v2

    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    goto :goto_3

    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :cond_4
    :goto_4
    throw v2

    :cond_5
    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    goto :goto_3

    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :catch_8
    move-exception v3

    goto :goto_4
.end method

.method public writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "arg0"    # Ljava/io/InputStream;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x400

    new-array v4, v2, [B

    if-eqz p3, :cond_0

    :try_start_0
    const-string v2, "]\\%"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/ievyhrdnoniovof/AdAssetController;->getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, p1

    .end local p1    # "arg0":Ljava/io/InputStream;
    .local v0, "arg0":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .local v1, "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :goto_3
    invoke-direct {v1}, Lcom/ievyhrdnoniovof/AdAssetController;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_5

    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/ievyhrdnoniovof/AdAssetController;->l(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v3, v2}, Lcom/ievyhrdnoniovof/AdAssetController;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "arg0":Ljava/io/InputStream;
    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p1    # "arg0":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_0
    move-object v2, v3

    goto :goto_0

    .end local p1    # "arg0":Ljava/io/InputStream;
    .restart local v0    # "arg0":Ljava/io/InputStream;
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, p1

    goto :goto_1

    .end local v0    # "arg0":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_5
    throw v2

    .restart local v0    # "arg0":Ljava/io/InputStream;
    :cond_4
    move-object v1, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    goto :goto_3

    .end local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :catch_1
    move-exception v3

    goto :goto_2

    .end local v0    # "arg0":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    goto :goto_5

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v0    # "arg0":Ljava/io/InputStream;
    .restart local v1    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :cond_5
    move-object v2, v3

    goto :goto_4
.end method

.method public writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "arg0"    # Ljava/io/InputStream;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .param p6, "arg5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x400

    new-array v6, v3, [B

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v4, "\'\"_"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    move-object v1, p1

    .end local p1    # "arg0":Ljava/io/InputStream;
    .local v1, "arg0":Ljava/io/InputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_5

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v4, ",7xl}t."

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_7

    const/4 v6, 0x1

    :goto_2
    const-string v4, "\u000e\u001e\u000b\u0006"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "40pqkXL]TGjqh0%0"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v6, :cond_f

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "\t\u0018\u000b\u0007\u0007D\u000c\u0019"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-gtz v4, :cond_8

    :goto_3
    :try_start_3
    const-string v4, "ubyy|>rc"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-gtz v4, :cond_b

    :goto_4
    :try_start_4
    const-string v4, "\'\u000e0\u0003\u0003\u001d"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const-string v11, "Oxw|}0PDU\\8Rmv~uj0%0"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/ievyhrdnoniovof/AdAssetController;->getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    if-nez v6, :cond_2

    :try_start_5
    const-string v5, ",lyl|}.Ytnujdqc}}}~l,7dqdtu&0"

    const-string v9, "V\u000b\u000f\u0012\u000bF\u0004\u0007\u0007\u0003WA\u001c\u000f\u000f\u0011\u001a\t\u0018\u0012MF\t\t\u0004\u0012\u000f\u0008\u001e[M\u0013\u0019\u0003\u0018K\u0019\u0005\u000b\n\u000b\u0004\u0006\u0003W\u0008\u0005F\u0003\u0008\u0003\u0012\u0003\u0007\u0006K\u0019\u0005\u000b\n\u000f[[HZAJIT"

    const-string v10, "$x}q|."

    const-string v11, "Z\u0002\u0012\u0007\nT"

    invoke-static {v11}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const-string v10, "Z\u0019\u0005\u0018\u000f\u001a\u0012J\u0015\u0018\u0005WD\u000c\u000f\u0006\u0003PIE"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ":0lihu%2lu`d7zyfyc{bq`l2&,7c{bq`l."

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const-string v10, "Z\u0019\u0005\u0018\u000f\u001a\u0012J\u0015\u0018\u0005WD\u000c\u000f\u0006\u0003PIE"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ":0lihu%2lu`d7zyfyc{bq`l2&,7c{bq`l."

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p4, :cond_1

    const-string v5, ",7c{bq`l."

    const-string v9, "V\u0015\t\u0014\u0003\u0016\u001eF\u001e\u001f\u001a\u0003WD\u001e\u0003\u0012\u0012E\u000c\u000b\u0010\u000b\u0015\t\u0014\u0003\u0016\u001eDT"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    :cond_1
    const-string v5, "V\u0002\u0003\u0010J\u0007\u0006\u000f\r\u0008WD\t\u0003\u0004\u0012\u000f\u0014HXJ"

    const-string v9, "$rwta0kda|}-:}yb\u007fyv*(+8`yt|yvw\" #0wf}b~|wg\"xqt|uv+8rysswj\u007fm~|={\u007ft\u007fj*lby~k`yb}~l+:."

    const-string v10, "VI\u0002\u0003\u000b\u0002T"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    :cond_2
    if-nez v6, :cond_c

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    move v5, v6

    :goto_5
    if-nez v5, :cond_3

    const-string v5, "$?pdu|&0"

    const-string v6, "ZE\u0004\u0005\u0002\u0013XJ"

    const-string v7, ",7tqf&0"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    :cond_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_4

    :try_start_6
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_6
    if-eqz v4, :cond_d

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    move-object v2, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .local v2, "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :goto_8
    invoke-direct {v2}, Lcom/ievyhrdnoniovof/AdAssetController;->l()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_e

    if-eqz v3, :cond_e

    invoke-direct {p0, v3}, Lcom/ievyhrdnoniovof/AdAssetController;->l(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v4, v3}, Lcom/ievyhrdnoniovof/AdAssetController;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_9
    return-object v3

    .end local v1    # "arg0":Ljava/io/InputStream;
    .end local v2    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p1    # "arg0":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_0

    .end local p1    # "arg0":Ljava/io/InputStream;
    .restart local v1    # "arg0":Ljava/io/InputStream;
    :cond_5
    if-eqz p3, :cond_6

    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v8, v6, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v1, p1

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_8
    :try_start_9
    const-string v9, "wbu}y>rc"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const-string v12, "\u000c\u000f\u0006\u0003PIE"

    invoke-static {v12}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v4, v9, v10}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v4

    :try_start_a
    const-string v9, "LBAdController"

    invoke-static {v9, v4}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    move-object v4, v5

    :goto_a
    if-eqz v8, :cond_9

    :try_start_b
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :cond_9
    :goto_b
    if-eqz v4, :cond_a

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :cond_a
    :goto_c
    throw v3

    :cond_b
    :try_start_d
    const-string v9, "\u000b\u0018\u0007\u0003\u0002D\u000c\u0019"

    invoke-static {v9}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const-string v12, "vq|}*7?"

    invoke-static {v12}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v4, v9, v10}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    :catch_2
    move-exception v4

    :try_start_e
    const-string v9, "LBAdController"

    invoke-static {v9, v4}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    :cond_c
    :try_start_f
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move v5, v6

    goto/16 :goto_5

    :cond_d
    move-object v2, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v2    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    goto/16 :goto_8

    .end local v2    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :catch_3
    move-exception v5

    goto/16 :goto_6

    :catch_4
    move-exception v4

    goto/16 :goto_7

    :catch_5
    move-exception v5

    goto :goto_b

    :catch_6
    move-exception v4

    goto :goto_c

    :catchall_1
    move-exception v3

    goto :goto_a

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local v2    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :cond_e
    move-object v3, v4

    goto/16 :goto_9

    .end local v2    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdAssetController;
    :cond_f
    move-object v7, v4

    goto/16 :goto_4
.end method
