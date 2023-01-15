.class Lcom/gp/netscramblefull/NetScramble$4;
.super Ljava/lang/Object;
.source "NetScramble.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble$4;->this$0:Lcom/gp/netscramblefull/NetScramble;

    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble$4;->this$0:Lcom/gp/netscramblefull/NetScramble;

    invoke-static {v0}, Lcom/gp/netscramblefull/NetScramble;->access$1(Lcom/gp/netscramblefull/NetScramble;)Lcom/gp/netscramblefull/BoardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/netscramblefull/BoardView;->surfaceStart()V

    .line 1183
    return-void
.end method
