.class public Lcom/mobclick/android/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Notification;

.field private g:Landroid/app/NotificationManager;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/mobclick/android/a;->b:I

    const-string v0, "\u672a\u8054\u7f51\uff0c\u66f4\u65b0\u5931\u8d25"

    iput-object v0, p0, Lcom/mobclick/android/a;->i:Ljava/lang/String;

    const-string v0, "Please make sure you are connected to internet, update failed"

    iput-object v0, p0, Lcom/mobclick/android/a;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mobclick/android/a;->k:Z

    iput-boolean v1, p0, Lcom/mobclick/android/a;->l:Z

    sget v0, Lcom/mobclick/android/d;->a:I

    iput v0, p0, Lcom/mobclick/android/a;->m:I

    new-instance v0, Lcom/mobclick/android/b;

    invoke-direct {v0, p0}, Lcom/mobclick/android/b;-><init>(Lcom/mobclick/android/a;)V

    iput-object v0, p0, Lcom/mobclick/android/a;->n:Landroid/os/Handler;

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/mobclick/android/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "initialization error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclick/android/a;->k:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "getIdByReflection error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobclick/android/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclick/android/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mobclick/android/a;->e()V

    iget v0, p0, Lcom/mobclick/android/a;->m:I

    sget v1, Lcom/mobclick/android/d;->b:I

    if-ne v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/mobclick/android/a;->k:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclick/android/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobclick/android/a;->e:Ljava/lang/String;

    const v0, 0x1080081

    iput v0, p0, Lcom/mobclick/android/a;->h:I

    new-instance v0, Landroid/app/Notification;

    iget v1, p0, Lcom/mobclick/android/a;->h:I

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, p3, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iget-object v0, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "umeng_download_notification"

    invoke-direct {p0, v2, v3}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "id"

    const-string v2, "progress_bar"

    invoke-direct {p0, v1, v2}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const-string v1, "id"

    const-string v2, "progress_text"

    invoke-direct {p0, v1, v2}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "0%"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "id"

    const-string v2, "title"

    invoke-direct {p0, v1, v2}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "id"

    const-string v2, "description"

    invoke-direct {p0, v1, v2}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "id"

    const-string v2, "appIcon"

    invoke-direct {p0, v1, v2}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/mobclick/android/a;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iget-object v2, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mobclick/android/a;->g:Landroid/app/NotificationManager;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/mobclick/android/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobclick/android/a;->k:Z

    return-void
.end method

.method static synthetic b(Lcom/mobclick/android/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclick/android/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mobclick/android/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mobclick/android/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mobclick/android/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/mobclick/android/a;->k:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/mobclick/android/a;->g:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclick/android/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mobclick/android/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobclick/android/a;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/mobclick/android/a;->g:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/mobclick/android/a;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "cannot save to sd card"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/mobclick/android/a;->k:Z

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)[B
    .locals 12

    const/4 v11, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/mobclick/android/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclick/android/a;->g:Landroid/app/NotificationManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v11

    move v5, v11

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_0

    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    move v2, v11

    :goto_2
    if-lt v2, v0, :cond_4

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_0
    add-int/2addr v4, v6

    move v7, v11

    :goto_4
    if-lt v7, v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    iget v7, p0, Lcom/mobclick/android/a;->b:I

    rem-int/2addr v5, v7

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/mobclick/android/a;->f()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclick/android/a;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "can not save to memory"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    :try_start_1
    aget-byte v8, v2, v7

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_2
    int-to-float v5, v4

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v5, v7

    int-to-float v7, v0

    div-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v7, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v8, "id"

    const-string v9, "progress_bar"

    invoke-direct {p0, v8, v9}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x64

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v5, v10}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v7, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v8, "id"

    const-string v9, "progress_text"

    invoke-direct {p0, v8, v9}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/mobclick/android/a;->g:Landroid/app/NotificationManager;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    invoke-virtual {v5, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    move v5, v6

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/mobclick/android/a;)I
    .locals 1

    iget v0, p0, Lcom/mobclick/android/a;->m:I

    return v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclick/android/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobclick/android/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mobclick/android/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/mobclick/android/a;->k:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/mobclick/android/a;->g:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclick/android/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobclick/android/a;->d:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/mobclick/android/a;->g:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/mobclick/android/a;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "can not save to memory"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/mobclick/android/a;->k:Z

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    invoke-direct {p0}, Lcom/mobclick/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mobclick/android/a;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget v0, Lcom/mobclick/android/d;->b:I

    iput v0, p0, Lcom/mobclick/android/a;->m:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mobclick/android/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/mobclick/android/d;->c:I

    iput v0, p0, Lcom/mobclick/android/a;->m:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/mobclick/android/d;->a:I

    iput v0, p0, Lcom/mobclick/android/a;->m:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/mobclick/android/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclick/android/a;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/mobclick/android/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobclick/android/a;->d()V

    return-void
.end method

.method private f()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/mobclick/android/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobclick/android/a;->c()V

    return-void
.end method

.method private g()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobclick/android/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclick/android/a;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclick/android/a;->j:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iput p1, p0, Lcom/mobclick/android/a;->h:I

    iget-object v0, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "id"

    const-string v2, "appIcon"

    invoke-direct {p0, v1, v2}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mobclick/android/a;->f:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "id"

    const-string v2, "title"

    invoke-direct {p0, v1, v2}, Lcom/mobclick/android/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobclick/android/a;->l:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclick/android/a;->k:Z

    return v0
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/mobclick/android/a;->k:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mobclick/android/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mobclick/android/a;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/mobclick/android/c;

    invoke-direct {v0, p0}, Lcom/mobclick/android/c;-><init>(Lcom/mobclick/android/a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclick/android/a;->c:Ljava/lang/String;

    return-void
.end method
