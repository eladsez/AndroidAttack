.class public Lanywheresoftware/b4a/objects/ServiceHelper;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation


# static fields
.field private static mStartForeground:Ljava/lang/reflect/Method;

.field private static final mStartForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mStopForeground:Ljava/lang/reflect/Method;

.field private static final mStopForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field mNM:Landroid/app/NotificationManager;

.field private service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 23
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    .line 22
    sput-object v0, Lanywheresoftware/b4a/objects/ServiceHelper;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 24
    new-array v0, v3, [Ljava/lang/Class;

    .line 25
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 24
    sput-object v0, Lanywheresoftware/b4a/objects/ServiceHelper;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 2
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lanywheresoftware/b4a/objects/ServiceHelper;->service:Landroid/app/Service;

    .line 44
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lanywheresoftware/b4a/objects/ServiceHelper;->mNM:Landroid/app/NotificationManager;

    .line 45
    return-void
.end method

.method public static init()V
    .locals 4
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const-class v1, Landroid/app/Service;

    .line 32
    :try_start_0
    const-class v1, Landroid/app/Service;

    const-string v2, "startForeground"

    .line 33
    sget-object v3, Lanywheresoftware/b4a/objects/ServiceHelper;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/objects/ServiceHelper;->mStartForeground:Ljava/lang/reflect/Method;

    .line 34
    const-class v1, Landroid/app/Service;

    const-string v2, "stopForeground"

    .line 35
    sget-object v3, Lanywheresoftware/b4a/objects/ServiceHelper;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/objects/ServiceHelper;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 37
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    sput-object v1, Lanywheresoftware/b4a/objects/ServiceHelper;->mStopForeground:Ljava/lang/reflect/Method;

    sput-object v1, Lanywheresoftware/b4a/objects/ServiceHelper;->mStartForeground:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public StartForeground(ILandroid/app/Notification;)V
    .locals 4
    .param p1, "Id"    # I
    .param p2, "Notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 52
    sget-object v1, Lanywheresoftware/b4a/objects/ServiceHelper;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    .line 54
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Lanywheresoftware/b4a/objects/ServiceHelper;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/ServiceHelper;->service:Landroid/app/Service;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lanywheresoftware/b4a/objects/ServiceHelper;->service:Landroid/app/Service;

    invoke-virtual {v1, v3}, Landroid/app/Service;->setForeground(Z)V

    .line 58
    iget-object v1, p0, Lanywheresoftware/b4a/objects/ServiceHelper;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public StopForeground(I)V
    .locals 5
    .param p1, "Id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 64
    sget-object v0, Lanywheresoftware/b4a/objects/ServiceHelper;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lanywheresoftware/b4a/objects/ServiceHelper;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/ServiceHelper;->service:Landroid/app/Service;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ServiceHelper;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 69
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ServiceHelper;->service:Landroid/app/Service;

    invoke-virtual {v0, v4}, Landroid/app/Service;->setForeground(Z)V

    goto :goto_0
.end method
