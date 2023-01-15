.class Lcom/gp/netscramblefull/NetScramble$6;
.super Landroid/widget/TextView;
.source "NetScramble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/netscramblefull/NetScramble;->createSplashScreen()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/netscramblefull/NetScramble;


# direct methods
.method constructor <init>(Lcom/gp/netscramblefull/NetScramble;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble$6;->this$0:Lcom/gp/netscramblefull/NetScramble;

    .line 633
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble$6;->this$0:Lcom/gp/netscramblefull/NetScramble;

    invoke-static {v0}, Lcom/gp/netscramblefull/NetScramble;->access$2(Lcom/gp/netscramblefull/NetScramble;)V

    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble$6;->this$0:Lcom/gp/netscramblefull/NetScramble;

    invoke-static {v0}, Lcom/gp/netscramblefull/NetScramble;->access$2(Lcom/gp/netscramblefull/NetScramble;)V

    .line 639
    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
