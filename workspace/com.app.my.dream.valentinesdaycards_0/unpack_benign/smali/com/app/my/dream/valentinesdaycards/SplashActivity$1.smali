.class Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/my/dream/valentinesdaycards/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;


# direct methods
.method constructor <init>(Lcom/app/my/dream/valentinesdaycards/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000000

    .line 26
    const-wide/16 v2, 0xfa0

    :try_start_0
    invoke-static {v2, v3}, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v1}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v1}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->finish()V

    .line 46
    :goto_0
    return-void

    .line 30
    .end local v0    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v1}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v1}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->finish()V

    goto :goto_0

    .line 35
    .end local v0    # "i":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v2}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v2, v0}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/SplashActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/SplashActivity;

    invoke-virtual {v2}, Lcom/app/my/dream/valentinesdaycards/SplashActivity;->finish()V

    .line 44
    throw v1
.end method
