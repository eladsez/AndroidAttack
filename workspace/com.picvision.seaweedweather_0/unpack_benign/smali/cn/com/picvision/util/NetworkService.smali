.class public Lcn/com/picvision/util/NetworkService;
.super Ljava/lang/Object;
.source "NetworkService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcn/com/picvision/util/NetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/NetworkService;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/com/picvision/util/NetworkService;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/util/NetworkService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/com/picvision/util/NetworkService;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getActiveNetInfos()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "netArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    invoke-virtual {p0}, Lcn/com/picvision/util/NetworkService;->getAllNetInfos()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 59
    .local v1, "infos":[Landroid/net/NetworkInfo;
    array-length v3, v1

    .line 60
    .local v3, "netLength":I
    const/4 v4, 0x0

    .line 61
    .local v4, "network":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 67
    return-object v2

    .line 62
    :cond_0
    aget-object v4, v1, v0

    .line 63
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_2

    .line 64
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAllNetInfos()[Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcn/com/picvision/util/NetworkService;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getTypeNetInfos(I)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "netType"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcn/com/picvision/util/NetworkService;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 131
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public isActiveNetworks()Z
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "isActive":Z
    invoke-virtual {p0}, Lcn/com/picvision/util/NetworkService;->getActiveNetInfos()Ljava/util/ArrayList;

    move-result-object v1

    .line 79
    .local v1, "netInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 81
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/com/picvision/util/NetworkService;->isActiveNetworks(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/com/picvision/util/NetworkService;->isActiveNetworks(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const/4 v0, 0x1

    .line 94
    :cond_1
    :goto_0
    return v0

    .line 88
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isActiveNetworks(I)Z
    .locals 4
    .param p1, "netType"    # I

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "isActive":Z
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/com/picvision/util/NetworkService$1;

    invoke-direct {v3, p0, p1}, Lcn/com/picvision/util/NetworkService$1;-><init>(Lcn/com/picvision/util/NetworkService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 114
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    invoke-virtual {p0, p1}, Lcn/com/picvision/util/NetworkService;->getTypeNetInfos(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 119
    const/4 v1, 0x1

    .line 121
    :cond_0
    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public isHasNetWork()Z
    .locals 5

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "isHas":Z
    iget-object v3, p0, Lcn/com/picvision/util/NetworkService;->context:Landroid/content/Context;

    .line 33
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 35
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 36
    .local v2, "netInfos":[Landroid/net/NetworkInfo;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 39
    :cond_0
    return v1
.end method
