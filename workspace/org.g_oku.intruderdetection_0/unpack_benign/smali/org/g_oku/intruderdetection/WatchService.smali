.class public Lorg/g_oku/intruderdetection/WatchService;
.super Landroid/app/Service;
.source "WatchService.java"


# instance fields
.field mHolder:Landroid/view/SurfaceHolder;

.field private mID:I

.field private mOverLayView:Landroid/view/View;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPreview:Lorg/g_oku/intruderdetection/CameraPreview;

.field private mResolver:Landroid/content/ContentResolver;

.field mSurface:Landroid/view/SurfaceView;

.field private mWindowMgr:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private displayNotificationArea()V
    .locals 8

    .prologue
    const/high16 v7, 0x7f080000

    .line 67
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/WatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/WatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    .line 68
    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 71
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/WatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 71
    invoke-direct {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    invoke-virtual {p0, v7}, Lorg/g_oku/intruderdetection/WatchService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    invoke-virtual {p0, v7}, Lorg/g_oku/intruderdetection/WatchService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 80
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lorg/g_oku/intruderdetection/WatchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 81
    .local v3, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 82
    return-void
.end method

.method private setLayer()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 55
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/WatchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mWindowMgr:Landroid/view/WindowManager;

    .line 56
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 57
    .local v6, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mOverLayView:Landroid/view/View;

    .line 58
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 60
    const/16 v3, 0x7d3

    .line 61
    const/16 v4, 0x20

    .line 62
    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 58
    iput-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 63
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mWindowMgr:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/g_oku/intruderdetection/WatchService;->mOverLayView:Landroid/view/View;

    iget-object v2, p0, Lorg/g_oku/intruderdetection/WatchService;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 106
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mWindowMgr:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mOverLayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mWindowMgr:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/g_oku/intruderdetection/WatchService;->mOverLayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 42
    iput p2, p0, Lorg/g_oku/intruderdetection/WatchService;->mID:I

    .line 43
    invoke-direct {p0}, Lorg/g_oku/intruderdetection/WatchService;->setLayer()V

    .line 44
    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/WatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mResolver:Landroid/content/ContentResolver;

    .line 46
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mOverLayView:Landroid/view/View;

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mSurface:Landroid/view/SurfaceView;

    .line 47
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mHolder:Landroid/view/SurfaceHolder;

    .line 49
    new-instance v0, Lorg/g_oku/intruderdetection/CameraPreview;

    invoke-direct {v0, p0}, Lorg/g_oku/intruderdetection/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mPreview:Lorg/g_oku/intruderdetection/CameraPreview;

    .line 50
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/g_oku/intruderdetection/WatchService;->mPreview:Lorg/g_oku/intruderdetection/CameraPreview;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 51
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 52
    return-void
.end method

.method public saveGallery(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 86
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mWindowMgr:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mWindowMgr:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/g_oku/intruderdetection/WatchService;->mOverLayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 96
    iput-object v2, p0, Lorg/g_oku/intruderdetection/WatchService;->mWindowMgr:Landroid/view/WindowManager;

    .line 98
    :cond_0
    iput-object v2, p0, Lorg/g_oku/intruderdetection/WatchService;->mOverLayView:Landroid/view/View;

    .line 99
    iget v0, p0, Lorg/g_oku/intruderdetection/WatchService;->mID:I

    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/WatchService;->stopSelf(I)V

    .line 100
    return-void
.end method
