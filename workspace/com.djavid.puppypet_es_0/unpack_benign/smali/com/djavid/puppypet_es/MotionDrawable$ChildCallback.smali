.class Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;
.super Ljava/lang/Object;
.source "MotionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/MotionDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/MotionDrawable;


# direct methods
.method private constructor <init>(Lcom/djavid/puppypet_es/MotionDrawable;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/djavid/puppypet_es/MotionDrawable;Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;-><init>(Lcom/djavid/puppypet_es/MotionDrawable;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-virtual {v0}, Lcom/djavid/puppypet_es/MotionDrawable;->getCurrentFrame()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-virtual {v0}, Lcom/djavid/puppypet_es/MotionDrawable;->invalidateSelf()V

    .line 406
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 411
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-virtual {v0}, Lcom/djavid/puppypet_es/MotionDrawable;->getCurrentFrame()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/djavid/puppypet_es/MotionDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 414
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-virtual {v0}, Lcom/djavid/puppypet_es/MotionDrawable;->getCurrentFrame()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/djavid/puppypet_es/MotionDrawable$ChildCallback;->this$0:Lcom/djavid/puppypet_es/MotionDrawable;

    invoke-virtual {v0, p2}, Lcom/djavid/puppypet_es/MotionDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 422
    :cond_0
    return-void
.end method
