.class public Lcom/deploygate/sdk/DeployGate;
.super Ljava/lang/Object;
.source "DeployGate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;
    }
.end annotation


# static fields
.field private static final ACTION_DEPLOYGATE_STARTED:Ljava/lang/String; = "com.deploygate.action.ServiceStarted"

.field private static final DEPLOYGATE_FINGERPRINTS:[Ljava/lang/String;

.field private static final DEPLOYGATE_PACKAGE:Ljava/lang/String; = "com.deploygate"

.field private static final SDK_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DeployGate"

.field private static sInstance:Lcom/deploygate/sdk/DeployGate;


# instance fields
.field private mAppIsAuthorized:Z

.field private mAppIsManaged:Z

.field private mAppIsStopRequested:Z

.field private mAppUpdateAvailable:Z

.field private mAppUpdateRevision:I

.field private mAppUpdateVersionCode:I

.field private mAppUpdateVersionName:Ljava/lang/String;

.field private final mApplicationContext:Landroid/content/Context;

.field private mAuthor:Ljava/lang/String;

.field private final mCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/deploygate/sdk/DeployGateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mExpectedAuthor:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mIsDeployGateAvailable:Z

.field private mLogcatThread:Ljava/lang/Thread;

.field private mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;

.field private mLoginUsername:Ljava/lang/String;

.field private final mRemoteCallback:Lcom/deploygate/service/IDeployGateSdkServiceCallback;

.field private mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 59
    const-string v2, "2f97f647645cb762bf5fc1445599a954e6ad76e7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 60
    const-string v2, "c1f285f69cc02a397135ed182aa79af53d5d20a1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 61
    const-string v2, "234eff4a1600a7aa78bf68adfbb15786e886ae1a"

    aput-object v2, v0, v1

    .line 58
    sput-object v0, Lcom/deploygate/sdk/DeployGate;->DEPLOYGATE_FINGERPRINTS:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "author"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/deploygate/sdk/DeployGateCallback;

    .prologue
    const/4 v1, 0x1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/deploygate/sdk/DeployGate$1;

    invoke-direct {v0, p0}, Lcom/deploygate/sdk/DeployGate$1;-><init>(Lcom/deploygate/sdk/DeployGate;)V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteCallback:Lcom/deploygate/service/IDeployGateSdkServiceCallback;

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mHandler:Landroid/os/Handler;

    .line 208
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    .line 209
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    .line 210
    iput-object p2, p0, Lcom/deploygate/sdk/DeployGate;->mExpectedAuthor:Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->prepareBroadcastReceiver()V

    .line 214
    if-eqz p3, :cond_0

    .line 215
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 218
    invoke-direct {p0, v1}, Lcom/deploygate/sdk/DeployGate;->initService(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    if-eqz p3, :cond_1

    .line 220
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/deploygate/sdk/DeployGateCallback;->onInitialized(Z)V

    .line 222
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1(Lcom/deploygate/sdk/DeployGate;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mAuthor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/deploygate/sdk/DeployGate;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/deploygate/sdk/DeployGate;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$13(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mIsDeployGateAvailable:Z

    return-void
.end method

.method static synthetic access$14(Lcom/deploygate/sdk/DeployGate;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$15(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateAvailable:Z

    return-void
.end method

.method static synthetic access$16(Lcom/deploygate/sdk/DeployGate;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateRevision:I

    return-void
.end method

.method static synthetic access$17(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateVersionName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/deploygate/sdk/DeployGate;I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateVersionCode:I

    return-void
.end method

.method static synthetic access$19(Lcom/deploygate/sdk/DeployGate;)Z
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->isDeployGateAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/deploygate/sdk/DeployGate;)Lcom/deploygate/service/IDeployGateSdkService;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    return-object v0
.end method

.method static synthetic access$20(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/deploygate/sdk/DeployGate;->bindToService(Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/deploygate/sdk/DeployGate;Lcom/deploygate/service/IDeployGateSdkService;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    return-void
.end method

.method static synthetic access$22(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/deploygate/sdk/DeployGate;->requestServiceInit(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/deploygate/sdk/DeployGate;Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;

    return-void
.end method

.method static synthetic access$4(Lcom/deploygate/sdk/DeployGate;)Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;

    return-object v0
.end method

.method static synthetic access$5(Lcom/deploygate/sdk/DeployGate;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$6(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppIsManaged:Z

    return-void
.end method

.method static synthetic access$7(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppIsAuthorized:Z

    return-void
.end method

.method static synthetic access$8(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppIsStopRequested:Z

    return-void
.end method

.method static synthetic access$9(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLoginUsername:Ljava/lang/String;

    return-void
.end method

.method private bindToService(Z)V
    .locals 4
    .param p1, "isBoot"    # Z

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/deploygate/service/IDeployGateSdkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "com.deploygate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Lcom/deploygate/sdk/DeployGate$4;

    invoke-direct {v2, p0, p1}, Lcom/deploygate/sdk/DeployGate$4;-><init>(Lcom/deploygate/sdk/DeployGate;Z)V

    .line 277
    const/4 v3, 0x1

    .line 265
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 278
    return-void
.end method

.method public static getAuthorUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 668
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 669
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mAuthor:Ljava/lang/String;

    .line 671
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeployGatePackageSignature()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 303
    :try_start_0
    iget-object v7, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 304
    const-string v8, "com.deploygate"

    const/16 v9, 0x40

    .line 303
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 308
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    if-nez v7, :cond_1

    .line 324
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v6

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 313
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 319
    .local v4, "md":Ljava/security/MessageDigest;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 320
    .local v0, "digest":[B
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-lt v2, v6, :cond_2

    .line 324
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 314
    .end local v0    # "digest":[B
    .end local v2    # "i":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "DeployGate"

    const-string v8, "SHA1 is not supported on this platform?"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 322
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "digest":[B
    .restart local v2    # "i":I
    .restart local v4    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :cond_2
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static getInstance()Lcom/deploygate/sdk/DeployGate;
    .locals 1

    .prologue
    .line 873
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    return-object v0
.end method

.method public static getLoginUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 641
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 642
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mLoginUsername:Ljava/lang/String;

    .line 644
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initService(Z)Z
    .locals 3
    .param p1, "isBoot"    # Z

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->isDeployGateAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v0, "DeployGate"

    const-string v1, "DeployGate installation detected. Initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, p1}, Lcom/deploygate/sdk/DeployGate;->bindToService(Z)V

    .line 228
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 230
    :cond_0
    const-string v1, "DeployGate"

    const-string v2, "DeployGate is not available on this device."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 232
    iput-boolean v0, p0, Lcom/deploygate/sdk/DeployGate;->mIsDeployGateAvailable:Z

    .line 233
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate;->callbackDeployGateUnavailable()V

    goto :goto_0
.end method

.method public static install(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public static install(Landroid/app/Application;Lcom/deploygate/sdk/DeployGateCallback;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "callback"    # Lcom/deploygate/sdk/DeployGateCallback;

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V

    .line 397
    return-void
.end method

.method public static install(Landroid/app/Application;Lcom/deploygate/sdk/DeployGateCallback;Z)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "callback"    # Lcom/deploygate/sdk/DeployGateCallback;
    .param p2, "forceApplyOnReleaseBuild"    # Z

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;Z)V

    .line 442
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V

    .line 370
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "author"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/deploygate/sdk/DeployGateCallback;

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Lcom/deploygate/sdk/DeployGateCallback;Z)V

    .line 419
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;Z)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "author"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/deploygate/sdk/DeployGateCallback;
    .param p3, "forceApplyOnReleaseBuild"    # Z

    .prologue
    .line 459
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "install already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_1
    new-instance v0, Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;

    .line 466
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 465
    invoke-direct {v0, v1}, Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 467
    new-instance v0, Lcom/deploygate/sdk/DeployGate;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/deploygate/sdk/DeployGate;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V

    sput-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    goto :goto_0
.end method

.method public static isAuthorized()Z
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 619
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 620
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppIsAuthorized:Z

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDebuggable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 768
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 769
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 771
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 775
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 776
    const/4 v3, 0x1

    .line 778
    :cond_0
    :goto_0
    return v3

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isDeployGateAvailable()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->getDeployGatePackageSignature()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "sig":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    sget-object v4, Lcom/deploygate/sdk/DeployGate;->DEPLOYGATE_FINGERPRINTS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 243
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    const/4 v2, 0x1

    goto :goto_0

    .line 242
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isDeployGateAvaliable()Z
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 569
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 570
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mIsDeployGateAvailable:Z

    .line 572
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 547
    sget-object v1, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v1, :cond_0

    .line 548
    sget-object v1, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v1, v1, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 550
    :cond_0
    return v0
.end method

.method public static isManaged()Z
    .locals 1

    .prologue
    .line 592
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 593
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 594
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppIsManaged:Z

    .line 596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStopRequested()Z
    .locals 1

    .prologue
    .line 752
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 753
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 754
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppIsStopRequested:Z

    .line 756
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 714
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 715
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const-string v1, "debug"

    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_0
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 684
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 685
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const-string v1, "error"

    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 729
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 730
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const-string v1, "info"

    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 745
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const-string v1, "verbose"

    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_0
    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 699
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const-string v1, "warn"

    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    return-void
.end method

.method private prepareBroadcastReceiver()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.deploygate.action.ServiceStarted"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Lcom/deploygate/sdk/DeployGate$3;

    invoke-direct {v2, p0}, Lcom/deploygate/sdk/DeployGate$3;-><init>(Lcom/deploygate/sdk/DeployGate;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    return-void
.end method

.method public static refresh()V
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    invoke-direct {v0}, Lcom/deploygate/sdk/DeployGate;->refreshInternal()V

    .line 483
    :cond_0
    return-void
.end method

.method private refreshInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 486
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 488
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    if-nez v0, :cond_1

    .line 489
    invoke-direct {p0, v4}, Lcom/deploygate/sdk/DeployGate;->initService(Z)Z

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-direct {p0, v4}, Lcom/deploygate/sdk/DeployGate;->requestServiceInit(Z)V

    goto :goto_0
.end method

.method public static registerCallback(Lcom/deploygate/sdk/DeployGateCallback;Z)V
    .locals 1
    .param p0, "listener"    # Lcom/deploygate/sdk/DeployGateCallback;
    .param p1, "refreshImmediately"    # Z

    .prologue
    .line 508
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    if-eqz p0, :cond_0

    .line 513
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    invoke-direct {v0, p0, p1}, Lcom/deploygate/sdk/DeployGate;->registerCallbackInternal(Lcom/deploygate/sdk/DeployGateCallback;Z)V

    goto :goto_0
.end method

.method private registerCallbackInternal(Lcom/deploygate/sdk/DeployGateCallback;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/deploygate/sdk/DeployGateCallback;
    .param p2, "callbackImmediately"    # Z

    .prologue
    .line 517
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 518
    if-eqz p2, :cond_0

    .line 519
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->refresh()V

    .line 520
    :cond_0
    return-void
.end method

.method private requestServiceInit(Z)V
    .locals 5
    .param p1, "isBoot"    # Z

    .prologue
    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "isBoot"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    const-string v2, "canLogCat"

    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate;->canLogCat()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    const-string v2, "expectedAuthor"

    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate;->mExpectedAuthor:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "sdkVersion"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteCallback:Lcom/deploygate/service/IDeployGateSdkServiceCallback;

    iget-object v4, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/deploygate/service/IDeployGateSdkService;->init(Lcom/deploygate/service/IDeployGateSdkServiceCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DeployGate"

    const-string v3, "DeployGate service failed to be initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unregisterCallback(Lcom/deploygate/sdk/DeployGateCallback;)V
    .locals 1
    .param p0, "listener"    # Lcom/deploygate/sdk/DeployGateCallback;

    .prologue
    .line 530
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    if-eqz p0, :cond_0

    .line 535
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static waitForInitialized()V
    .locals 3

    .prologue
    .line 761
    :try_start_0
    sget-object v1, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v1, v1, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 762
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 763
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v1, "DeployGate"

    const-string v2, "Interrupted while waiting initialization"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method callbackDeployGateUnavailable()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deploygate/sdk/DeployGate$2;

    invoke-direct {v1, p0}, Lcom/deploygate/sdk/DeployGate$2;-><init>(Lcom/deploygate/sdk/DeployGate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method protected canLogCat()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 294
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.READ_LOGS"

    .line 297
    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendCrashReport(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 877
    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    if-nez v2, :cond_0

    .line 887
    :goto_0
    return-void

    .line 879
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 880
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "exception"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 882
    :try_start_0
    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 883
    const-string v4, "reportCrash"

    .line 882
    invoke-interface {v2, v3, v4, v1}, Lcom/deploygate/service/IDeployGateSdkService;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DeployGate"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to send crash report: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 890
    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    if-nez v2, :cond_0

    .line 901
    :goto_0
    return-void

    .line 892
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 893
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "log"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 894
    const-string v2, "logType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 896
    :try_start_0
    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 897
    const-string v4, "customLog"

    .line 896
    invoke-interface {v2, v3, v4, v1}, Lcom/deploygate/service/IDeployGateSdkService;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DeployGate"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to send custom log: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
