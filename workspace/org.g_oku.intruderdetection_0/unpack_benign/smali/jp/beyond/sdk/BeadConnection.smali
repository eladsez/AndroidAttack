.class public Ljp/beyond/sdk/BeadConnection;
.super Ljava/lang/Object;
.source "BeadConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;,
        Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;,
        Ljp/beyond/sdk/BeadConnection$AsyncCopyTempFileTask;,
        Ljp/beyond/sdk/BeadConnection$RequestStatus;
    }
.end annotation


# static fields
.field private static final EXIST_ADDATA_FILE_FLAG:C = '\u0001'

.field private static final EXIST_ADIMAGE_FILE_FLAG:C = '\u0010'

.field public static final FILENAME_DATA:Ljava/lang/String; = "__bead_opt_data__"

.field public static final FILENAME_IMAGE:Ljava/lang/String; = "__bead_opt_image__"

.field private static FirstTimeDownload:Z = false

.field private static final LANDSCAPE_NAME:Ljava/lang/String; = "landscape"

.field private static final PARAM_AID:Ljava/lang/String; = "aid"

.field private static final PARAM_APP:Ljava/lang/String; = "app"

.field private static final PARAM_COUNT:Ljava/lang/String; = "count"

.field private static final PARAM_CPARAM:Ljava/lang/String; = "cparam"

.field private static final PARAM_IMPID:Ljava/lang/String; = "impid"

.field private static final PARAM_MIMP:Ljava/lang/String; = "mimp"

.field private static final PARAM_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final PARAM_SID:Ljava/lang/String; = "sid"

.field private static final PARAM_VER:Ljava/lang/String; = "version"

.field private static final PORTRAIT_NAME:Ljava/lang/String; = "portrait"

.field private static final REQUEST_IMP_URL_PATH:Ljava/lang/String; = "/imp/beacon.gif"

.field public static final REQUEST_URL_DOMAIN:Ljava/lang/String; = ".exit-ad.com"

.field private static final REQUEST_URL_HOST:Ljava/lang/String; = "d"

.field private static final REQUEST_URL_PATH:Ljava/lang/String; = "/ad/json/"

.field private static final REQUEST_URL_SCHEME:Ljava/lang/String; = "http"

.field private static sCookieDomain:Ljava/lang/String;


# instance fields
.field private mAdIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

.field private mContext:Landroid/content/Context;

.field private mCookieStore:Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;

.field private mDialogType:Ljp/beyond/sdk/Bead$DialogType;

.field private mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

.field private mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

.field private mRotationCount:I

.field private mSid:Ljava/lang/String;

.field private mViewType:Ljp/beyond/sdk/Bead$ViewType;

.field private refresh_timer:Ljava/util/Timer;

.field private requestTask:Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Ljp/beyond/sdk/BeadConnection;->sCookieDomain:Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    sput-boolean v0, Ljp/beyond/sdk/BeadConnection;->FirstTimeDownload:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;Ljp/beyond/sdk/Bead$DialogType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "orientation"    # Ljp/beyond/sdk/Bead$ContentsOrientation;
    .param p4, "dType"    # Ljp/beyond/sdk/Bead$DialogType;

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Ljp/beyond/sdk/BeadConnection;->mRotationCount:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mAdIdList:Ljava/util/List;

    .line 121
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 123
    iput-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    .line 124
    iput-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    .line 126
    iput-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mSid:Ljava/lang/String;

    .line 132
    new-instance v0, Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {v0}, Ljp/beyond/sdk/utilities/ConnectionUtil;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 135
    new-instance v0, Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;

    invoke-direct {v0}, Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mCookieStore:Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;

    .line 169
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->refresh_timer:Ljava/util/Timer;

    .line 176
    sget-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 219
    iput-object p1, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Ljp/beyond/sdk/BeadConnection;->mSid:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Ljp/beyond/sdk/BeadConnection;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 222
    iput-object p4, p0, Ljp/beyond/sdk/BeadConnection;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/sdk/Bead$ContentsOrientation;Ljp/beyond/sdk/Bead$ViewType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "orientation"    # Ljp/beyond/sdk/Bead$ContentsOrientation;
    .param p4, "vType"    # Ljp/beyond/sdk/Bead$ViewType;

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Ljp/beyond/sdk/BeadConnection;->mRotationCount:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mAdIdList:Ljava/util/List;

    .line 121
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 123
    iput-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    .line 124
    iput-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    .line 126
    iput-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mSid:Ljava/lang/String;

    .line 132
    new-instance v0, Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {v0}, Ljp/beyond/sdk/utilities/ConnectionUtil;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    .line 135
    new-instance v0, Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;

    invoke-direct {v0}, Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mCookieStore:Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;

    .line 169
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->refresh_timer:Ljava/util/Timer;

    .line 176
    sget-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 232
    iput-object p1, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Ljp/beyond/sdk/BeadConnection;->mSid:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Ljp/beyond/sdk/BeadConnection;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 235
    iput-object p4, p0, Ljp/beyond/sdk/BeadConnection;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    .line 239
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Ljp/beyond/sdk/BeadConnection;->FirstTimeDownload:Z

    return v0
