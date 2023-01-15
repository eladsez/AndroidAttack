.class public La/a/a/a/a/b/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/a/a/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a/a/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:La/a/a/a/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/a/a/b/q$1;

    invoke-direct {v0, p0}, La/a/a/a/a/b/q$1;-><init>(La/a/a/a/a/b/q;)V

    iput-object v0, p0, La/a/a/a/a/b/q;->a:La/a/a/a/a/a/d;

    new-instance v0, La/a/a/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/a/a/b;-><init>()V

    iput-object v0, p0, La/a/a/a/a/b/q;->b:La/a/a/a/a/a/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/b/q;->b:La/a/a/a/a/a/b;

    iget-object v2, p0, La/a/a/a/a/b/q;->a:La/a/a/a/a/a/d;

    invoke-virtual {v1, p1, v2}, La/a/a/a/a/a/b;->a(Landroid/content/Context;La/a/a/a/a/a/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to determine installer package name"

    invoke-interface {v1, v2, v3, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
