.class Lcom/djavid/puppypet_es/MotionDrawable$ChildOnMotionEnd;
.super Ljava/lang/Object;
.source "MotionDrawable.java"

# interfaces
.implements Lcom/djavid/puppypet_es/MotionDrawable$OnMotionEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/MotionDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildOnMotionEnd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/MotionDrawable;


# direct methods
.method private constructor <init>(Lcom/djavid/puppypet_es/MotionDrawable;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildOnMotionEnd;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/djavid/puppypet_es/MotionDrawable;Lcom/djavid/puppypet_es/MotionDrawable$ChildOnMotionEnd;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/djavid/puppypet_es/MotionDrawable$ChildOnMotionEnd;-><init>(Lcom/djavid/puppypet_es/MotionDrawable;)V

    return-void
.end method


# virtual methods
.method public onMotionEnd(Lcom/djavid/puppypet_es/MotionDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/djavid/puppypet_es/MotionDrawable;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildOnMotionEnd;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-virtual {v0}, Lcom/djavid/puppypet_es/MotionDrawable;->getCurrentFrame()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildOnMotionEnd;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-static {v0}, Lcom/djavid/puppypet_es/MotionDrawable;->access$0(Lcom/djavid/puppypet_es/MotionDrawable;)V

    .line 433
    :cond_0
    return-void
.end method
