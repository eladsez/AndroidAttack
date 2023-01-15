.class public Lanywheresoftware/b4a/BA;
.super Ljava/lang/Object;
.source "BA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/BA$ActivityObject;,
        Lanywheresoftware/b4a/BA$Author;,
        Lanywheresoftware/b4a/BA$B4ARunnable;,
        Lanywheresoftware/b4a/BA$B4aDebuggable;,
        Lanywheresoftware/b4a/BA$CheckForReinitialize;,
        Lanywheresoftware/b4a/BA$DependsOn;,
        Lanywheresoftware/b4a/BA$DesignerName;,
        Lanywheresoftware/b4a/BA$DontInheritEvents;,
        Lanywheresoftware/b4a/BA$Events;,
        Lanywheresoftware/b4a/BA$Hide;,
        Lanywheresoftware/b4a/BA$IBridgeLog;,
        Lanywheresoftware/b4a/BA$IterableList;,
        Lanywheresoftware/b4a/BA$Permissions;,
        Lanywheresoftware/b4a/BA$Pixel;,
        Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;,
        Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;,
        Lanywheresoftware/b4a/BA$SharedProcessBA;,
        Lanywheresoftware/b4a/BA$ShortName;,
        Lanywheresoftware/b4a/BA$SubDelegator;,
        Lanywheresoftware/b4a/BA$Version;,
        Lanywheresoftware/b4a/BA$WarningEngine;
    }
.end annotation


