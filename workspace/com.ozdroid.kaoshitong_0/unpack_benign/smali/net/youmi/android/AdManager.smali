.class public Lnet/youmi/android/AdManager;
.super Ljava/lang/Object;


# static fields
.field static a:J

.field static b:Lnet/youmi/android/y;

.field private static c:Z

.field private static d:Z

.field private static e:J

.field private static f:J

.field private static g:J

.field private static h:Z

.field private static i:J

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    sput-boolean v1, Lnet/youmi/android/AdManager;->c:Z

    sput-wide v2, Lnet/youmi/android/AdManager;->a:J

    sput-boolean v1, Lnet/youmi/android/AdManager;->d:Z

    sput-wide v2, Lnet/youmi/android/AdManager;->e:J

    const/4 v0, 0x0

    sput-object v0, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    sput-wide v2, Lnet/youmi/android/AdManager;->f:J

    sput-wide v2, Lnet/youmi/android/AdManager;->g:J

    sput-boolean v1, Lnet/youmi/android/AdManager;->h:Z

    const-wide/32 v0, 0x30d40

    sput-wide v0, Lnet/youmi/android/AdManager;->i:J

    sput-wide v2, Lnet/youmi/android/AdManager;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()J
    .locals 2

    sget-wide v0, Lnet/youmi/android/AdManager;->g:J

    return-wide v0
.end method

