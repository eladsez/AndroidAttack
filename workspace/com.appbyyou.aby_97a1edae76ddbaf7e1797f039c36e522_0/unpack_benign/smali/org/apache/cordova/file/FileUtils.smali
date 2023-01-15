.class public Lorg/apache/cordova/file/FileUtils;
.super Lorg/apache/cordova/CordovaPlugin;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/file/FileUtils$FileOp;
    }
.end annotation


# static fields
.field public static ABORT_ERR:I = 0x0

.field public static APPLICATION:I = 0x0

.field public static ENCODING_ERR:I = 0x0

.field public static INVALID_MODIFICATION_ERR:I = 0x0

.field public static INVALID_STATE_ERR:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field public static NOT_FOUND_ERR:I

.field public static NOT_READABLE_ERR:I

.field public static NO_MODIFICATION_ALLOWED_ERR:I

.field public static PATH_EXISTS_ERR:I

.field public static PERSISTENT:I

.field public static QUOTA_EXCEEDED_ERR:I

.field public static RESOURCE:I

.field public static SECURITY_ERR:I

.field public static SYNTAX_ERR:I

.field public static TEMPORARY:I

.field public static TYPE_MISMATCH_ERR:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 56
    sput v1, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    .line 57
    sput v2, Lorg/apache/cordova/file/FileUtils;->SECURITY_ERR:I

    .line 58
    sput v3, Lorg/apache/cordova/file/FileUtils;->ABORT_ERR:I

    .line 60
    const/4 v0, 0x4

    sput v0, Lorg/apache/cordova/file/FileUtils;->NOT_READABLE_ERR:I

    .line 61
    const/4 v0, 0x5

    sput v0, Lorg/apache/cordova/file/FileUtils;->ENCODING_ERR:I

    .line 62
    const/4 v0, 0x6

    sput v0, Lorg/apache/cordova/file/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    .line 63
    const/4 v0, 0x7

    sput v0, Lorg/apache/cordova/file/FileUtils;->INVALID_STATE_ERR:I

    .line 64
    const/16 v0, 0x8

    sput v0, Lorg/apache/cordova/file/FileUtils;->SYNTAX_ERR:I

    .line 65
    const/16 v0, 0x9

    sput v0, Lorg/apache/cordova/file/FileUtils;->INVALID_MODIFICATION_ERR:I

    .line 66
    const/16 v0, 0xa

    sput v0, Lorg/apache/cordova/file/FileUtils;->QUOTA_EXCEEDED_ERR:I

    .line 67
    const/16 v0, 0xb

    sput v0, Lorg/apache/cordova/file/FileUtils;->TYPE_MISMATCH_ERR:I

    .line 68
    const/16 v0, 0xc

    sput v0, Lorg/apache/cordova/file/FileUtils;->PATH_EXISTS_ERR:I

    .line 70
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/file/FileUtils;->TEMPORARY:I

    .line 71
    sput v1, Lorg/apache/cordova/file/FileUtils;->PERSISTENT:I

    .line 72
    sput v2, Lorg/apache/cordova/file/FileUtils;->RESOURCE:I

    .line 73
    sput v3, Lorg/apache/cordova/file/FileUtils;->APPLICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;J)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->truncateFile(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/file/FileUtils;I)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->requestFileSystem(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/FileUtils;->transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->readEntries(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;II)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->readAsBinaryHelper(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->getMetadata(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->getParent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->notifyDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->removeRecursively(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private atRootDirectory(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 901
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v0}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p1

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    :cond_0
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyAction(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 570
    .local v6, "istream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 571
    .local v7, "ostream":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 572
    .local v0, "input":Ljava/nio/channels/FileChannel;
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 575
    .local v5, "output":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 578
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 579
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 580
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 582
    return-void

    .line 577
    :catchall_0
    move-exception v1

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 578
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 579
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 580
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    throw v1
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "srcDir"    # Ljava/io/File;
    .param p2, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 598
    new-instance v5, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v6, "Can\'t rename a file to a directory"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/apache/cordova/file/FileUtils;->isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 603
    new-instance v5, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v6, "Can\'t copy itself into itself"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 607
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 608
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_2

    .line 610
    new-instance v5, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v6, "Couldn\'t create the destination directory"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 615
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 616
    .local v2, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v1, "destination":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 618
    invoke-direct {p0, v2, v1}, Lorg/apache/cordova/file/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    .line 615
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    :cond_3
    invoke-direct {p0, v2, v1}, Lorg/apache/cordova/file/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    goto :goto_1

    .line 624
    .end local v1    # "destination":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    invoke-static {p2}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v5

    return-object v5
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/file/FileUtils;->copyAction(Ljava/io/File;Ljava/io/File;)V

    .line 561
    invoke-static {p2}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private createDestination(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "fp"    # Ljava/io/File;
    .param p3, "destination"    # Ljava/io/File;

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 531
    .local v0, "destFile":Ljava/io/File;
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    :cond_0
    const/4 p1, 0x0

    .line 535
    :cond_1
    if-eqz p1, :cond_2

    .line 536
    new-instance v0, Ljava/io/File;

    .end local v0    # "destFile":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    .restart local v0    # "destFile":Ljava/io/File;
    :goto_0
    return-object v0

    .line 538
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "destFile":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "destFile":Ljava/io/File;
    goto :goto_0
.end method

.method private createFileObject(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 918
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v1}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p1

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private createFileObject(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "fp":Ljava/io/File;
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    new-instance v0, Ljava/io/File;

    .end local v0    # "fp":Ljava/io/File;
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 873
    .restart local v0    # "fp":Ljava/io/File;
    :goto_0
    return-object v0

    .line 870
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v1}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p1

    .line 871
    new-instance v0, Ljava/io/File;

    .end local v0    # "fp":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "fp":Ljava/io/File;
    goto :goto_0
.end method

.method public static getEntry(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1016
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1018
    .local v0, "entry":Lorg/json/JSONObject;
    const-string v1, "isFile"

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1019
    const-string v1, "isDirectory"

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1020
    const-string v1, "name"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1021
    const-string v1, "fullPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1025
    return-object v0
.end method

.method private getEntry(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1036
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 5
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/json/JSONObject;
    .param p4, "directory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, "create":Z
    const/4 v1, 0x0

    .line 811
    .local v1, "exclusive":Z
    if-eqz p3, :cond_0

    .line 812
    const-string v3, "create"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 813
    if-eqz v0, :cond_0

    .line 814
    const-string v3, "exclusive"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 819
    :cond_0
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    new-instance v3, Lorg/apache/cordova/file/EncodingException;

    const-string v4, "This file has a : in it\'s name"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 823
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/file/FileUtils;->createFileObject(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 825
    .local v2, "fp":Ljava/io/File;
    if-eqz v0, :cond_4

    .line 826
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 827
    new-instance v3, Lorg/apache/cordova/file/FileExistsException;

    const-string v4, "create/exclusive fails"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 829
    :cond_2
    if-eqz p4, :cond_3

    .line 830
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 834
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 835
    new-instance v3, Lorg/apache/cordova/file/FileExistsException;

    const-string v4, "create fails"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 832
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 839
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 840
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "path does not exist"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 842
    :cond_5
    if-eqz p4, :cond_6

    .line 843
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 844
    new-instance v3, Lorg/apache/cordova/file/TypeMismatchException;

    const-string v4, "path doesn\'t exist or is file"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 847
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 848
    new-instance v3, Lorg/apache/cordova/file/TypeMismatchException;

    const-string v4, "path doesn\'t exist or is directory"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 854
    :cond_7
    invoke-static {v2}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method private getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 952
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 953
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 956
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 957
    .local v1, "metadata":Lorg/json/JSONObject;
    const-string v2, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 958
    const-string v2, "type"

    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v3}, Lorg/apache/cordova/file/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 959
    const-string v2, "name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 960
    const-string v2, "fullPath"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 961
    const-string v2, "lastModifiedDate"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 963
    return-object v1
.end method

.method private getMetadata(Ljava/lang/String;)J
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 932
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 934
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 935
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Failed to find file in getMetadata"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 938
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1
.end method

.method private getParent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v0}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p1

    .line 887
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 890
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 640
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 641
    const/4 v0, 0x1

    .line 644
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "srcDir"    # Ljava/io/File;
    .param p2, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/cordova/file/FileUtils;->isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "Can\'t move itself into itself"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 706
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "directory is not empty"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 716
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/file/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    .line 717
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 718
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->removeDirRecursively(Ljava/io/File;)Z

    .line 724
    :cond_3
    invoke-static {p2}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 720
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "moved failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/file/FileUtils;->copyAction(Ljava/io/File;Ljava/io/File;)V

    .line 670
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 677
    :cond_1
    invoke-static {p2}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 673
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "moved failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyDelete(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v1}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "newFilePath":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private readAsBinaryHelper(Ljava/lang/String;II)[B
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1097
    sub-int v3, p3, p2

    .line 1098
    .local v3, "numBytesToRead":I
    new-array v0, v3, [B

    .line 1099
    .local v0, "bytes":[B
    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v4}, Lorg/apache/cordova/file/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v1

    .line 1100
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 1102
    .local v2, "numBytesRead":I
    if-lez p2, :cond_0

    .line 1103
    int-to-long v4, p2

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 1106
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1107
    sub-int/2addr v3, v2

    goto :goto_0

    .line 1110
    :cond_1
    return-object v0
.end method

.method private readEntries(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 430
    .local v2, "fp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 432
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 435
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 437
    .local v0, "entries":Lorg/json/JSONArray;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 438
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 439
    .local v1, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 440
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    aget-object v4, v1, v3

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 439
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 782
    .local v0, "fp":Ljava/io/File;
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    new-instance v1, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v2, "You can\'t delete the root directory"

    invoke-direct {v1, v2}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 787
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 788
    new-instance v1, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v2, "You can\'t delete a directory that is not empty."

    invoke-direct {v1, v2}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 791
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private removeDirRecursively(Ljava/io/File;)Z
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 758
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lorg/apache/cordova/file/FileUtils;->removeDirRecursively(Ljava/io/File;)Z

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 762
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 763
    new-instance v4, Lorg/apache/cordova/file/FileExistsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 765
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method private removeRecursively(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 741
    .local v0, "fp":Ljava/io/File;
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const/4 v1, 0x0

    .line 745
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/cordova/file/FileUtils;->removeDirRecursively(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method private requestFileSystem(I)Lorg/json/JSONObject;
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 975
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 976
    .local v1, "fs":Lorg/json/JSONObject;
    sget v2, Lorg/apache/cordova/file/FileUtils;->TEMPORARY:I

    if-ne p1, v2, :cond_1

    .line 978
    const-string v2, "name"

    const-string v3, "temporary"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 979
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 980
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 983
    .local v0, "fp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 984
    const-string v2, "root"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    .end local v0    # "fp":Ljava/io/File;
    :goto_0
    return-object v1

    .line 987
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 989
    .restart local v0    # "fp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 990
    const-string v2, "root"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 993
    .end local v0    # "fp":Ljava/io/File;
    :cond_1
    sget v2, Lorg/apache/cordova/file/FileUtils;->PERSISTENT:I

    if-ne p1, v2, :cond_3

    .line 994
    const-string v2, "name"

    const-string v3, "persistent"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 995
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 996
    const-string v2, "root"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 998
    :cond_2
    const-string v2, "root"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 1002
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No filesystem of type requested"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    const/4 v3, 0x0

    .line 382
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "decoded":Ljava/lang/String;
    const/4 v9, 0x0

    .line 387
    .local v9, "fp":Ljava/io/File;
    const-string v0, "content:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 390
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 391
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 392
    new-instance v9, Ljava/io/File;

    .end local v9    # "fp":Ljava/io/File;
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "fp":Ljava/io/File;
    :goto_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 411
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 396
    :cond_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 398
    .local v11, "testUrl":Ljava/net/URL;
    const-string v0, "file://"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const-string v0, "?"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 400
    .local v10, "questionMark":I
    if-gez v10, :cond_1

    .line 401
    new-instance v9, Ljava/io/File;

    .end local v9    # "fp":Ljava/io/File;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9    # "fp":Ljava/io/File;
    goto :goto_0

    .line 403
    :cond_1
    new-instance v9, Ljava/io/File;

    .end local v9    # "fp":Ljava/io/File;
    invoke-virtual {v8, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9    # "fp":Ljava/io/File;
    goto :goto_0

    .line 406
    .end local v10    # "questionMark":I
    :cond_2
    new-instance v9, Ljava/io/File;

    .end local v9    # "fp":Ljava/io/File;
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9    # "fp":Ljava/io/File;
    goto :goto_0

    .line 413
    .end local v11    # "testUrl":Ljava/net/URL;
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_4

    .line 414
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 416
    :cond_4
    invoke-static {v9}, Lorg/apache/cordova/file/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "f"    # Lorg/apache/cordova/file/FileUtils$FileOp;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/file/FileUtils$23;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/file/FileUtils$23;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method private transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "newParent"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v5, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v5}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "newFileName":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p2, v5}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p2

    .line 469
    if-eqz p3, :cond_0

    const-string v5, ":"

    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 470
    new-instance v5, Lorg/apache/cordova/file/EncodingException;

    const-string v6, "Bad file name"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 473
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v4, "source":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 477
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "The source does not exist"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 480
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, "destinationDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 483
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "The source does not exist"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 487
    :cond_2
    invoke-direct {p0, p3, v4, v1}, Lorg/apache/cordova/file/FileUtils;->createDestination(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 493
    .local v0, "destination":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 494
    new-instance v5, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v6, "Can\'t copy a file onto itself"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 497
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 498
    if-eqz p4, :cond_5

    .line 499
    invoke-direct {p0, v4, v0}, Lorg/apache/cordova/file/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    .line 514
    :cond_4
    :goto_0
    return-object v2

    .line 501
    :cond_5
    invoke-direct {p0, v4, v0}, Lorg/apache/cordova/file/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 504
    :cond_6
    if-eqz p4, :cond_7

    .line 505
    invoke-direct {p0, v4, v0}, Lorg/apache/cordova/file/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    .line 508
    .local v2, "newFileEntry":Lorg/json/JSONObject;
    const-string v5, "content://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 509
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->notifyDelete(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    .end local v2    # "newFileEntry":Lorg/json/JSONObject;
    :cond_7
    invoke-direct {p0, v4, v0}, Lorg/apache/cordova/file/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0
.end method

.method private truncateFile(Ljava/lang/String;J)J
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 1172
    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    new-instance v2, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v3, "Couldn\'t truncate file given its content URI"

    invoke-direct {v2, v3}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1176
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v2}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1178
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_1

    .line 1181
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1182
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local p2    # "size":J
    :goto_0
    return-wide p2

    .line 1186
    .restart local p2    # "size":J
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p2

    .line 1188
    .end local p2    # "size":J
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .restart local p2    # "size":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 31
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v3, "testSaveLocationExists"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    new-instance v3, Lorg/apache/cordova/file/FileUtils$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/apache/cordova/file/FileUtils$1;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    .line 315
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 96
    :cond_0
    const-string v3, "getFreeDiskSpace"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    new-instance v3, Lorg/apache/cordova/file/FileUtils$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/apache/cordova/file/FileUtils$2;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 104
    :cond_1
    const-string v3, "testFileExists"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v1}, Lorg/apache/cordova/file/FileUtils$3;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 113
    .end local v5    # "fname":Ljava/lang/String;
    :cond_2
    const-string v3, "testDirectoryExists"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v1}, Lorg/apache/cordova/file/FileUtils$4;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 122
    .end local v5    # "fname":Ljava/lang/String;
    :cond_3
    const-string v3, "readAsText"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "encoding":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    .line 125
    .local v6, "start":I
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 126
    .local v7, "end":I
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$5;

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Lorg/apache/cordova/file/FileUtils$5;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;IILorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 133
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "start":I
    .end local v7    # "end":I
    .end local v9    # "encoding":Ljava/lang/String;
    :cond_4
    const-string v3, "readAsDataURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 134
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    .line 135
    .restart local v6    # "start":I
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 136
    .restart local v7    # "end":I
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$6;

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/cordova/file/FileUtils$6;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;IILorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 143
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_5
    const-string v3, "readAsArrayBuffer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 144
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    .line 145
    .restart local v6    # "start":I
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 146
    .restart local v7    # "end":I
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$7;

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/cordova/file/FileUtils$7;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;IILorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 153
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_6
    const-string v3, "readAsBinaryString"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 154
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    .line 155
    .restart local v6    # "start":I
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 156
    .restart local v7    # "end":I
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$8;

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/cordova/file/FileUtils$8;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;IILorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 163
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_7
    const-string v3, "write"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 164
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .restart local v5    # "fname":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 166
    .local v13, "data":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    .line 167
    .local v14, "offset":I
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 168
    .local v15, "isBinary":Ljava/lang/Boolean;
    new-instance v10, Lorg/apache/cordova/file/FileUtils$9;

    move-object/from16 v11, p0

    move-object v12, v5

    move-object/from16 v16, p3

    invoke-direct/range {v10 .. v16}, Lorg/apache/cordova/file/FileUtils$9;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 175
    .end local v5    # "fname":Ljava/lang/String;
    .end local v13    # "data":Ljava/lang/String;
    .end local v14    # "offset":I
    .end local v15    # "isBinary":Ljava/lang/Boolean;
    :cond_8
    const-string v3, "truncate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 176
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5    # "fname":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    .line 178
    .restart local v14    # "offset":I
    new-instance v3, Lorg/apache/cordova/file/FileUtils$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v14, v1}, Lorg/apache/cordova/file/FileUtils$10;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 185
    .end local v5    # "fname":Ljava/lang/String;
    .end local v14    # "offset":I
    :cond_9
    const-string v3, "requestFileSystem"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 186
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v21

    .line 187
    .local v21, "fstype":I
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v18

    .line 188
    .local v18, "size":J
    new-instance v16, Lorg/apache/cordova/file/FileUtils$11;

    move-object/from16 v17, p0

    move-object/from16 v20, p3

    invoke-direct/range {v16 .. v21}, Lorg/apache/cordova/file/FileUtils$11;-><init>(Lorg/apache/cordova/file/FileUtils;JLorg/apache/cordova/CallbackContext;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 199
    .end local v18    # "size":J
    .end local v21    # "fstype":I
    :cond_a
    const-string v3, "resolveLocalFileSystemURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 200
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 201
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v1}, Lorg/apache/cordova/file/FileUtils$12;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 208
    .end local v5    # "fname":Ljava/lang/String;
    :cond_b
    const-string v3, "getMetadata"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 209
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v5}, Lorg/apache/cordova/file/FileUtils$13;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 216
    .end local v5    # "fname":Ljava/lang/String;
    :cond_c
    const-string v3, "getFileMetadata"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 217
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v1}, Lorg/apache/cordova/file/FileUtils$14;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 225
    .end local v5    # "fname":Ljava/lang/String;
    :cond_d
    const-string v3, "getParent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 226
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 227
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v1}, Lorg/apache/cordova/file/FileUtils$15;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 234
    .end local v5    # "fname":Ljava/lang/String;
    :cond_e
    const-string v3, "getDirectory"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 235
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 236
    .local v24, "dirname":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v22, Lorg/apache/cordova/file/FileUtils$16;

    move-object/from16 v23, p0

    move-object/from16 v25, v5

    move-object/from16 v26, p2

    move-object/from16 v27, p3

    invoke-direct/range {v22 .. v27}, Lorg/apache/cordova/file/FileUtils$16;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 244
    .end local v5    # "fname":Ljava/lang/String;
    .end local v24    # "dirname":Ljava/lang/String;
    :cond_f
    const-string v3, "getFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 245
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 246
    .restart local v24    # "dirname":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 247
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v22, Lorg/apache/cordova/file/FileUtils$17;

    move-object/from16 v23, p0

    move-object/from16 v25, v5

    move-object/from16 v26, p2

    move-object/from16 v27, p3

    invoke-direct/range {v22 .. v27}, Lorg/apache/cordova/file/FileUtils$17;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 254
    .end local v5    # "fname":Ljava/lang/String;
    .end local v24    # "dirname":Ljava/lang/String;
    :cond_10
    const-string v3, "remove"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 255
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 256
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v1}, Lorg/apache/cordova/file/FileUtils$18;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 268
    .end local v5    # "fname":Ljava/lang/String;
    :cond_11
    const-string v3, "removeRecursively"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 269
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v1}, Lorg/apache/cordova/file/FileUtils$19;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 281
    .end local v5    # "fname":Ljava/lang/String;
    :cond_12
    const-string v3, "moveTo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 282
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    .restart local v5    # "fname":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 284
    .local v28, "newParent":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 285
    .local v29, "newName":Ljava/lang/String;
    new-instance v25, Lorg/apache/cordova/file/FileUtils$20;

    move-object/from16 v26, p0

    move-object/from16 v27, v5

    move-object/from16 v30, p3

    invoke-direct/range {v25 .. v30}, Lorg/apache/cordova/file/FileUtils$20;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 292
    .end local v5    # "fname":Ljava/lang/String;
    .end local v28    # "newParent":Ljava/lang/String;
    .end local v29    # "newName":Ljava/lang/String;
    :cond_13
    const-string v3, "copyTo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 293
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    .restart local v5    # "fname":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 295
    .restart local v28    # "newParent":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 296
    .restart local v29    # "newName":Ljava/lang/String;
    new-instance v25, Lorg/apache/cordova/file/FileUtils$21;

    move-object/from16 v26, p0

    move-object/from16 v27, v5

    move-object/from16 v30, p3

    invoke-direct/range {v25 .. v30}, Lorg/apache/cordova/file/FileUtils$21;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 303
    .end local v5    # "fname":Ljava/lang/String;
    .end local v28    # "newParent":Ljava/lang/String;
    .end local v29    # "newName":Ljava/lang/String;
    :cond_14
    const-string v3, "readEntries"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 304
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 305
    .restart local v5    # "fname":Ljava/lang/String;
    new-instance v3, Lorg/apache/cordova/file/FileUtils$22;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v5, v1}, Lorg/apache/cordova/file/FileUtils$22;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 313
    .end local v5    # "fname":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public readFileAs(Ljava/lang/String;IILorg/apache/cordova/CallbackContext;Ljava/lang/String;I)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p5, "encoding"    # Ljava/lang/String;
    .param p6, "resultType"    # I

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v0, Lorg/apache/cordova/file/FileUtils$24;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p6

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/cordova/file/FileUtils$24;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;IIILjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;IZ)J
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "isBinary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1125
    const-string v7, "content://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1126
    new-instance v7, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v8, "Couldn\'t write to file given its content URI"

    invoke-direct {v7, v8}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1129
    :cond_0
    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v7}, Lorg/apache/cordova/file/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1131
    const/4 v0, 0x0

    .line 1132
    .local v0, "append":Z
    if-lez p3, :cond_1

    .line 1133
    int-to-long v7, p3

    invoke-direct {p0, p1, v7, v8}, Lorg/apache/cordova/file/FileUtils;->truncateFile(Ljava/lang/String;J)J

    .line 1134
    const/4 v0, 0x1

    .line 1138
    :cond_1
    if-eqz p4, :cond_2

    .line 1139
    invoke-static {p2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 1143
    .local v5, "rawData":[B
    :goto_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1146
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1147
    .local v4, "out":Ljava/io/FileOutputStream;
    array-length v7, v5

    new-array v1, v7, [B

    .line 1148
    .local v1, "buff":[B
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v3, v1, v7, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1149
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v1, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1150
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1151
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    array-length v7, v5

    int-to-long v7, v7

    return-wide v7

    .line 1141
    .end local v1    # "buff":[B
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "rawData":[B
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5    # "rawData":[B
    goto :goto_0

    .line 1153
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 1156
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/apache/cordova/file/NoModificationAllowedException;

    invoke-direct {v6, p1}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v6, "realException":Lorg/apache/cordova/file/NoModificationAllowedException;
    throw v6
.end method