.end method

.method static synthetic access$1(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/BeadConnection$RequestStatus;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    return-object v0
.end method

.method static synthetic access$10(Ljp/beyond/sdk/BeadConnection;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0, p1, p2, p3}, Ljp/beyond/sdk/BeadConnection;->copyTempFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Z)V
    .locals 0

    .prologue
    .line 171
    sput-boolean p0, Ljp/beyond/sdk/BeadConnection;->FirstTimeDownload:Z

    return-void
.end method

.method static synthetic access$12(Ljp/beyond/sdk/BeadConnection;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Ljp/beyond/sdk/BeadConnection;->addRotationCount()V

    return-void
.end method

.method static synthetic access$2(Ljp/beyond/sdk/BeadConnection;)Ljp/beyond/sdk/Bead$ViewType;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    return-object v0
.end method

.method static synthetic access$3(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$RequestStatus;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    return-void
.end method

.method static synthetic access$4(Ljp/beyond/sdk/BeadConnection;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Ljp/beyond/sdk/BeadConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Ljp/beyond/sdk/BeadConnection;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Ljp/beyond/sdk/BeadConnection;->mRotationCount:I

    return v0
.end method

.method static synthetic access$7(Ljp/beyond/sdk/BeadConnection;Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/sdk/BeadData;
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Ljp/beyond/sdk/BeadConnection;->requestAdData(Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/sdk/BeadData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Ljp/beyond/sdk/BeadConnection;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0, p1}, Ljp/beyond/sdk/BeadConnection;->requestAdImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Ljp/beyond/sdk/BeadConnection;I)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Ljp/beyond/sdk/BeadConnection;->addAdIdList(I)V

    return-void
.end method

.method private addAdIdList(I)V
    .locals 2
    .param p1, "adId"    # I

    .prologue
    .line 568
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mAdIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mAdIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addRotationCount()V
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Ljp/beyond/sdk/BeadConnection;->mRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/beyond/sdk/BeadConnection;->mRotationCount:I

    .line 559
    return-void
.end method

.method private convertAdIdListString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 584
    .local v1, "isFirst":Z
    iget-object v3, p0, Ljp/beyond/sdk/BeadConnection;->mAdIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 594
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 584
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 586
    .local v0, "adId":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 587
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 392
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    const/16 v2, 0x2710

    new-array v0, v2, [B

    .line 925
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 928
    return-void

    .line 926
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private copyTempFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "outFileName"    # Ljava/lang/String;

    .prologue
    .line 904
    const/4 v2, 0x0

    .line 905
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 906
    .local v4, "out":Ljava/io/OutputStream;
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 908
    .local v0, "dir":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_TEMP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 910
    .local v6, "outFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 911
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-direct {p0, v3, v5}, Ljp/beyond/sdk/BeadConnection;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 912
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 913
    const/4 v2, 0x0

    .line 914
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 915
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 916
    const/4 v4, 0x0

    .line 920
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "outFile":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string v7, "tag"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to copy asset file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 917
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "outFile":Ljava/io/File;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static getCookieDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    sget-object v1, Ljp/beyond/sdk/BeadConnection;->sCookieDomain:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    sget-object v1, Ljp/beyond/sdk/BeadConnection;->sCookieDomain:Ljava/lang/String;

    .line 214
    .local v0, "uri":Landroid/net/Uri$Builder;
    :goto_0
    return-object v1

    .line 210
    .end local v0    # "uri":Landroid/net/Uri$Builder;
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 211
    .restart local v0    # "uri":Landroid/net/Uri$Builder;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    const-string v1, "d.exit-ad.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljp/beyond/sdk/BeadConnection;->sCookieDomain:Ljava/lang/String;

    .line 214
    sget-object v1, Ljp/beyond/sdk/BeadConnection;->sCookieDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method private requestAdData(Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/sdk/BeadData;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "adData":Ljp/beyond/sdk/BeadData;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-le v5, v6, :cond_0

    .line 284
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 285
    .local v3, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 291
    .end local v3    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    :try_start_0
    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    new-instance v6, Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;

    invoke-direct {v6}, Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;-><init>()V

    invoke-virtual {v5, p1, p2, v6}, Ljp/beyond/sdk/utilities/ConnectionUtil;->request(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/sdk/utilities/ConnectionUtil$CookieStoreInterface;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "responseString":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 296
    sget-object v5, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v6, "fail receive ad"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 327
    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .end local v4    # "responseString":Ljava/lang/String;
    .local v1, "adData":Ljp/beyond/sdk/BeadData;
    :goto_0
    return-object v1

    .line 299
    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v4    # "responseString":Ljava/lang/String;
    :cond_1
    const-string v5, "{}"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 301
    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    sget-object v6, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    if-eq v5, v6, :cond_2

    .line 304
    sget-object v5, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "empty JSON ad "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v7}, Ljp/beyond/sdk/Bead$DialogType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-virtual {v5, p2}, Ljp/beyond/sdk/utilities/ConnectionUtil;->readJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    :cond_3
    invoke-static {v4}, Ljp/beyond/sdk/BeadResponseParser;->parseJson(Ljava/lang/String;)Ljp/beyond/sdk/BeadData;

    move-result-object v0

    .line 313
    if-nez v0, :cond_5

    .line 316
    iget-object v5, p0, Ljp/beyond/sdk/BeadConnection;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    sget-object v6, Ljp/beyond/sdk/Bead$ViewType;->Banner:Ljp/beyond/sdk/Bead$ViewType;

    if-ne v5, v6, :cond_4

    .line 317
    sget-object v5, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "empty ad Parser "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection;->mViewType:Ljp/beyond/sdk/Bead$ViewType;

    invoke-virtual {v7}, Ljp/beyond/sdk/Bead$ViewType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, v0

    .line 321
    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v1    # "adData":Ljp/beyond/sdk/BeadData;
    goto :goto_0

    .line 319
    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    :cond_4
    sget-object v5, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "empty ad Parser "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ljp/beyond/sdk/BeadConnection;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    invoke-virtual {v7}, Ljp/beyond/sdk/Bead$DialogType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 323
    .end local v4    # "responseString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Lorg/apache/http/conn/HttpHostConnectException;
    invoke-virtual {v2}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    .end local v2    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    :cond_5
    move-object v1, v0

    .line 327
    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v1    # "adData":Ljp/beyond/sdk/BeadData;
    goto :goto_0
.end method

.method private requestAdImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mConnectionUtil:Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-virtual {v1, p1}, Ljp/beyond/sdk/utilities/ConnectionUtil;->requestImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .local v0, "adImage":Landroid/graphics/Bitmap;
    return-object v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .prologue
    .line 613
    sget-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 614
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->requestTask:Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->requestTask:Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->cancel(Z)Z

    .line 617
    :cond_0
    const-string v0, "BEAD"

    const-string v1, "cancelling Request 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    sget-object v0, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    iput-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 619
    return-void
.end method

.method public deleteFiles()V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 513
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_TEMP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 516
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 517
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_TEMP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public executeRequest()V
    .locals 4

    .prologue
    .line 247
    sget-object v2, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    iput-object v2, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 249
    iget-object v2, p0, Ljp/beyond/sdk/BeadConnection;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 259
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljp/beyond/sdk/BeadConnection;->convertAdIdListString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "adIdList":Ljava/lang/String;
    new-instance v2, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;

    invoke-direct {v2, p0, v0}, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;-><init>(Ljp/beyond/sdk/BeadConnection;Ljava/lang/String;)V

    iput-object v2, p0, Ljp/beyond/sdk/BeadConnection;->requestTask:Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;

    .line 261
    iget-object v2, p0, Ljp/beyond/sdk/BeadConnection;->requestTask:Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljp/beyond/sdk/BeadConnection$AdRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v0    # "adIdList":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v2, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v3, "request failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v2, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Failed:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    iput-object v2, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    goto :goto_0
.end method

.method public existFiles(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 527
    const/4 v3, 0x0

    .line 530
    .local v3, "isExist":Z
    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_0

    move v4, v3

    .line 551
    .end local v3    # "isExist":Z
    .local v4, "isExist":I
    :goto_0
    return v4

    .line 535
    .end local v4    # "isExist":I
    .restart local v3    # "isExist":Z
    :cond_0
    const/4 v0, 0x0

    .line 536
    .local v0, "checkedFile":C
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_2

    .line 547
    const/16 v5, 0x11

    if-ne v0, v5, :cond_1

    .line 548
    const/4 v3, 0x1

    :cond_1
    move v4, v3

    .line 551
    .restart local v4    # "isExist":I
    goto :goto_0

    .line 536
    .end local v4    # "isExist":I
    :cond_2
    aget-object v1, v2, v5

    .line 539
    .local v1, "file":Ljava/lang/String;
    invoke-virtual {p0}, Ljp/beyond/sdk/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 540
    or-int/lit8 v7, v0, 0x1

    int-to-char v0, v7

    .line 536
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 541
    :cond_4
    invoke-virtual {p0}, Ljp/beyond/sdk/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 542
    or-int/lit8 v7, v0, 0x10

    int-to-char v0, v7

    goto :goto_2
.end method

.method public getAdDataFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "__bead_opt_data__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAdImageFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "__bead_opt_image__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, p0, Ljp/beyond/sdk/BeadConnection;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAdRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "orientation"    # Ljava/lang/String;
    .param p3, "rotationCount"    # I
    .param p4, "adIdList"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v1, ""

    .line 407
    .local v1, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 446
    .end local v1    # "url":Ljava/lang/String;
    .local v2, "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 411
    .end local v2    # "url":Ljava/lang/String;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 412
    .local v0, "uri":Landroid/net/Uri$Builder;
    const-string v3, "http"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 413
    const-string v3, "d.exit-ad.com"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 414
    const-string v3, "/ad/json/"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 417
    const-string v3, "sid"

    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 420
    iget-object v3, p0, Ljp/beyond/sdk/BeadConnection;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    sget-object v4, Ljp/beyond/sdk/Bead$DialogType;->Icon:Ljp/beyond/sdk/Bead$DialogType;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Ljp/beyond/sdk/BeadConnection;->mDialogType:Ljp/beyond/sdk/Bead$DialogType;

    sget-object v4, Ljp/beyond/sdk/Bead$DialogType;->IconText:Ljp/beyond/sdk/Bead$DialogType;

    if-ne v3, v4, :cond_3

    .line 421
    :cond_2
    const-string v3, "cparam"

    const-string v4, "alertad"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 425
    :cond_3
    const-string v3, "version"

    const-string v4, "2.6"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 428
    if-eqz p2, :cond_4

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 429
    const-string v3, "orientation"

    invoke-virtual {v0, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 433
    :cond_4
    const-string v3, "app"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 436
    const-string v3, "count"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 439
    const-string v3, ""

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 440
    const-string v3, "aid"

    invoke-virtual {v0, v3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 443
    :cond_5
    const-string v3, "mimp"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 446
    .end local v1    # "url":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public getOrientationParameter(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    const-string v1, ""

    .line 458
    .local v1, "result":Ljava/lang/String;
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 462
    .local v0, "orientation":Ljp/beyond/sdk/Bead$ContentsOrientation;
    sget-object v2, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    if-ne v2, v0, :cond_0

    .line 464
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    .line 465
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Landscape:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 471
    :cond_0
    :goto_0
    sget-object v2, Ljp/beyond/sdk/Bead$ContentsOrientation;->Landscape:Ljp/beyond/sdk/Bead$ContentsOrientation;

    if-ne v2, v0, :cond_2

    .line 472
    const-string v1, "landscape"

    .line 477
    :goto_1
    return-object v1

    .line 467
    :cond_1
    sget-object v0, Ljp/beyond/sdk/Bead$ContentsOrientation;->Portrait:Ljp/beyond/sdk/Bead$ContentsOrientation;

    goto :goto_0

    .line 474
    :cond_2
    const-string v1, "portrait"

    goto :goto_1
.end method

.method public getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    return-object v0
.end method

.method public getTempHtmlFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "__bead_opt_image__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v1, "_temp.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isNetworkAvailable(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1046
    const/4 v2, 0x0

    .local v2, "isMobile":Z
    const/4 v3, 0x0

    .line 1047
    .local v3, "isWifi":Z
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1048
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1052
    .local v1, "infoAvailableNetworks":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 1053
    array-length v8, v1

    move v7, v5

    :goto_0
    if-lt v7, v8, :cond_1

    .line 1066
    :cond_0
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    :goto_1
    return v5

    .line 1053
    :cond_1
    aget-object v4, v1, v7

    .line 1055
    .local v4, "network":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v6, :cond_2

    .line 1056
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1057
    const/4 v3, 0x1

    .line 1059
    :cond_2
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_3

    .line 1060
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1061
    const/4 v2, 0x1

    .line 1053
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v4    # "network":Landroid/net/NetworkInfo;
    :cond_4
    move v5, v6

    .line 1066
    goto :goto_1
.end method

.method public postWithIMPIDString(Ljava/lang/String;)V
    .locals 3
    .param p1, "impid"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;-><init>(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 390
    return-void
.end method

.method public setRequestStatus(Ljp/beyond/sdk/BeadConnection$RequestStatus;)V
    .locals 0
    .param p1, "rs"    # Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .prologue
    .line 186
    iput-object p1, p0, Ljp/beyond/sdk/BeadConnection;->mRequestStatus:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    .line 187
    return-void
.end method
