.class La/a/a/a/a/b/n$1$1;
.super La/a/a/a/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/a/b/n$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:La/a/a/a/a/b/n$1;


# direct methods
.method constructor <init>(La/a/a/a/a/b/n$1;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/b/n$1$1;->b:La/a/a/a/a/b/n$1;

    iput-object p2, p0, La/a/a/a/a/b/n$1$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, La/a/a/a/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/b/n$1$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
