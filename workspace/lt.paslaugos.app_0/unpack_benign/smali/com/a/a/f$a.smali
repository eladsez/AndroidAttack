.class Lcom/a/a/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field private final b:Lcom/a/a/m;

.field private final c:Lcom/a/a/o;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/a/a/f;Lcom/a/a/m;Lcom/a/a/o;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/f$a;->a:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/a/a/f$a;->b:Lcom/a/a/m;

    iput-object p3, p0, Lcom/a/a/f$a;->c:Lcom/a/a/o;

    iput-object p4, p0, Lcom/a/a/f$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/f$a;->b:Lcom/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/f$a;->b:Lcom/a/a/m;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/a/a/m;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/f$a;->c:Lcom/a/a/o;

    invoke-virtual {v0}, Lcom/a/a/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/f$a;->b:Lcom/a/a/m;

    iget-object v1, p0, Lcom/a/a/f$a;->c:Lcom/a/a/o;

    iget-object v1, v1, Lcom/a/a/o;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/a/a/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/f$a;->b:Lcom/a/a/m;

    iget-object v1, p0, Lcom/a/a/f$a;->c:Lcom/a/a/o;

    iget-object v1, v1, Lcom/a/a/o;->c:Lcom/a/a/t;

    invoke-virtual {v0, v1}, Lcom/a/a/m;->b(Lcom/a/a/t;)V

    :goto_0
    iget-object v0, p0, Lcom/a/a/f$a;->c:Lcom/a/a/o;

    iget-boolean v0, v0, Lcom/a/a/o;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/f$a;->b:Lcom/a/a/m;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/a/a/f$a;->b:Lcom/a/a/m;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/a/a/m;->b(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/a/a/f$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/f$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
