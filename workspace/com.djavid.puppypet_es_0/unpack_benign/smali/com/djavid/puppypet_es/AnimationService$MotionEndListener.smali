.class Lcom/djavid/puppypet_es/AnimationService$MotionEndListener;
.super Ljava/lang/Object;
.source "AnimationService.java"

# interfaces
.implements Lcom/djavid/puppypet_es/MotionDrawable$OnMotionEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/AnimationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/AnimationService;


# direct methods
.method private constructor <init>(Lcom/djavid/puppypet_es/AnimationService;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/djavid/puppypet_es/AnimationService$MotionEndListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/djavid/puppypet_es/AnimationService;Lcom/djavid/puppypet_es/AnimationService$MotionEndListener;)V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0, p1}, Lcom/djavid/puppypet_es/AnimationService$MotionEndListener;-><init>(Lcom/djavid/puppypet_es/AnimationService;)V

    return-void
.end method


# virtual methods
.method public onMotionEnd(Lcom/djavid/puppypet_es/MotionDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/djavid/puppypet_es/MotionDrawable;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$MotionEndListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$8(Lcom/djavid/puppypet_es/AnimationService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$MotionEndListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$4(Lcom/djavid/puppypet_es/AnimationService;)Lcom/djavid/puppypet_es/AnimationService$MotionState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$MotionEndListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$4(Lcom/djavid/puppypet_es/AnimationService;)Lcom/djavid/puppypet_es/AnimationService$MotionState;

    move-result-object v0

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService$MotionState;->access$2(Lcom/djavid/puppypet_es/AnimationService$MotionState;)Lcom/djavid/puppypet_es/MotionDrawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$MotionEndListener;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0}, Lcom/djavid/puppypet_es/AnimationService;->access$9(Lcom/djavid/puppypet_es/AnimationService;)V

    .line 861
    :cond_0
    return-void
.end method