# static fields
.field private static _b:[[B

.field public static applicationContext:Landroid/app/Application;

.field public static bridgeLog:Lanywheresoftware/b4a/BA$IBridgeLog;

.field private static checkStackTraceEvery50:I

.field public static final cul:Ljava/util/Locale;

.field public static debugLine:Ljava/lang/String;

.field public static debugLineNum:I

.field public static debugMode:Z

.field public static density:F

.field public static final handler:Landroid/os/Handler;

.field public static numberFormat:Ljava/text/NumberFormat;

.field public static packageName:Ljava/lang/String;

.field public static shellMode:Z

.field private static volatile threadPool:Lanywheresoftware/b4a/B4AThreadPool;

.field private static uninitializedActivitiesMessagesDuringPaused:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field public static warningEngine:Lanywheresoftware/b4a/BA$WarningEngine;


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final className:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final eventsTarget:Ljava/lang/Object;

.field public final htSubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public final processBA:Lanywheresoftware/b4a/BA;

.field public service:Landroid/app/Service;

.field public final sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

.field public final vg:Lanywheresoftware/b4a/BALayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lanywheresoftware/b4a/BA;->debugMode:Z

    .line 44
    sput-boolean v0, Lanywheresoftware/b4a/BA;->shellMode:Z

    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lanywheresoftware/b4a/BA;->density:F

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    .line 51
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    .line 83
    new-instance v0, Lanywheresoftware/b4a/BA$1;

    invoke-direct {v0}, Lanywheresoftware/b4a/BA$1;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vg"    # Lanywheresoftware/b4a/BALayout;
    .param p3, "processBA"    # Lanywheresoftware/b4a/BA;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lanywheresoftware/b4a/BA;->density:F

    .line 122
    :cond_0
    if-eqz p1, :cond_2

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 123
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 124
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sput-object v3, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    .line 128
    :goto_0
    if-eqz p1, :cond_3

    instance-of v3, p1, Landroid/app/Service;

    if-eqz v3, :cond_3

    .line 129
    const/4 v2, 0x1

    .line 130
    .local v2, "isService":Z
    move-object v0, p1

    check-cast v0, Landroid/app/Service;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v3

    sput-object v3, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    .line 134
    :goto_1
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    .line 136
    :cond_1
    iput-object v4, p0, Lanywheresoftware/b4a/BA;->eventsTarget:Ljava/lang/Object;

    .line 137
    iput-object p1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    .line 138
    iput-object v1, p0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    .line 139
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    .line 140
    iput-object p5, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    .line 142
    iput-object p2, p0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    .line 143
    if-nez p3, :cond_4

    .line 144
    new-instance v3, Lanywheresoftware/b4a/BA$SharedProcessBA;

    invoke-direct {v3, v2}, Lanywheresoftware/b4a/BA$SharedProcessBA;-><init>(Z)V

    iput-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    .line 147
    :goto_2
    return-void

    .line 127
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "isService":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "activity":Landroid/app/Activity;
    goto :goto_0

    .line 133
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isService":Z
    goto :goto_1

    .line 146
    :cond_4
    iput-object v4, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    goto :goto_2
.end method

.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p1, "otherBA"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventTarget"    # Ljava/lang/Object;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanywheresoftware/b4a/BA;",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "subs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    iput-object v0, p0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    .line 105
    iput-object p2, p0, Lanywheresoftware/b4a/BA;->eventsTarget:Ljava/lang/Object;

    .line 106
    if-nez p3, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    .line 108
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    .line 109
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    iput-object v0, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    .line 110
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->service:Landroid/app/Service;

    iput-object v0, p0, Lanywheresoftware/b4a/BA;->service:Landroid/app/Service;

    .line 111
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    if-nez v0, :cond_1

    iget-object v0, p1, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    :goto_1
    iput-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    .line 112
    iput-object p4, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    .line 113
    return-void

    :cond_0
    move-object v0, p3

    .line 106
    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    goto :goto_1
.end method

.method public static CharFromString(Ljava/lang/String;)C
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 530
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 533
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 2
    .param p0, "Message"    # Ljava/lang/String;

    .prologue
    .line 486
    const-string v0, "B4A"

    if-nez p0, :cond_2

    const-string v1, "null"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    .line 488
    const-string v0, "Message longer than Log limit (4000). Message was truncated."

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 489
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->bridgeLog:Lanywheresoftware/b4a/BA$IBridgeLog;

    if-eqz v0, :cond_1

    .line 490
    sget-object v0, Lanywheresoftware/b4a/BA;->bridgeLog:Lanywheresoftware/b4a/BA$IBridgeLog;

    invoke-interface {v0, p0}, Lanywheresoftware/b4a/BA$IBridgeLog;->offer(Ljava/lang/String;)V

    .line 491
    :cond_1
    return-void

    :cond_2
    move-object v1, p0

    .line 486
    goto :goto_0
.end method

.method public static LogError(Ljava/lang/String;)V
    .locals 1
    .param p0, "Message"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v0, "e"

    invoke-static {v0, p0}, Lanywheresoftware/b4a/BA;->addLogPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public static LogInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "Message"    # Ljava/lang/String;

    .prologue
    .line 519
    const-string v0, "i"

    invoke-static {v0, p0}, Lanywheresoftware/b4a/BA;->addLogPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public static NumberToString(D)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D

    .prologue
    const/4 v3, 0x2

    .line 563
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 565
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 566
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static NumberToString(F)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 569
    float-to-double v0, p0

    invoke-static {v0, v1}, Lanywheresoftware/b4a/BA;->NumberToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NumberToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 572
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NumberToString(J)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # J

    .prologue
    .line 575
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NumberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Number;

    .prologue
    .line 578
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ObjectToBoolean(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 597
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 598
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 600
    :goto_0
    return v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static ObjectToChar(Ljava/lang/Object;)C
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 603
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 604
    check-cast p0, Ljava/lang/Character;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 606
    :goto_0
    return v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->CharFromString(Ljava/lang/String;)C

    move-result v0

    goto :goto_0
.end method

.method public static ObjectToLongNumber(Ljava/lang/Object;)J
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 589
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 590
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 593
    :goto_0
    return-wide v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static ObjectToNumber(Ljava/lang/Object;)D
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 581
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 582
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 585
    :goto_0
    return-wide v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static ObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 656
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static TypeToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 11
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "clazz"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const-string v5, "_"

    .line 612
    :try_start_0
    sget v5, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I

    rem-int/lit8 v5, v5, 0x32

    if-eqz v5, :cond_0

    sget v5, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I

    if-gez v5, :cond_3

    .line 613
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    sget v6, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I

    if-gez v6, :cond_1

    const/16 v6, 0x14

    :goto_0
    if-lt v5, v6, :cond_2

    .line 614
    const/16 v5, -0x64

    sput v5, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    const-string v5, ""

    .line 645
    :goto_1
    return-object v5

    .line 613
    :cond_1
    const/16 v6, 0x96

    goto :goto_0

    .line 618
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    sput v5, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I

    .line 621
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const/4 v3, 0x0

    .line 624
    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-lt v7, v6, :cond_5

    .line 640
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v5, v10, :cond_4

    .line 641
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 642
    :cond_4
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 624
    :cond_5
    aget-object v1, v5, v7

    .line 625
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "fname":Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 627
    const-string v8, "_"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 624
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 629
    :cond_7
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 630
    const-string v8, "_"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 633
    :cond_8
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 634
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 635
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v8, v3, 0x3

    if-nez v8, :cond_9

    .line 637
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_9
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 644
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "N/A"

    goto/16 :goto_1
.end method

.method public static __b([BI)Ljava/lang/String;
    .locals 3
    .param p0, "_b"    # [B
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Lanywheresoftware/b4a/BA$5;

    invoke-direct {v0, p1, p0}, Lanywheresoftware/b4a/BA$5;-><init>(I[B)V

    .line 730
    .local v0, "o":Landroid/preference/PreferenceManager$OnActivityResultListener;
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method static synthetic access$0(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 399
    invoke-static {p0, p1}, Lanywheresoftware/b4a/BA;->markTaskAsFinish(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1()[[B
    .locals 1

    .prologue
    .line 690
    sget-object v0, Lanywheresoftware/b4a/BA;->_b:[[B

    return-object v0
.end method

.method static synthetic access$2([[B)V
    .locals 0

    .prologue
    .line 690
    sput-object p0, Lanywheresoftware/b4a/BA;->_b:[[B

    return-void
.end method

.method public static addLogPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "~"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf3c

    if-ge v3, v4, :cond_0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const/4 v0, -0x1

    .line 498
    .local v0, "i":I
    const/4 v1, 0x0

    .line 499
    .local v1, "prev":I
    :goto_0
    const/16 v3, 0xa

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 507
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 512
    .end local v0    # "i":I
    .end local v1    # "prev":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p1}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    .line 513
    return-void

    .line 500
    .restart local v0    # "i":I
    .restart local v1    # "prev":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    if-ne v1, v0, :cond_2

    .line 501
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 504
    :goto_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 503
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 509
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1
.end method

.method public static addMessageToUninitializeActivity(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 326
    sget-object v2, Lanywheresoftware/b4a/BA;->uninitializedActivitiesMessagesDuringPaused:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 327
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lanywheresoftware/b4a/BA;->uninitializedActivitiesMessagesDuringPaused:Ljava/util/HashMap;

    .line 328
    :cond_0
    sget-object v2, Lanywheresoftware/b4a/BA;->uninitializedActivitiesMessagesDuringPaused:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 329
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-nez v0, :cond_1

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    sget-object v2, Lanywheresoftware/b4a/BA;->uninitializedActivitiesMessagesDuringPaused:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    .line 334
    new-instance v1, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;-><init>(Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;)V

    .line 335
    .local v1, "r":Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;
    iput-object p1, v1, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;->eventName:Ljava/lang/String;

    .line 336
    iput-object p2, v1, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;->arguments:[Ljava/lang/Object;

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending message to waiting queue of uninitialized activity ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v1    # "r":Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;
    :cond_2
    return-void
.end method

.method public static fastSubCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 680
    if-ne p0, p1, :cond_0

    move v1, v4

    .line 688
    :goto_0
    return v1

    .line 682
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 683
    goto :goto_0

    .line 684
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    move v1, v4

    .line 688
    goto :goto_0

    .line 685
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xdf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xdf

    if-eq v1, v2, :cond_3

    move v1, v3

    .line 686
    goto :goto_0

    .line 684
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getEnumFromString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 650
    .local p2, "defValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 651
    .local v0, "o":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    move-object v1, p2

    .line 653
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static isShellModeRuntimeCheck(Lanywheresoftware/b4a/BA;)Z
    .locals 2
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 733
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->isShellModeRuntimeCheck(Lanywheresoftware/b4a/BA;)Z

    move-result v0

    .line 735
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellBA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isTaskRunning(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "container"    # Ljava/lang/Object;
    .param p1, "TaskId"    # I

    .prologue
    .line 419
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-virtual {v0, p0, p1}, Lanywheresoftware/b4a/B4AThreadPool;->isRunning(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static markTaskAsFinish(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "container"    # Ljava/lang/Object;
    .param p1, "TaskId"    # I

    .prologue
    .line 400
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-virtual {v0, p0, p1}, Lanywheresoftware/b4a/B4AThreadPool;->markTaskAsFinished(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p0, "b"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    .line 524
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot parse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static printException(Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 10
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "print"    # Z

    .prologue
    .line 231
    const-string v6, ""

    .line 232
    .local v6, "sub":Ljava/lang/String;
    sget-boolean v7, Lanywheresoftware/b4a/BA;->shellMode:Z

    if-nez v7, :cond_0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 234
    .local v5, "stes":[Ljava/lang/StackTraceElement;
    array-length v7, v5

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    aget-object v4, v5, v7

    .line 235
    .local v4, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 236
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    sget-object v7, Lanywheresoftware/b4a/BA;->debugLine:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " (B4A line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lanywheresoftware/b4a/BA;->debugLineNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lanywheresoftware/b4a/BA;->debugLine:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 247
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    .end local v5    # "stes":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 248
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 249
    invoke-static {v6}, Lanywheresoftware/b4a/BA;->LogError(Ljava/lang/String;)V

    .line 250
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 252
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 253
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 254
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 256
    .local v0, "b":[B
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v7}, Lanywheresoftware/b4a/BA;->LogError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "b":[B
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :cond_2
    :goto_1
    return-object v6

    .line 242
    .restart local v4    # "ste":Ljava/lang/StackTraceElement;
    .restart local v5    # "stes":[Ljava/lang/StackTraceElement;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " (java line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 257
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    .end local v5    # "stes":[Ljava/lang/StackTraceElement;
    .restart local v0    # "b":[B
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 258
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static submitRunnable(Ljava/lang/Runnable;Ljava/lang/Object;I)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "TaskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 405
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    if-nez v0, :cond_1

    .line 406
    const-class v0, Lanywheresoftware/b4a/BA;

    monitor-enter v0

    .line 407
    :try_start_0
    sget-object v1, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    if-nez v1, :cond_0

    .line 408
    new-instance v1, Lanywheresoftware/b4a/B4AThreadPool;

    invoke-direct {v1}, Lanywheresoftware/b4a/B4AThreadPool;-><init>()V

    sput-object v1, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    .line 406
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_1
    instance-of v0, p1, Lanywheresoftware/b4a/ObjectWrapper;

    if-eqz v0, :cond_2

    .line 413
    check-cast p1, Lanywheresoftware/b4a/ObjectWrapper;

    .end local p1    # "container":Ljava/lang/Object;
    invoke-interface {p1}, Lanywheresoftware/b4a/ObjectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p1

    .line 414
    .restart local p1    # "container":Ljava/lang/Object;
    :cond_2
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-virtual {v0, p0, p1, p2}, Lanywheresoftware/b4a/B4AThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    .line 415
    const/4 v0, 0x0

    return-object v0

    .line 406
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static varargs switchObjectToInt(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p0, "test"    # Ljava/lang/Object;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 659
    const/4 v1, -0x1

    .line 660
    .local v1, "res":I
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 661
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "test":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 662
    .local v2, "t":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_1

    .line 677
    .end local v2    # "t":D
    :cond_0
    :goto_1
    return v1

    .line 663
    .restart local v2    # "t":D
    :cond_1
    aget-object p0, p1, v0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-nez v4, :cond_2

    .line 664
    move v1, v0

    .line 665
    goto :goto_1

    .line 662
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    .end local v0    # "i":I
    .end local v2    # "t":D
    .restart local p0    # "test":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 671
    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 672
    move v1, v0

    .line 673
    goto :goto_1

    .line 670
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public ShowErrorMsgbox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 209
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-boolean v6, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z

    .line 211
    :try_start_0
    invoke-static {p1}, Lanywheresoftware/b4a/BA;->LogError(Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanywheresoftware/b4a/BA;

    iget-object v3, v3, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Error occurred"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    if-eqz p2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error has occurred in sub:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 215
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nContinue?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    new-instance v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 218
    .local v1, "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    const-string v3, "Yes"

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    const-string v3, "No"

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iget-object v4, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v4, v4, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    if-ne v4, v6, :cond_2

    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 221
    iget v3, v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 223
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-boolean v5, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z

    .line 229
    return-void

    .line 214
    .end local v1    # "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    .restart local v1    # "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 220
    goto :goto_1

    .line 226
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dr":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .end local v2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 227
    iget-object v4, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-boolean v5, v4, Lanywheresoftware/b4a/BA$SharedProcessBA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z

    .line 228
    throw v3
.end method

.method public addMessageToPausedMessageQueue(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/Runnable;

    .prologue
    const-string v2, ")"

    .line 352
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, p1, p2}, Lanywheresoftware/b4a/BA;->addMessageToPausedMessageQueue(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 365
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sending message to waiting queue ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    .line 359
    :cond_1
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring event (too many queued events: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getClassNameWithoutPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    iget-object v1, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->getLastException()Ljava/lang/Exception;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->lastException:Ljava/lang/Exception;

    goto :goto_0
.end method

.method public getSender()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->getSender()Ljava/lang/Object;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->sender:Ljava/lang/Object;

    goto :goto_0
.end method

.method public isActivityPaused()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->isActivityPaused()Z

    move-result v0

    .line 434
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-boolean v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->isActivityPaused:Z

    goto :goto_0
.end method

.method public loadHtSubs(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 430
    return-void

    .line 425
    :cond_0
    aget-object v0, v1, v3

    .line 426
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    iget-object v4, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 460
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 462
    .local v1, "wi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/IOnActivityResult;>;"
    if-nez v1, :cond_1

    .line 463
    const-string v2, "onActivityResult: wi is null"

    invoke-static {v2}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    .line 484
    .end local v1    # "wi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/IOnActivityResult;>;"
    :cond_0
    :goto_0
    return-void

    .line 466
    .restart local v1    # "wi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/IOnActivityResult;>;"
    :cond_1
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/IOnActivityResult;

    .line 468
    .local v0, "i":Lanywheresoftware/b4a/IOnActivityResult;
    if-nez v0, :cond_2

    .line 469
    const-string v2, "onActivityResult: IOnActivityResult was released"

    invoke-static {v2}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_2
    const-string v2, "OnActivityResult"

    new-instance v3, Lanywheresoftware/b4a/BA$4;

    invoke-direct {v3, p0, v0, p2, p3}, Lanywheresoftware/b4a/BA$4;-><init>(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/IOnActivityResult;ILandroid/content/Intent;)V

    invoke-virtual {p0, v2, v3}, Lanywheresoftware/b4a/BA;->addMessageToPausedMessageQueue(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "allowDuringPause"    # Z
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "throwErrorIfMissingSub"    # Z
    .param p5, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Sub "

    .line 160
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    .end local p1    # "sender":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 163
    .restart local p1    # "sender":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-boolean v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->isActivityPaused:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignoring event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v4

    .line 165
    goto :goto_0

    .line 168
    :cond_1
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    .line 169
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-object p1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->sender:Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Lanywheresoftware/b4a/B4AUncaughtException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .local v7, "m":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_2

    .line 173
    :try_start_1
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->eventsTarget:Ljava/lang/Object;

    invoke-virtual {v7, v0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lanywheresoftware/b4a/B4AUncaughtException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 203
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v2, v1, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    sub-int/2addr v2, v3

    iput v2, v1, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    .line 204
    const/4 p1, 0x0

    .line 173
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 175
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sub "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature does not match expected signature."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lanywheresoftware/b4a/B4AUncaughtException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 182
    .local v6, "e":Lanywheresoftware/b4a/B4AUncaughtException;
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    .end local v6    # "e":Lanywheresoftware/b4a/B4AUncaughtException;
    :catchall_0
    move-exception v0

    .line 203
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v2, v1, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    sub-int/2addr v2, v3

    iput v2, v1, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    .line 204
    const/4 p1, 0x0

    .line 205
    throw v0

    .line 178
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    :cond_2
    if-eqz p4, :cond_9

    .line 179
    :try_start_4
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sub "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lanywheresoftware/b4a/B4AUncaughtException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 184
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_5
    instance-of v0, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 186
    :cond_3
    instance-of v0, v6, Lanywheresoftware/b4a/B4AUncaughtException;

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    if-le v0, v3, :cond_4

    .line 188
    check-cast v6, Lanywheresoftware/b4a/B4AUncaughtException;

    .end local v6    # "e":Ljava/lang/Throwable;
    throw v6

    .line 190
    .restart local v6    # "e":Ljava/lang/Throwable;
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "catching B4AUncaughtException"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 203
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    sub-int/2addr v1, v3

    iput v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    .line 204
    const/4 p1, 0x0

    move-object v0, v4

    .line 191
    goto/16 :goto_0

    .line 194
    :cond_5
    :try_start_6
    instance-of v0, v6, Ljava/lang/Error;

    if-eqz v0, :cond_6

    .line 195
    check-cast v6, Ljava/lang/Error;

    .end local v6    # "e":Ljava/lang/Throwable;
    throw v6

    .line 197
    .restart local v6    # "e":Ljava/lang/Throwable;
    :cond_6
    sget-boolean v0, Lanywheresoftware/b4a/BA;->debugMode:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_1
    invoke-static {v6, v0}, Lanywheresoftware/b4a/BA;->printException(Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "sub":Ljava/lang/String;
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_8

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .end local v8    # "sub":Ljava/lang/String;
    :cond_7
    move v0, v3

    .line 197
    goto :goto_1

    .line 200
    .restart local v8    # "sub":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lanywheresoftware/b4a/BA;->ShowErrorMsgbox(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 203
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    sub-int/2addr v1, v3

    iput v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    .line 204
    const/4 p1, 0x0

    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v8    # "sub":Ljava/lang/String;
    :goto_2
    move-object v0, v4

    .line 206
    goto/16 :goto_0

    .line 203
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    :cond_9
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    sub-int/2addr v1, v3

    iput v1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    .line 204
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "container"    # Ljava/lang/Object;
    .param p3, "TaskId"    # I
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "throwErrorIfMissingSub"    # Z
    .param p6, "params"    # [Ljava/lang/Object;

    .prologue
    .line 293
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v1, :cond_0

    .line 294
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 323
    :goto_0
    return-object v1

    .line 296
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/BA$3;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lanywheresoftware/b4a/BA$3;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;Z[Ljava/lang/Object;)V

    .line 322
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 264
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v1, p1, p2, p3}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/BA$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lanywheresoftware/b4a/BA$2;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 287
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setActivityPaused(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    .line 367
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v3, :cond_1

    .line 368
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v3, p1}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-boolean p1, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->isActivityPaused:Z

    .line 372
    if-nez p1, :cond_0

    .line 373
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-boolean v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->isService:Z

    if-nez v3, :cond_0

    .line 375
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    sget-object v3, Lanywheresoftware/b4a/BA;->uninitializedActivitiesMessagesDuringPaused:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 376
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    .line 378
    .local v1, "cls":Ljava/lang/String;
    iget-object v4, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    sget-object v3, Lanywheresoftware/b4a/BA;->uninitializedActivitiesMessagesDuringPaused:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v4, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    .line 379
    sget-object v3, Lanywheresoftware/b4a/BA;->uninitializedActivitiesMessagesDuringPaused:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v1    # "cls":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 383
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "running waiting messages ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v4, v4, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanywheresoftware/b4a/BA;->Log(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 391
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 384
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 385
    .local v2, "msg":Ljava/lang/Runnable;
    instance-of v3, v2, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;

    if-eqz v3, :cond_4

    .line 386
    move-object v0, v2

    check-cast v0, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;

    move-object v3, v0

    iput-object p0, v3, Lanywheresoftware/b4a/BA$RaiseEventWhenFirstCreate;->ba:Lanywheresoftware/b4a/BA;

    .line 388
    :cond_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 390
    .end local v2    # "msg":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    .line 391
    iget-object v4, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v4, v4, Lanywheresoftware/b4a/BA$SharedProcessBA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 392
    throw v3
.end method

.method public setLastException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 551
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 553
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iput-object p1, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->lastException:Ljava/lang/Exception;

    .line 554
    return-void

    .line 552
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/Exception;
    check-cast p1, Ljava/lang/Exception;

    .restart local p1    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public declared-synchronized startActivityForResult(Lanywheresoftware/b4a/IOnActivityResult;Landroid/content/Intent;)V
    .locals 6
    .param p1, "iOnActivityResult"    # Lanywheresoftware/b4a/IOnActivityResult;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v2, p1, p2}, Lanywheresoftware/b4a/BA;->startActivityForResult(Lanywheresoftware/b4a/IOnActivityResult;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 442
    :cond_1
    :try_start_1
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BA;

    .line 445
    .local v0, "aBa":Lanywheresoftware/b4a/BA;
    if-eqz v0, :cond_0

    .line 447
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultMap:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 448
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultMap:Ljava/util/HashMap;

    .line 449
    :cond_2
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultMap:Ljava/util/HashMap;

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :try_start_2
    iget-object v2, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v4, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultCode:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultCode:I

    invoke-virtual {v2, p2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 453
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_3
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultMap:Ljava/util/HashMap;

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget v3, v3, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultCode:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lanywheresoftware/b4a/IOnActivityResult;->ResultArrived(ILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 438
    .end local v0    # "aBa":Lanywheresoftware/b4a/BA;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public subExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sub"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
