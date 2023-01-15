.class public Lanywheresoftware/b4a/BA$SharedProcessBA;
.super Ljava/lang/Object;
.source "BA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/BA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedProcessBA"
.end annotation


# instance fields
.field public activityBA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lanywheresoftware/b4a/BA;",
            ">;"
        }
    .end annotation
.end field

.field ignoreEventsFromOtherThreadsDuringMsgboxError:Z

.field volatile isActivityPaused:Z

.field public final isService:Z

.field lastException:Ljava/lang/Exception;

.field messagesDuringPaused:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field numberOfStackedEvents:I

.field onActivityResultCode:I

.field onActivityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lanywheresoftware/b4a/IOnActivityResult;",
            ">;>;"
        }
    .end annotation
.end field

.field public sender:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Z)V
    .locals 3
    .param p1, "isService"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v1, p0, Lanywheresoftware/b4a/BA$SharedProcessBA;->numberOfStackedEvents:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/BA$SharedProcessBA;->lastException:Ljava/lang/Exception;

    .line 72
    iput-boolean v1, p0, Lanywheresoftware/b4a/BA$SharedProcessBA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z

    .line 74
    iput-boolean v2, p0, Lanywheresoftware/b4a/BA$SharedProcessBA;->isActivityPaused:Z

    .line 76
    iput v2, p0, Lanywheresoftware/b4a/BA$SharedProcessBA;->onActivityResultCode:I

    .line 78
    iput-boolean p1, p0, Lanywheresoftware/b4a/BA$SharedProcessBA;->isService:Z

    .line 79
    return-void
.end method
