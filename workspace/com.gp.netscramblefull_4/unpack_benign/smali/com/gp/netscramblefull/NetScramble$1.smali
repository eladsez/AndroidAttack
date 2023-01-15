.class Lcom/gp/netscramblefull/NetScramble$1;
.super Ljava/lang/Object;
.source "NetScramble.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble$1;->this$0:Lcom/gp/netscramblefull/NetScramble;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 888
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble$1;->this$0:Lcom/gp/netscramblefull/NetScramble;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gp/netscramblefull/NetScramble;->access$0(Lcom/gp/netscramblefull/NetScramble;Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 889
    return-void
.end method