.method static a(J)J
    .locals 4

    :try_start_0
    sget-wide v0, Lnet/youmi/android/AdManager;->a:J

    invoke-static {}, Lnet/youmi/android/am;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x3a98

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sub-long/2addr v0, p0

    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/AdView;)J
    .locals 9

    const/4 v1, -0x1

    const-wide/32 v7, 0xea60

    const/4 v6, 0x0

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    move-wide v0, v7

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "Cannot request an ad without READ_PHONE_STATE permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.READ_PHONE_STATE\" />"

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    move-wide v0, v7

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "Cannot request an ad without ACCESS_NETWORK_STATE permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    move-wide v0, v7

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lnet/youmi/android/AdManager;->b()V

    sget-boolean v2, Lnet/youmi/android/AdManager;->h:Z

    if-eqz v2, :cond_3

    sget-wide v2, Lnet/youmi/android/AdManager;->j:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xc350

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    invoke-static {p1}, Lnet/youmi/android/AdManager;->a(Lnet/youmi/android/AdView;)V

    invoke-static {v0, v1}, Lnet/youmi/android/AdManager;->a(J)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    sput-wide v0, Lnet/youmi/android/AdManager;->j:J

    const/4 v2, 0x1

    sput-boolean v2, Lnet/youmi/android/AdManager;->h:Z

    invoke-static {p0}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;)V

    :try_start_0
    sget-wide v2, Lnet/youmi/android/AdManager;->a:J

    sub-long v2, v0, v2

    invoke-static {}, Lnet/youmi/android/am;->b()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_9

    invoke-static {}, Lnet/youmi/android/am;->d()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    sget-boolean v2, Lnet/youmi/android/AdManager;->d:Z

    if-eqz v2, :cond_6

    sget-wide v2, Lnet/youmi/android/AdManager;->e:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v7

    if-ltz v2, :cond_5

    sget-object v2, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_4

    :try_start_1
    new-instance v2, Lnet/youmi/android/x;

    invoke-direct {v2}, Lnet/youmi/android/x;-><init>()V

    sget-object v3, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    invoke-virtual {v2, p1, v3}, Lnet/youmi/android/x;->a(Lnet/youmi/android/AdView;Lnet/youmi/android/y;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    :try_start_2
    invoke-static {p0, p1, v0, v1}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;Lnet/youmi/android/AdView;J)J

    move-result-wide v2

    const/4 v4, 0x0

    sput-boolean v4, Lnet/youmi/android/AdManager;->h:Z

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12f

    invoke-static {v2, v3}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xba

    invoke-static {v2, v3}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    sput-boolean v6, Lnet/youmi/android/AdManager;->h:Z

    sput-boolean v6, Lnet/youmi/android/AdManager;->h:Z

    invoke-static {v0, v1}, Lnet/youmi/android/AdManager;->a(J)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-static {p1}, Lnet/youmi/android/AdManager;->a(Lnet/youmi/android/AdView;)V

    const/4 v2, 0x0

    sput-boolean v2, Lnet/youmi/android/AdManager;->h:Z

    invoke-static {v0, v1}, Lnet/youmi/android/AdManager;->a(J)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v2, :cond_7

    :try_start_4
    new-instance v2, Lnet/youmi/android/x;

    invoke-direct {v2}, Lnet/youmi/android/x;-><init>()V

    sget-object v3, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    iput-object v3, v2, Lnet/youmi/android/x;->b:Lnet/youmi/android/y;

    iput-object p1, v2, Lnet/youmi/android/x;->a:Lnet/youmi/android/AdView;

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_2
    :try_start_5
    invoke-static {p0, p1, v0, v1}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;Lnet/youmi/android/AdView;J)J

    move-result-wide v2

    const/4 v4, 0x0

    sput-boolean v4, Lnet/youmi/android/AdManager;->h:Z

    move-wide v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lnet/youmi/android/AdManager;->a(Lnet/youmi/android/AdView;)V

    const/4 v2, 0x0

    sput-boolean v2, Lnet/youmi/android/AdManager;->h:Z

    invoke-static {v0, v1}, Lnet/youmi/android/AdManager;->a(J)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Lnet/youmi/android/AdManager;->a(Lnet/youmi/android/AdView;)V

    const/4 v2, 0x0

    sput-boolean v2, Lnet/youmi/android/AdManager;->h:Z

    invoke-static {v0, v1}, Lnet/youmi/android/AdManager;->a(J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v0

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/AdView;J)J
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lnet/youmi/android/AdManager;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/youmi/android/AdManager;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lnet/youmi/android/AdView;->getAdW()I

    move-result v0

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->getAdH()I

    move-result v1

    invoke-static {p0, v0, v1}, Lnet/youmi/android/bp;->a(Landroid/content/Context;II)Lnet/youmi/android/cl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/youmi/android/cl;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-wide v1, Lnet/youmi/android/AdManager;->a:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    sput-wide v1, Lnet/youmi/android/AdManager;->a:J

    invoke-virtual {v0}, Lnet/youmi/android/cl;->a()Lnet/youmi/android/y;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lnet/youmi/android/AdManager;->b(Lnet/youmi/android/AdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lnet/youmi/android/AdManager;->d:Z

    invoke-static {p2, p3}, Lnet/youmi/android/AdManager;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lnet/youmi/android/cl;->a()Lnet/youmi/android/y;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;Lnet/youmi/android/y;Lnet/youmi/android/AdView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbc

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Lnet/youmi/android/cl;->a()Lnet/youmi/android/y;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/youmi/android/cl;->a()Lnet/youmi/android/y;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;Lnet/youmi/android/y;Lnet/youmi/android/AdView;)V

    goto :goto_0

    :cond_3
    const-string v0, "get ad failed"

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/cj;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/youmi/android/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sendStartUpLog1"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    new-instance v0, Lnet/youmi/android/p;

    invoke-direct {v0}, Lnet/youmi/android/p;-><init>()V

    invoke-virtual {v0, p0}, Lnet/youmi/android/p;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    sget-object v0, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    iget-object v1, v0, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    invoke-virtual {v0, p0, p1, p2}, Lnet/youmi/android/bl;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbd

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/y;Lnet/youmi/android/AdView;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lnet/youmi/android/AdManager;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/youmi/android/AdManager;->a:J

    if-eqz p1, :cond_0

    sput-object p1, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    invoke-virtual {p1}, Lnet/youmi/android/y;->f()I

    move-result v0

    invoke-virtual {p1}, Lnet/youmi/android/y;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p1, Lnet/youmi/android/y;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lnet/youmi/android/f;

    invoke-direct {v3, p0, v0, v1}, Lnet/youmi/android/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lnet/youmi/android/AdView;->OnAdLoad()V

    invoke-static {p2}, Lnet/youmi/android/AdManager;->a(Lnet/youmi/android/AdView;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb5

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    :try_start_3
    const-string v0, " load ad faild"

    invoke-static {v0}, Lnet/youmi/android/ak;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private static a(Lnet/youmi/android/AdView;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/y;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb8

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;IILandroid/os/Handler;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string v0, "context is null,click cancel"

    invoke-static {v0}, Lnet/youmi/android/ak;->e(Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    if-nez v0, :cond_1

    const-string v0, "ad is null,click cancel"

    invoke-static {v0}, Lnet/youmi/android/ak;->e(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/youmi/android/AdManager;->b:Lnet/youmi/android/y;

    invoke-virtual {v2}, Lnet/youmi/android/y;->c()Lnet/youmi/android/bm;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/bm;->c:Lnet/youmi/android/bm;

    if-ne v0, v1, :cond_3

    new-instance v0, Lnet/youmi/android/cm;

    invoke-direct {v0}, Lnet/youmi/android/cm;-><init>()V

    const-string v3, "\u5373\u5c06\u52a0\u8f7d\u5e7f\u544a\u5927\u56fe,\u662f\u5426\u7ee7\u7eed?"

    const-string v4, "\u7ee7\u7eed"

    const-string v5, "\u53d6\u6d88"

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lnet/youmi/android/cm;->a(Landroid/content/Context;Lnet/youmi/android/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :cond_2
    :goto_1
    move v0, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lnet/youmi/android/y;->c()Lnet/youmi/android/bm;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/bm;->a:Lnet/youmi/android/bm;

    if-ne v0, v1, :cond_5

    iget-boolean v0, v2, Lnet/youmi/android/y;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, v2, Lnet/youmi/android/y;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_0

    :cond_4
    iget-object v0, v2, Lnet/youmi/android/y;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, v2, Lnet/youmi/android/y;->b:I

    iget-object v1, v2, Lnet/youmi/android/y;->a:Ljava/lang/String;

    iget-object v3, v2, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;

    invoke-static {p0, v0, v1, v3}, Lnet/youmi/android/AdManager;->a(Landroid/content/Context;ILjava/lang/String;Lnet/youmi/android/bm;)Z

    const/4 v0, 0x1

    iput-boolean v0, v2, Lnet/youmi/android/y;->c:Z

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lnet/youmi/android/y;->c()Lnet/youmi/android/bm;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/bm;->b:Lnet/youmi/android/bm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    :try_start_1
    new-instance v5, Lnet/youmi/android/ac;

    invoke-direct {v5}, Lnet/youmi/android/ac;-><init>()V

    const-string v0, "\u52a0\u8f7d\u4e2d"

    const-string v1, "\u53d6\u6d88\u52a0\u8f7d"

    invoke-virtual {v5, p0, p3, v0, v1}, Lnet/youmi/android/ac;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v2, Lnet/youmi/android/y;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, v2, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    if-nez v0, :cond_7

    :cond_6
    iget v0, v2, Lnet/youmi/android/y;->b:I

    iget-object v1, v2, Lnet/youmi/android/y;->a:Ljava/lang/String;

    iget-object v3, v2, Lnet/youmi/android/y;->g:Lnet/youmi/android/bm;

    invoke-static {p0, v0, v1, v3, v5}, Lnet/youmi/android/bp;->a(Landroid/content/Context;ILjava/lang/String;Lnet/youmi/android/bm;Lnet/youmi/android/u;)Lnet/youmi/android/ae;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v2, Lnet/youmi/android/y;->c:Z

    invoke-virtual {v0}, Lnet/youmi/android/ae;->a()Lnet/youmi/android/bl;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lnet/youmi/android/ae;->a()Lnet/youmi/android/bl;

    move-result-object v0

    iput-object v0, v2, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    :cond_7
    iget-object v0, v2, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Lnet/youmi/android/ac;->c()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    iget-object v1, v2, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    invoke-virtual {v1}, Lnet/youmi/android/bl;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v2, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    invoke-virtual {v1}, Lnet/youmi/android/bl;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v0, v2, Lnet/youmi/android/y;->e:Lnet/youmi/android/bl;

    invoke-virtual {v0}, Lnet/youmi/android/bl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lnet/youmi/android/az;->b(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    :goto_2
    new-instance v0, Lnet/youmi/android/z;

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/z;-><init>(Landroid/content/Context;Lnet/youmi/android/y;Landroid/os/Handler;Landroid/graphics/Bitmap;Lnet/youmi/android/ac;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Lnet/youmi/android/ac;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb7

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    iget-object v0, v2, Lnet/youmi/android/y;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lnet/youmi/android/y;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-nez v0, :cond_8

    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, v2, Lnet/youmi/android/y;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :cond_a
    move-object v4, v0

    goto :goto_2
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2}, Lnet/youmi/android/bp;->a(Landroid/content/Context;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;Lnet/youmi/android/bm;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/youmi/android/g;-><init>(Landroid/content/Context;ILjava/lang/String;Lnet/youmi/android/bm;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b()V
    .locals 6

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lnet/youmi/android/AdManager;->f:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sget-wide v2, Lnet/youmi/android/AdManager;->f:J

    sub-long v2, v0, v2

    :goto_0
    sget-wide v4, Lnet/youmi/android/AdManager;->i:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    sget-wide v4, Lnet/youmi/android/AdManager;->g:J

    add-long/2addr v2, v4

    sput-wide v2, Lnet/youmi/android/AdManager;->g:J

    :cond_0
    sput-wide v0, Lnet/youmi/android/AdManager;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-wide v2, v4

    goto :goto_0
.end method

.method private static b(Lnet/youmi/android/AdView;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/AdView;->ConnectFaild()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    invoke-static {p3}, Lnet/youmi/android/cj;->a(Z)V

    invoke-static {p0}, Lnet/youmi/android/am;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/youmi/android/am;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lnet/youmi/android/am;->a(I)V

    const-string v0, "current sdk version is youmi android sdk 2.1.1"

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App ID is set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App Sec is set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requesting fresh ads every "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2

    invoke-static {p4}, Lnet/youmi/android/am;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "your app version is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static isInTestMode(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lnet/youmi/android/AdManager;->b()V

    invoke-static {p0}, Lnet/youmi/android/cj;->k(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
