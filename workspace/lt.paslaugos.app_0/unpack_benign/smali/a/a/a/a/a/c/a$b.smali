.class La/a/a/a/a/c/a$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
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

    check-cast v0, La/a/a/a/a/c/a$a;

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, v0, La/a/a/a/a/c/a$a;->a:La/a/a/a/a/c/a;

    iget-object v0, v0, La/a/a/a/a/c/a$a;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, La/a/a/a/a/c/a;->b([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, v0, La/a/a/a/a/c/a$a;->a:La/a/a/a/a/c/a;

    iget-object v0, v0, La/a/a/a/a/c/a$a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, La/a/a/a/a/c/a;->c(La/a/a/a/a/c/a;Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
