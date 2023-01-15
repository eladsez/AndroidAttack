.class Lanywheresoftware/b4a/BA$2;
.super Ljava/lang/Object;
.source "BA.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4ARunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/BA;

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$params:[Ljava/lang/Object;

.field private final synthetic val$sender:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/BA$2;->this$0:Lanywheresoftware/b4a/BA;

    iput-object p2, p0, Lanywheresoftware/b4a/BA$2;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lanywheresoftware/b4a/BA$2;->val$sender:Ljava/lang/Object;

    iput-object p4, p0, Lanywheresoftware/b4a/BA$2;->val$params:[Ljava/lang/Object;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lanywheresoftware/b4a/BA$2;->this$0:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-boolean v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanywheresoftware/b4a/BA$2;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", was ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA$2;->this$0:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-boolean v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->isService:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lanywheresoftware/b4a/BA$2;->this$0:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->activityBA:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reposting event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanywheresoftware/b4a/BA$2;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lanywheresoftware/b4a/BA$2;->this$0:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->sharedProcessBA:Lanywheresoftware/b4a/BA$SharedProcessBA;

    iget-boolean v0, v0, Lanywheresoftware/b4a/BA$SharedProcessBA;->isActivityPaused:Z

    if-eqz v0, :cond_2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanywheresoftware/b4a/BA$2;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lanywheresoftware/b4a/BA$2;->this$0:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/BA$2;->val$sender:Ljava/lang/Object;

    iget-object v3, p0, Lanywheresoftware/b4a/BA$2;->val$event:Ljava/lang/String;

    iget-object v5, p0, Lanywheresoftware/b4a/BA$2;->val$params:[Ljava/lang/Object;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
