.class public Lcom/waps/p;
.super Ljava/lang/Object;


# static fields
.field protected static b:Z

.field protected static c:Z

.field public static d:Ljava/lang/String;


# instance fields
.field public a:Landroid/app/Notification;

.field private e:Landroid/app/NotificationManager;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/p;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/p;->c:Z

    const-string v0, ""

    sput-object v0, Lcom/waps/p;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/p;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/p;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/p;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/p;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/p;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waps/p;->m:Z

    iput-object p1, p0, Lcom/waps/p;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x3

    const-string v8, "Notify"

    const-string v0, "\u65b0\u5b89\u88c5\u5e94\u7528"

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const v2, 0x1080029

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const-string v2, "\u53d1\u73b0\u65b0\u5e94\u7528"

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-class v3, Lcom/waps/OffersWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v3, "DownLoadSave"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const/16 v4, 0x64

    invoke-static {v3, v4, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v3, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v4, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v5, "\u60a8\u6709\u65b0\u5e94\u7528\u5b89\u88c5\uff0c\u70b9\u51fb\u67e5\u770b\uff01"

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    sget-boolean v0, Lcom/waps/p;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sput-boolean v7, Lcom/waps/p;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "Start_Tag"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_start_tag"

    const-string v3, "Notify"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "Notify"

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public a(IZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iput-object p6, p0, Lcom/waps/p;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/waps/p;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/waps/p;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/p;->i:Ljava/lang/String;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const v2, 0x1080093

    iput v2, v1, Landroid/app/Notification;->icon:I

    :goto_0
    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v2, p0, Lcom/waps/p;->j:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    :cond_0
    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/waps/p;->k:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/waps/p;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-class v3, Lcom/waps/OffersWebView;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v3, "Notify"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Notity_Title"

    iget-object v4, p0, Lcom/waps/p;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Notity_Content"

    iget-object v4, p0, Lcom/waps/p;->j:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Notity_UrlPath"

    iget-object v4, p0, Lcom/waps/p;->k:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "offers_webview_tag"

    const-string v4, "OffersWebView"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "NotifyAd_Tag"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "push_layout"

    const-string v4, "layout"

    iget-object v5, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "push_layout"

    const-string v5, "layout"

    iget-object v6, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "notify_image"

    const-string v4, "id"

    iget-object v5, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "notify_text"

    const-string v4, "id"

    iget-object v5, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "content_text"

    const-string v3, "id"

    iget-object v4, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/waps/p;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_1
    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/p;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/waps/AppConnect;->notify_receiver(Ljava/lang/String;I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/p;->b:Z

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "Start_Tag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_start_tag"

    const-string v2, "Notify"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iput p1, v1, Landroid/app/Notification;->icon:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v3, p0, Lcom/waps/p;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/waps/p;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u5df2\u5b8c\u6210  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-virtual {v0, p3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v4, "application/vnd.android.package-archive"

    iput-object p4, p0, Lcom/waps/p;->g:Ljava/lang/String;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const-string v1, ""

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, p5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-virtual {v0, p3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "Notify"

    iput-object p1, p0, Lcom/waps/p;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/waps/p;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/p;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/waps/p;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/waps/p;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/p;->i:Ljava/lang/String;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v1, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "icon"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    :goto_0
    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v2, p0, Lcom/waps/p;->j:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    if-ne p6, v6, :cond_0

    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iput v6, v1, Landroid/app/Notification;->defaults:I

    :cond_0
    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/waps/p;->k:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/waps/p;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-class v3, Lcom/waps/OffersWebView;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v3, "Notify"

    invoke-virtual {v2, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Notity_Id"

    iget-object v4, p0, Lcom/waps/p;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Notity_Title"

    iget-object v4, p0, Lcom/waps/p;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Notity_Content"

    iget-object v4, p0, Lcom/waps/p;->j:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Notity_UrlPath"

    iget-object v4, p0, Lcom/waps/p;->k:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "offers_webview_tag"

    const-string v4, "OffersWebView"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "NotifyAd_Tag"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/waps/p;->k:Ljava/lang/String;

    const-string v4, "down_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Notity_UrlParams"

    invoke-interface {v2, v3, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object v2, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const/16 v3, 0x64

    invoke-static {v2, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    iget-object v3, p0, Lcom/waps/p;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/waps/p;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    iget-boolean v0, p0, Lcom/waps/p;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/waps/p;->e:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/waps/AppConnect;->notify_receiver(Ljava/lang/String;I)V

    iput-boolean v5, p0, Lcom/waps/p;->m:Z

    :cond_3
    sput-boolean v6, Lcom/waps/p;->b:Z

    iget-object v0, p0, Lcom/waps/p;->f:Landroid/content/Context;

    const-string v1, "Start_Tag"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_start_tag"

    const-string v2, "Notify"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_4
    iget-object v1, p0, Lcom/waps/p;->a:Landroid/app/Notification;

    const v2, 0x1080072

    iput v2, v1, Landroid/app/Notification;->icon:I

    goto/16 :goto_0
.end method
