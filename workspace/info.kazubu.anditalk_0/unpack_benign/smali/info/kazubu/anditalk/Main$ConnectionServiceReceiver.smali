.class Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/kazubu/anditalk/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Linfo/kazubu/anditalk/Main;


# direct methods
.method private constructor <init>(Linfo/kazubu/anditalk/Main;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;->this$0:Linfo/kazubu/anditalk/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Linfo/kazubu/anditalk/Main;Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;-><init>(Linfo/kazubu/anditalk/Main;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v0, "anditalk"

    const-string v1, "intent Receive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;->this$0:Linfo/kazubu/anditalk/Main;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Linfo/kazubu/anditalk/Main;->access$2(Linfo/kazubu/anditalk/Main;Ljava/lang/String;)V

    .line 58
    return-void
.end method
