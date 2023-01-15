.class Lcom/gp/netscramblefull/NetScramble$5;
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
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble$5;->this$0:Lcom/gp/netscramblefull/NetScramble;

    .line 1268
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble$5;->this$0:Lcom/gp/netscramblefull/NetScramble;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/NetScramble;->makeSound(I)V

    .line 1272
    return-void
.end method
