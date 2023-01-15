.class Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;
.super Landroid/os/AsyncTask;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 97
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-static {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$1(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-static {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$2(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    .line 101
    invoke-virtual {v1, v2, v3, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 103
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$WaitForService;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mIsBound:Z

    .line 107
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 98
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
