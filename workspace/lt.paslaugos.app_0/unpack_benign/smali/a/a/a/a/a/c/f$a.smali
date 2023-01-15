.class La/a/a/a/a/c/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:La/a/a/a/a/c/f;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;La/a/a/a/a/c/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/c/f$a;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, La/a/a/a/a/c/f$a;->b:La/a/a/a/a/c/f;

    return-void
.end method

.method static synthetic a(La/a/a/a/a/c/f$a;)La/a/a/a/a/c/f;
    .locals 0

    iget-object p0, p0, La/a/a/a/a/c/f$a;->b:La/a/a/a/a/c/f;

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/c/f$a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, La/a/a/a/a/c/f$a$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, La/a/a/a/a/c/f$a$1;-><init>(La/a/a/a/a/c/f$a;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
