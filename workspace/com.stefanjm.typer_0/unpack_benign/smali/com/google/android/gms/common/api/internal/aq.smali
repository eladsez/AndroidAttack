.class final Lcom/google/android/gms/common/api/internal/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/l<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/o;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/common/api/f;

.field private final synthetic d:Lcom/google/android/gms/common/api/internal/am;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/am;Lcom/google/android/gms/common/api/internal/o;ZLcom/google/android/gms/common/api/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/aq;->d:Lcom/google/android/gms/common/api/internal/am;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/internal/o;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/aq;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/aq;->c:Lcom/google/android/gms/common/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/k;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->d:Lcom/google/android/gms/common/api/internal/am;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/am;->c(Lcom/google/android/gms/common/api/internal/am;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/d;->d()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->d:Lcom/google/android/gms/common/api/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->d:Lcom/google/android/gms/common/api/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/internal/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b(Lcom/google/android/gms/common/api/k;)V

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/aq;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/aq;->c:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->g()V

    :cond_1
    return-void
.end method
