.class Lcom/gp/netscramblefull/NetScramble$2;
.super Landroid/os/Handler;
.source "NetScramble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/NetScramble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/netscramblefull/NetScramble;


# direct methods
.method constructor <init>(Lcom/gp/netscramblefull/NetScramble;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble$2;->this$0:Lcom/gp/netscramblefull/NetScramble;

    .line 958
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble$2;->this$0:Lcom/gp/netscramblefull/NetScramble;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/gp/netscramblefull/NetScramble$State;->getValue(I)Lcom/gp/netscramblefull/NetScramble$State;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gp/netscramblefull/NetScramble;->access$0(Lcom/gp/netscramblefull/NetScramble;Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 962
    return-void
.end method
