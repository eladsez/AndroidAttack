.class Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;
.super Landroid/os/AsyncTask;
.source "BeadConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/BeadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncBeadConnectionPost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAM_IMPID:Ljava/lang/String; = "impid"

.field private static final REQUEST_IMP_URL_PATH:Ljava/lang/String; = "/imp/beacon.gif"

.field public static final REQUEST_URL_DOMAIN:Ljava/lang/String; = ".exit-ad.com"

.field private static final REQUEST_URL_HOST:Ljava/lang/String; = "d"

.field private static final REQUEST_URL_PATH:Ljava/lang/String; = "/ad/json/"

.field private static final REQUEST_URL_SCHEME:Ljava/lang/String; = "http"


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/BeadConnection;


# direct methods
.method private constructor <init>(Ljp/beyond/sdk/BeadConnection;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/beyond/sdk/BeadConnection;Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;)V
    .locals 0

    .prologue
    .line 958
    invoke-direct {p0, p1}, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;-><init>(Ljp/beyond/sdk/BeadConnection;)V

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 1028
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "impid"    # [Ljava/lang/String;

    .prologue
    .line 1033
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;->postWithIMPIDString(Ljava/lang/String;)V

    .line 1034
    const/4 v0, 0x0

    return-object v0
.end method

.method public postWithIMPIDString(Ljava/lang/String;)V
    .locals 12
    .param p1, "impid"    # Ljava/lang/String;

    .prologue
    .line 980
    const-string v8, ""

    .line 981
    .local v8, "url":Ljava/lang/String;
    const-string v6, ""

    .line 982
    .local v6, "strResponse":Ljava/lang/String;
    const/4 v4, 0x0

    .line 984
    .local v4, "is":Ljava/io/InputStream;
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 985
    .local v7, "uri":Landroid/net/Uri$Builder;
    const-string v10, "http"

    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 986
    const-string v10, "d.exit-ad.com"

    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 987
    const-string v10, "/imp/beacon.gif"

    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 989
    iget-object v10, p0, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;->this$0:Ljp/beyond/sdk/BeadConnection;

    invoke-virtual {v10}, Ljp/beyond/sdk/BeadConnection;->getRequestStatus()Ljp/beyond/sdk/BeadConnection$RequestStatus;

    move-result-object v10

    sget-object v11, Ljp/beyond/sdk/BeadConnection$RequestStatus;->Cancelling:Ljp/beyond/sdk/BeadConnection$RequestStatus;

    if-ne v10, v11, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 992
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-le v10, v11, :cond_1

    .line 994
    new-instance v10, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 995
    .local v5, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 999
    .end local v5    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_1
    if-eqz p1, :cond_2

    .line 1000
    const-string v10, "impid"

    invoke-virtual {v7, v10, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1003
    :cond_2
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1007
    const/4 v9, 0x0

    .line 1010
    .local v9, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v1, "Url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 1012
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 1013
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 1012
    invoke-direct {v3, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1016
    .local v3, "in":Ljava/io/BufferedInputStream;
    const-string v10, "BEAD POST "

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const-string v10, "BEAD RESPONSE: "

    invoke-direct {p0, v3}, Ljp/beyond/sdk/BeadConnection$AsyncBeadConnectionPost;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1019
    .end local v1    # "Url":Ljava/net/URL;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 1020
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1024
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1021
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 1022
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1023
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 1024
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1025
    throw v10
.end method
