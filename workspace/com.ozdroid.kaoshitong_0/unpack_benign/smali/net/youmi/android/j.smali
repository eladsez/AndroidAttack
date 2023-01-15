.class Lnet/youmi/android/j;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/animation/Animation;

.field b:Landroid/view/animation/Animation;

.field c:J

.field d:J


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Z)V
    .locals 3

    const-wide/16 v0, 0x320

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lnet/youmi/android/j;->c:J

    iput-wide v0, p0, Lnet/youmi/android/j;->d:J

    iput-object p1, p0, Lnet/youmi/android/j;->a:Landroid/view/animation/Animation;

    iput-object p2, p0, Lnet/youmi/android/j;->b:Landroid/view/animation/Animation;

    if-nez p3, :cond_1

    iget-object v0, p0, Lnet/youmi/android/j;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/j;->a:Landroid/view/animation/Animation;

    iget-wide v1, p0, Lnet/youmi/android/j;->c:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/j;->b:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/j;->b:Landroid/view/animation/Animation;

    iget-wide v1, p0, Lnet/youmi/android/j;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1
    return-void
.end method
