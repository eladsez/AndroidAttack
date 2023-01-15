.class Lcom/ievyhrdnoniovof/AdController$FetchImage;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic A:Ljava/lang/String;

.field private synthetic B:Ljava/lang/String;

.field private synthetic E:Ljava/lang/String;

.field private synthetic F:Landroid/app/NotificationManager;

.field private synthetic G:Ljava/lang/CharSequence;

.field final synthetic H:Lcom/ievyhrdnoniovof/AdController;

.field private synthetic I:Ljava/lang/String;

.field private synthetic M:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic g:Landroid/content/Context;

.field private synthetic j:Ljava/lang/CharSequence;

.field private synthetic k:I

.field private synthetic l:Ljava/lang/CharSequence;

.field private synthetic m:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p2, "arg1"    # Landroid/content/Context;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/CharSequence;
    .param p5, "arg4"    # Ljava/lang/CharSequence;
    .param p6, "arg5"    # Ljava/lang/CharSequence;
    .param p7, "arg6"    # Landroid/app/NotificationManager;
    .param p8, "arg7"    # Landroid/app/PendingIntent;

    .prologue
    const-string v1, "LBAdController"

    const-string v2, "appimgtext"

    const-string v3, "appimg"

    const-string v4, "appcustomview"

    const-string v5, "appcustom"

    const-string v6, "reengagement"

    const-string v7, ".R$id"

    const-string v8, ".R$layout"

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->H:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v8, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->B:Ljava/lang/String;

    iput-object v7, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->E:Ljava/lang/String;

    iput-object v6, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->A:Ljava/lang/String;

    iput-object v5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->M:Ljava/lang/String;

    iput-object v4, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->g:Landroid/content/Context;

    iput p3, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    iput-object p4, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->l:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->j:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->G:Ljava/lang/CharSequence;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->F:Landroid/app/NotificationManager;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->m:Landroid/app/PendingIntent;

    const-string v2, "\u0015\u0006;\u00075I&\u0006r/7\u001d1\u0001r ?\u00085\u000cs"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdController$FetchImage;->l([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs l([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    aget-object v0, p1, v5

    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0014\u000c&\n:\u0000<\u000er ?\u00085\u000crDr"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " I\u0017T\u0017\u001b\u0012R\u0011SE_\nL\u000bW\nZ\u0001\u001bH\u001b"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected l(Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "arg0"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    if-eqz p1, :cond_2

    const-string v0, "LBAdController"

    const-string v1, "r\u0008Z\u0002^ER\u0016\u001b\u000bT\u0011\u001b\u000bN\tW"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->I:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-eq v4, v9, :cond_1

    if-eq v1, v9, :cond_1

    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "\u001a7\u001d\u0010\u00081\u00025\u001b=\u001c<\r\u0011\u0006>\u0006 "

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->H:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdController;->c(Lcom/ievyhrdnoniovof/AdController;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "\u0017^\u0000U\u0002Z\u0002^\u0008^\u000bO\u0007Z\u0006P\u0002I\nN\u000b_"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v2, v0, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v8

    :goto_0
    :try_start_2
    invoke-virtual {v0, v4, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->H:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->c(Lcom/ievyhrdnoniovof/AdController;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, " \u000c7\u00075\u00085\u000c?\u000c<\u001d;\u00045\u001d7\u0011&"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->H:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->c(Lcom/ievyhrdnoniovof/AdController;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "\u0017^\u0000U\u0002Z\u0002^\u0008^\u000bO\u000cV\u0002O\u0000C\u0011X\nW\nI"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v8

    :goto_1
    const/4 v1, 0x4

    :try_start_4
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v0, "LBAdController"

    const-string v1, ",$\u000c \u0010&\u0001;\u00075I;\u001ar\u00069HsI\u007fI5\u0006;\u00075I&\u0006r\u001d \u00005\u000e7\u001br\u0000?\u00085\u000cr\u001b7\u000c<\u000e3\u000e7\u00047\u0007&"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    if-eq v0, v9, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->H:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->g:Landroid/content/Context;

    iget v2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->l:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->j:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->G:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->F:Landroid/app/NotificationManager;

    iget-object v7, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->m:Landroid/app/PendingIntent;

    invoke-static/range {v0 .. v8}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    if-eq v0, v9, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->H:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->g:Landroid/content/Context;

    iget v2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->l:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->j:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->G:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->F:Landroid/app/NotificationManager;

    iget-object v7, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->m:Landroid/app/PendingIntent;

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "6T\u0008^ER\u0016H\u0010^EL\u000cO\r\u001b\u0016^\u0011O\u000cU\u0002\u001b\u0006N\u0016O\nVER\u0008Z\u0002^EW\u0004B\nN\u0011\u001bH\u001b"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    iget v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    if-eq v0, v9, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->H:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->g:Landroid/content/Context;

    iget v2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->l:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->j:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->G:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->F:Landroid/app/NotificationManager;

    iget-object v7, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->m:Landroid/app/PendingIntent;

    move-object v8, v11

    invoke-static/range {v0 .. v8}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    if-eq v0, v9, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->H:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->g:Landroid/content/Context;

    iget v2, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->k:I

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->l:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->j:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->G:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->F:Landroid/app/NotificationManager;

    iget-object v7, p0, Lcom/ievyhrdnoniovof/AdController$FetchImage;->m:Landroid/app/PendingIntent;

    move-object v8, v11

    invoke-static/range {v0 .. v8}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdController$FetchImage;->l(Landroid/graphics/Bitmap;)V

    return-void
.end method
