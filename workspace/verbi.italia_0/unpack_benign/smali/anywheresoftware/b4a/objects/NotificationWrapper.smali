.class public Lanywheresoftware/b4a/objects/NotificationWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "NotificationWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Notification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/app/Notification;",
        ">;"
    }
.end annotation


# static fields
.field private static pendingId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput v0, Lanywheresoftware/b4a/objects/NotificationWrapper;->pendingId:I

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method private setFlag(ZI)V
    .locals 2
    .param p1, "v"    # Z
    .param p2, "Flag"    # I

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 100
    :goto_0
    return-void

    .line 99
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method private setValue(ZI)V
    .locals 2
    .param p1, "v"    # Z
    .param p2, "Default"    # I

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 66
    :goto_0
    return-void

    .line 65
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->defaults:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method


# virtual methods
.method public Cancel(I)V
    .locals 3
    .param p1, "Id"    # I

    .prologue
    .line 165
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    .line 166
    const-string v2, "notification"

    .line 165
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 167
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 168
    return-void
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setObject(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 36
    return-void
.end method

.method public Notify(I)V
    .locals 3
    .param p1, "Id"    # I

    .prologue
    .line 157
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    .line 158
    const-string v2, "notification"

    .line 157
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 159
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 160
    return-void
.end method

.method public SetInfo(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Title"    # Ljava/lang/String;
    .param p3, "Body"    # Ljava/lang/String;
    .param p4, "Activity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/NotificationWrapper;->SetInfo2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public SetInfo2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Title"    # Ljava/lang/String;
    .param p3, "Body"    # Ljava/lang/String;
    .param p4, "Tag"    # Ljava/lang/String;
    .param p5, "Activity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 141
    invoke-static {p1, p5}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    if-eqz p4, :cond_0

    .line 145
    const-string v2, "Notification_Tag"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_0
    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    if-nez p4, :cond_1

    const/4 v3, 0x0

    .line 148
    :goto_0
    const/high16 v4, 0x8000000

    .line 146
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 149
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2, p3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 150
    return-void

    .line 146
    .end local v1    # "pi":Landroid/app/PendingIntent;
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    :cond_1
    sget v3, Lanywheresoftware/b4a/objects/NotificationWrapper;->pendingId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lanywheresoftware/b4a/objects/NotificationWrapper;->pendingId:I

    goto :goto_0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->number:I

    return v0
.end method

.method public setAutoCancel(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 71
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setFlag(ZI)V

    .line 72
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    sget-object v2, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->icon:I

    .line 110
    return-void
.end method

.method public setInsistent(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 77
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setFlag(ZI)V

    .line 78
    return-void
.end method

.method public setLight(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 59
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setValue(ZI)V

    .line 60
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/NotificationWrapper;
    check-cast p0, Landroid/app/Notification;

    iput p1, p0, Landroid/app/Notification;->number:I

    .line 94
    return-void
.end method

.method public setOnGoingEvent(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setFlag(ZI)V

    .line 85
    return-void
.end method

.method public setSound(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setValue(ZI)V

    .line 52
    return-void
.end method

.method public setVibrate(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setValue(ZI)V

    .line 44
    return-void
.end method
