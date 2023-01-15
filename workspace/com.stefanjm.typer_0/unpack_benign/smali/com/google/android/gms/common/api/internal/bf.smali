.class final Lcom/google/android/gms/common/api/internal/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/b;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/e$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/e$c;Lcom/google/android/gms/common/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bf;->b:Lcom/google/android/gms/common/api/internal/e$c;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bf;->a:Lcom/google/android/gms/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bf;->a:Lcom/google/android/gms/common/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bf;->b:Lcom/google/android/gms/common/api/internal/e$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/e$c;->a(Lcom/google/android/gms/common/api/internal/e$c;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bf;->b:Lcom/google/android/gms/common/api/internal/e$c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e$c;->a(Lcom/google/android/gms/common/api/internal/e$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bf;->b:Lcom/google/android/gms/common/api/internal/e$c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e$c;->b(Lcom/google/android/gms/common/api/internal/e$c;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bf;->b:Lcom/google/android/gms/common/api/internal/e$c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e$c;->a(Lcom/google/android/gms/common/api/internal/e$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/u;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bf;->b:Lcom/google/android/gms/common/api/internal/e$c;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/e$c;->a:Lcom/google/android/gms/common/api/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e;->j(Lcom/google/android/gms/common/api/internal/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bf;->b:Lcom/google/android/gms/common/api/internal/e$c;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/e$c;->c(Lcom/google/android/gms/common/api/internal/e$c;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bf;->a:Lcom/google/android/gms/common/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/e$a;->a(Lcom/google/android/gms/common/b;)V

    return-void
.end method
