.class public Lcom/google/android/gms/common/g;
.super Lcom/google/android/gms/common/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/g$a;
    }
.end annotation


# static fields
.field public static final a:I

.field private static final c:Ljava/lang/Object;

.field private static final d:Lcom/google/android/gms/common/g;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/g;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/g;

    invoke-direct {v0}, Lcom/google/android/gms/common/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/g;->d:Lcom/google/android/gms/common/g;

    sget v0, Lcom/google/android/gms/common/h;->b:I

    sput v0, Lcom/google/android/gms/common/g;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/h;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;ILcom/google/android/gms/common/internal/k;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/h;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/h;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/h;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/google/android/gms/common/g;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/g;->d:Lcom/google/android/gms/common/g;

    return-object v0
.end method

.method private final a(Landroid/content/Context;Landroid/app/NotificationManager;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/o;->m()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/common/g;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms.availability"

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    :goto_0
    invoke-virtual {p2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/app/j;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/app/j;

    invoke-virtual {p0}, Landroid/support/v4/app/j;->g()Landroid/support/v4/app/n;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/android/gms/common/r;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/r;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/r;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/android/gms/common/d;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/d;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/g;->c(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p4, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/h;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->a(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/google/android/gms/common/util/o;->i()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ad;->a(Z)V

    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/a/a$a;->common_full_open_on_phone:I

    sget v4, Lcom/google/android/gms/a/a$b;->common_open_on_phone:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/o;->m()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/o;->m()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/support/v4/app/z$c;

    invoke-direct {v4, p1}, Landroid/support/v4/app/z$c;-><init>(Landroid/content/Context;)V

    const v6, 0x108008a

    invoke-virtual {v4, v6}, Landroid/support/v4/app/z$c;->a(I)Landroid/support/v4/app/z$c;

    move-result-object v4

    sget v6, Lcom/google/android/gms/a/a$b;->common_google_play_services_notification_ticker:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/support/v4/app/z$c;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/app/z$c;->a(J)Landroid/support/v4/app/z$c;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/z$c;->a(Z)Landroid/support/v4/app/z$c;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/support/v4/app/z$c;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/z$c;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/support/v4/app/z$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroid/support/v4/app/z$c;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    move-result-object p4

    invoke-virtual {p4, v5}, Landroid/support/v4/app/z$c;->b(Z)Landroid/support/v4/app/z$c;

    move-result-object p4

    new-instance v0, Landroid/support/v4/app/z$b;

    invoke-direct {v0}, Landroid/support/v4/app/z$b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/z$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$b;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/app/z$c;->a(Landroid/support/v4/app/z$d;)Landroid/support/v4/app/z$c;

    move-result-object p4

    invoke-static {}, Lcom/google/android/gms/common/util/o;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/android/gms/common/util/o;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/app/z$c;->a(Ljava/lang/String;)Landroid/support/v4/app/z$c;

    :cond_6
    invoke-virtual {p4}, Landroid/support/v4/app/z$c;->a()Landroid/app/Notification;

    move-result-object p1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const p2, 0x9b6d

    goto :goto_2

    :pswitch_0
    const/16 p2, 0x28c4

    sget-object p4, Lcom/google/android/gms/common/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2
    if-nez p3, :cond_7

    invoke-virtual {v3, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_7
    invoke-virtual {v3, p3, p2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/g;->e:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/h;->a(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/h;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/k;->a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/k;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/k;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/h;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "GooglePlayServicesUpdatingDialog"

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/common/g;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/h;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/h;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/common/b;)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->d()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->c()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/h;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/f$a;)Lcom/google/android/gms/common/api/internal/f;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/f;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/internal/f;-><init>(Lcom/google/android/gms/common/api/internal/f$a;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/f;->a(Landroid/content/Context;)V

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/f$a;->a()V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/f;->a()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const-string v0, "n"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/common/h;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final a(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/h;->a(I)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/i;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    const-string v0, "d"

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/gms/common/h;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2, v0, p4}, Lcom/google/android/gms/common/internal/k;->a(Lcom/google/android/gms/common/api/internal/i;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/k;

    move-result-object p2

    invoke-static {p1, p3, p2, p5}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/k;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p5}, Lcom/google/android/gms/common/g;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/common/b;I)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;Lcom/google/android/gms/common/b;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->c()I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/h;->b(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/h;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public b(I)Landroid/content/Intent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/common/h;->b(I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/h;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/g;->a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/g;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/h;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/g$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/g$a;-><init>(Lcom/google/android/gms/common/g;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public c(Landroid/content/Context;I)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/h;->c(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method
