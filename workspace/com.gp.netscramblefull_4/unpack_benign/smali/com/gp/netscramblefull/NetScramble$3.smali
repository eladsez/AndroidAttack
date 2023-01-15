.class Lcom/gp/netscramblefull/NetScramble$3;
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
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble$3;->this$0:Lcom/gp/netscramblefull/NetScramble;

    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble$3;->this$0:Lcom/gp/netscramblefull/NetScramble;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    .line 1045
    return-void
.end method
