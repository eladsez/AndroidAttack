.class public La/a/a/a/a/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:La/a/a/a/a/d/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/a/a/d/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/d/i;->a:Landroid/content/Context;

    iput-object p2, p0, La/a/a/a/a/d/i;->b:La/a/a/a/a/d/e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/d/i;->a:Landroid/content/Context;

    const-string v1, "Performing time based file roll over."

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/d/i;->b:La/a/a/a/a/d/e;

    invoke-interface {v0}, La/a/a/a/a/d/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/d/i;->b:La/a/a/a/a/d/e;

    invoke-interface {v0}, La/a/a/a/a/d/e;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/d/i;->a:Landroid/content/Context;

    const-string v2, "Failed to roll over file"

    invoke-static {v1, v2, v0}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
