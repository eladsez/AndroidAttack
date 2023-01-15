.class public Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;
.super Landroid/app/Service;
.source "FingerNotesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final FIRST_RUN:I = 0x1388

.field public static final INTERVAL:I = 0x7530

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MSG_SET_STRING_VALUE:I = 0x1

.field private static isRunning:Z


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field final mMessenger:Landroid/os/Messenger;

.field private nm:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->LOG_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->isRunning:Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService$IncomingHandler;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->mMessenger:Landroid/os/Messenger;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->alarmManager:Landroid/app/AlarmManager;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->showNotification()V

    return-void
.end method

.method static synthetic access$1(Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->hideNotification()V

    return-void
.end method

.method private hideNotification()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->nm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->nm:Landroid/app/NotificationManager;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->isRunning:Z

    return v0
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f060001

    .line 82
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->nm:Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    .line 105
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 90
    invoke-virtual {p0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 92
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f020004

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 97
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 99
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const/high16 v3, 0x7f060000

    invoke-virtual {p0, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 104
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->nm:Landroid/app/NotificationManager;

    .line 69
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 73
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->alarmManager:Landroid/app/AlarmManager;

    .line 74
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->isRunning:Z

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 131
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->hideNotification()V

    .line 137
    sput-boolean v3, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->isRunning:Z

    .line 138
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 116
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
