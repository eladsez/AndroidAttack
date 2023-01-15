.class public Lcom/waps/o;
.super Landroid/os/AsyncTask;


# static fields
.field public static g:Z

.field protected static h:Z

.field private static s:Landroid/content/Context;


# instance fields
.field a:Lcom/waps/p;

.field b:Lcom/waps/q;

.field c:I

.field d:Lcom/waps/r;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field i:F

.field j:F

.field k:Ljava/text/NumberFormat;

.field l:F

.field m:Ljava/io/InputStream;

.field n:Ljava/io/FileOutputStream;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/o;->g:Z

    sput-boolean v0, Lcom/waps/o;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v5, "/"

    const-string v3, "http://"

    const-string v2, ""

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/o;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/o;->f:Ljava/lang/String;

    iput v1, p0, Lcom/waps/o;->i:F

    iput v1, p0, Lcom/waps/o;->j:F

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waps/o;->k:Ljava/text/NumberFormat;

    iput-object v4, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/o;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/o;->p:Ljava/lang/String;

    sput-object p1, Lcom/waps/o;->s:Landroid/content/Context;

    iput-object p2, p0, Lcom/waps/o;->r:Landroid/view/View;

    iput-object p3, p0, Lcom/waps/o;->q:Ljava/lang/String;

    const-string v0, "http://"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    const-string v1, "/"

    const-string v1, "http://"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p3, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/o;->e:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/"

    const-string v1, "http://"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p3, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/o;->f:Ljava/lang/String;

    new-instance v0, Lcom/waps/p;

    sget-object v1, Lcom/waps/o;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/waps/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waps/o;->a:Lcom/waps/p;

    new-instance v0, Lcom/waps/r;

    invoke-direct {v0}, Lcom/waps/r;-><init>()V

    iput-object v0, p0, Lcom/waps/o;->d:Lcom/waps/r;

    sget-object v0, Lcom/waps/o;->s:Landroid/content/Context;

    sget-object v1, Lcom/waps/o;->s:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/waps/o;->d:Lcom/waps/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/r;->a(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, -0x1

    const-string v9, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/waps/o;->c:I

    iget-object v0, p0, Lcom/waps/o;->a:Lcom/waps/p;

    iget-object v1, p0, Lcom/waps/o;->r:Landroid/view/View;

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u6587\u4ef6\u540d..."

    iget v3, p0, Lcom/waps/o;->c:I

    const-string v4, "0 %"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waps/p;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/waps/o;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/waps/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/o;->o:Ljava/lang/String;

    const-string v0, "/sdcard/download/"

    iput-object v0, p0, Lcom/waps/o;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/o;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/waps/o;->b(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/waps/o;->i:F

    iget-object v0, p0, Lcom/waps/o;->d:Lcom/waps/r;

    invoke-virtual {v0}, Lcom/waps/r;->a()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/waps/o;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/waps/o;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/waps/o;->o:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    :goto_1
    iget-object v0, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    const v0, 0xc800

    new-array v6, v0, [B

    :goto_2
    iget-object v0, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v10, :cond_2

    iget-object v1, p0, Lcom/waps/o;->k:Ljava/text/NumberFormat;

    iget v2, p0, Lcom/waps/o;->l:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_9

    iget-object v0, p0, Lcom/waps/o;->a:Lcom/waps/p;

    iget-object v1, p0, Lcom/waps/o;->r:Landroid/view/View;

    iget-object v2, p0, Lcom/waps/o;->o:Ljava/lang/String;

    iget v3, p0, Lcom/waps/o;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/waps/o;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/waps/o;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual/range {v0 .. v5}, Lcom/waps/p;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    if-ne v0, v10, :cond_3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/o;->h:Z

    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/o;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/o;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    :goto_3
    iget-object v0, p0, Lcom/waps/o;->o:Ljava/lang/String;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/waps/o;->a:Lcom/waps/p;

    iget-object v1, p0, Lcom/waps/o;->r:Landroid/view/View;

    iget-object v2, p0, Lcom/waps/o;->o:Ljava/lang/String;

    iget v3, p0, Lcom/waps/o;->c:I

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210,\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual/range {v0 .. v5}, Lcom/waps/p;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/o;->g:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/waps/o;->s:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/waps/q;

    iget-object v1, p0, Lcom/waps/o;->a:Lcom/waps/p;

    iget v2, p0, Lcom/waps/o;->c:I

    iget-object v3, p0, Lcom/waps/o;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/waps/q;-><init>(Lcom/waps/p;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/waps/o;->b:Lcom/waps/q;

    iget-object v0, p0, Lcom/waps/o;->b:Lcom/waps/q;

    invoke-virtual {p0, v0}, Lcom/waps/o;->a(Lcom/waps/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_5
    :goto_5
    const-string v0, ""

    return-object v9

    :cond_6
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, p1, v0

    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    const-string v4, "http"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v3, p0, Lcom/waps/o;->e:Ljava/lang/String;

    const/16 v4, 0x50

    const-string v5, "http"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/waps/o;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v4, 0x3a98

    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v4, 0x7530

    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v5, "http.route.default-proxy"

    invoke-interface {v0, v5, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/waps/o;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/waps/o;->o:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_8
    iget-object v0, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_9
    :try_start_5
    iget-object v1, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iget v1, p0, Lcom/waps/o;->j:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/waps/o;->j:F

    iget v0, p0, Lcom/waps/o;->j:F

    iget v1, p0, Lcom/waps/o;->i:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/waps/o;->l:F

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/waps/o;->j:F

    iget v3, p0, Lcom/waps/o;->i:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/waps/o;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/waps/o;->k:Ljava/text/NumberFormat;

    iget v1, p0, Lcom/waps/o;->l:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/o;->a:Lcom/waps/p;

    iget-object v1, p0, Lcom/waps/o;->r:Landroid/view/View;

    iget-object v2, p0, Lcom/waps/o;->o:Ljava/lang/String;

    iget v3, p0, Lcom/waps/o;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/waps/o;->k:Ljava/text/NumberFormat;

    iget v7, p0, Lcom/waps/o;->l:F

    float-to-double v7, v7

    invoke-virtual {v5, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " %"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waps/p;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/o;->h:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/waps/o;->m:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a
    iget-object v1, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/waps/o;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_b
    :goto_6
    throw v0

    :cond_c
    :try_start_7
    sget-object v0, Lcom/waps/o;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/waps/o;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/waps/o;->a:Lcom/waps/p;

    iget-object v1, p0, Lcom/waps/o;->r:Landroid/view/View;

    iget-object v2, p0, Lcom/waps/o;->o:Ljava/lang/String;

    iget v3, p0, Lcom/waps/o;->c:I

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210\uff01"

    invoke-virtual/range {v0 .. v5}, Lcom/waps/p;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_5
.end method

.method protected a(Lcom/waps/q;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lcom/waps/o;->s:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected b(Ljava/lang/String;)J
    .locals 6

    const/16 v4, 0x50

    const-string v5, "http"

    iget-object v0, p0, Lcom/waps/o;->d:Lcom/waps/r;

    invoke-virtual {v0}, Lcom/waps/r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "10.0.0.172"

    const-string v2, "http"

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/waps/o;->e:Ljava/lang/String;

    const-string v3, "http"

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waps/o;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v4, 0x3a98

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v4, 0x7530

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v5, "http.route.default-proxy"

    invoke-interface {v2, v5, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waps/o;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
