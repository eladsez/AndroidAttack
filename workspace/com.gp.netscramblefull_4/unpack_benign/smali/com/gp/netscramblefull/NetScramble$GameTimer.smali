.class final Lcom/gp/netscramblefull/NetScramble$GameTimer;
.super Lcom/gp/netscramblefull/Timer;
.source "NetScramble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/NetScramble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GameTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/netscramblefull/NetScramble;


# direct methods
.method constructor <init>(Lcom/gp/netscramblefull/NetScramble;)V
    .locals 2

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble$GameTimer;->this$0:Lcom/gp/netscramblefull/NetScramble;

    .line 1355
    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/gp/netscramblefull/Timer;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected step(IJ)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "time"    # J

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble$GameTimer;->this$0:Lcom/gp/netscramblefull/NetScramble;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/NetScramble;->updateStatus()V

    .line 1363
    const/4 v0, 0x0

    return v0
.end method
