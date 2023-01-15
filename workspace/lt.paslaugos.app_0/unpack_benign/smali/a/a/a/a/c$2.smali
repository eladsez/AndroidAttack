.class La/a/a/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/c;->a(I)La/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:I

.field final synthetic c:La/a/a/a/c;


# direct methods
.method constructor <init>(La/a/a/a/c;I)V
    .locals 0

    iput-object p1, p0, La/a/a/a/c$2;->c:La/a/a/a/c;

    iput p2, p0, La/a/a/a/c$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    iget p2, p0, La/a/a/a/c$2;->b:I

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, La/a/a/a/c$2;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/c$2;->c:La/a/a/a/c;

    invoke-static {v0}, La/a/a/a/c;->b(La/a/a/a/c;)La/a/a/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/a/f;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    iget-object p1, p0, La/a/a/a/c$2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, La/a/a/a/c$2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, La/a/a/a/c$2;->c:La/a/a/a/c;

    invoke-static {p1}, La/a/a/a/c;->a(La/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, La/a/a/a/c$2;->c:La/a/a/a/c;

    invoke-static {p1}, La/a/a/a/c;->b(La/a/a/a/c;)La/a/a/a/f;

    move-result-object p1

    iget-object v0, p0, La/a/a/a/c$2;->c:La/a/a/a/c;

    invoke-interface {p1, v0}, La/a/a/a/f;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
