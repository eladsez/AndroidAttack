.class Lverbi/italia/tempiverbo$ResumeMessage;
.super Ljava/lang/Object;
.source "tempiverbo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverbi/italia/tempiverbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResumeMessage"
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lverbi/italia/tempiverbo$ResumeMessage;->activity:Ljava/lang/ref/WeakReference;

    .line 248
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    if-eqz v0, :cond_0

    sget-object v0, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, p0, Lverbi/italia/tempiverbo$ResumeMessage;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 253
    const-string v0, "** Activity (tempiverbo) Resume **"

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 254
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    sget-object v1, Lverbi/italia/tempiverbo;->mostCurrent:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v2, "activity_resume"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p0}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
