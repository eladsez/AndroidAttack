.class Linfo/kazubu/anditalk/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/kazubu/anditalk/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/kazubu/anditalk/Main;


# direct methods
.method constructor <init>(Linfo/kazubu/anditalk/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Linfo/kazubu/anditalk/Main$1;->this$0:Linfo/kazubu/anditalk/Main;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 67
    const-string v0, "anditalk"

    const-string v1, "Main: onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Linfo/kazubu/anditalk/Main$1;->this$0:Linfo/kazubu/anditalk/Main;

    check-cast p2, Linfo/kazubu/anditalk/ConnectionService$ConnectionBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Linfo/kazubu/anditalk/ConnectionService$ConnectionBinder;->getService()Linfo/kazubu/anditalk/ConnectionService;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/kazubu/anditalk/Main;->access$0(Linfo/kazubu/anditalk/Main;Linfo/kazubu/anditalk/ConnectionService;)V

    .line 70
    iget-object v0, p0, Linfo/kazubu/anditalk/Main$1;->this$0:Linfo/kazubu/anditalk/Main;

    invoke-static {v0}, Linfo/kazubu/anditalk/Main;->access$1(Linfo/kazubu/anditalk/Main;)Linfo/kazubu/anditalk/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Linfo/kazubu/anditalk/ConnectionService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "anditalk"

    const-string v1, "Main: connectionService is Connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Linfo/kazubu/anditalk/Main$1;->this$0:Linfo/kazubu/anditalk/Main;

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->txtServerName:Landroid/widget/TextView;

    iget-object v1, p0, Linfo/kazubu/anditalk/Main$1;->this$0:Linfo/kazubu/anditalk/Main;

    invoke-static {v1}, Linfo/kazubu/anditalk/Main;->access$1(Linfo/kazubu/anditalk/Main;)Linfo/kazubu/anditalk/ConnectionService;

    move-result-object v1

    invoke-virtual {v1}, Linfo/kazubu/anditalk/ConnectionService;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 78
    const-string v0, "anditalk"

    const-string v1, "Main: onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Linfo/kazubu/anditalk/Main$1;->this$0:Linfo/kazubu/anditalk/Main;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/kazubu/anditalk/Main;->access$0(Linfo/kazubu/anditalk/Main;Linfo/kazubu/anditalk/ConnectionService;)V

    .line 80
    return-void
.end method
