.class Landroid/support/v4/a/d$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/a/d$a;

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, v0, Landroid/support/v4/a/d$a;->a:Landroid/support/v4/a/d;

    iget-object v0, v0, Landroid/support/v4/a/d$a;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/a/d;->b([Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p1, v0, Landroid/support/v4/a/d$a;->a:Landroid/support/v4/a/d;

    iget-object v0, v0, Landroid/support/v4/a/d$a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/a/d;->e(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
