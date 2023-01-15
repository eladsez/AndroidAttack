.class Lcom/gp/netscramblefull/BoardView$1;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/BoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/netscramblefull/BoardView;


# direct methods
.method constructor <init>(Lcom/gp/netscramblefull/BoardView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/netscramblefull/BoardView$1;->this$0:Lcom/gp/netscramblefull/BoardView;

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$1;->this$0:Lcom/gp/netscramblefull/BoardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gp/netscramblefull/BoardView;->access$0(Lcom/gp/netscramblefull/BoardView;Z)V

    .line 1083
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$1;->this$0:Lcom/gp/netscramblefull/BoardView;

    invoke-static {v0}, Lcom/gp/netscramblefull/BoardView;->access$1(Lcom/gp/netscramblefull/BoardView;)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/gp/netscramblefull/BoardView$1;->this$0:Lcom/gp/netscramblefull/BoardView;

    iget-object v1, p0, Lcom/gp/netscramblefull/BoardView$1;->this$0:Lcom/gp/netscramblefull/BoardView;

    invoke-static {v1}, Lcom/gp/netscramblefull/BoardView;->access$2(Lcom/gp/netscramblefull/BoardView;)Lcom/gp/netscramblefull/Cell;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/BoardView;->cellToggleLock(Lcom/gp/netscramblefull/Cell;)V

    .line 1085
    :cond_0
    return-void
.end method
