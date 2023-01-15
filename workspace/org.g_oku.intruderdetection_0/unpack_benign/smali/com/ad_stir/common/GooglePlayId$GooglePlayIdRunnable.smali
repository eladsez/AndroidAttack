.class Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;
.super Ljava/lang/Object;
.source "GooglePlayId.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/common/GooglePlayId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GooglePlayIdRunnable"
.end annotation


# static fields
.field private static final GOOGLEID_CLASS:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"


# instance fields
.field private final callback:Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;->callback:Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;

    .line 69
    return-void
.end method

.method private static classCheck(Ljava/lang/String;)Z
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ad_stir/common/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ad_stir/common/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, "gid":Ljava/lang/String;
    :try_start_0
    const-string v4, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v4}, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;->classCheck(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const-class v3, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapterImpl;

    .line 77
    .local v3, "googlePlayIdAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;

    .line 78
    .local v0, "adapter":Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;
    iget-object v4, p0, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;->getId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 84
    .end local v0    # "adapter":Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;
    .end local v3    # "googlePlayIdAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;>;"
    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;->callback:Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;

    invoke-interface {v4, v2}, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;->returnGooglePlayId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 86
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
