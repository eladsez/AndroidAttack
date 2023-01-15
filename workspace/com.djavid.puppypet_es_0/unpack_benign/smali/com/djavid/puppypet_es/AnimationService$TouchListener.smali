.class Lcom/djavid/puppypet_es/AnimationService$TouchListener;
.super Ljava/lang/Object;
.source "AnimationService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/AnimationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/AnimationService;


# direct methods
.method private constructor <init>(Lcom/djavid/puppypet_es/AnimationService;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/djavid/puppypet_es/AnimationService$TouchListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/djavid/puppypet_es/AnimationService;Lcom/djavid/puppypet_es/AnimationService$TouchListener;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/djavid/puppypet_es/AnimationService$TouchListener;-><init>(Lcom/djavid/puppypet_es/AnimationService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 493
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$TouchListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$4(Lcom/djavid/puppypet_es/AnimationService;)Lcom/djavid/puppypet_es/AnimationService$MotionState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v3

    .line 497
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$TouchListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$4(Lcom/djavid/puppypet_es/AnimationService;)Lcom/djavid/puppypet_es/AnimationService$MotionState;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/djavid/puppypet_es/AnimationService$MotionState;->access$0(Lcom/djavid/puppypet_es/AnimationService$MotionState;FF)V

    .line 499
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$TouchListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$2(Lcom/djavid/puppypet_es/AnimationService;)V

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$TouchListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$4(Lcom/djavid/puppypet_es/AnimationService;)Lcom/djavid/puppypet_es/AnimationService$MotionState;

    move-result-object v0

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService$MotionState;->access$1(Lcom/djavid/puppypet_es/AnimationService$MotionState;)V

    .line 503
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$TouchListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$2(Lcom/djavid/puppypet_es/AnimationService;)V

    goto :goto_0
.end method
