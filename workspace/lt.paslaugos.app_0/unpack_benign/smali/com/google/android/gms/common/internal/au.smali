.class public final Lcom/google/android/gms/common/internal/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/ar;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/internal/al;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/al;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/au;->a:Lcom/google/android/gms/common/internal/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/au;->a:Lcom/google/android/gms/common/internal/al;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/au;->a:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->i()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/au;->a:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->g(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/ao;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/au;->a:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->g(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/ao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/ao;->a(Lcom/google/android/gms/common/a;)V

    :cond_1
    return-void
.end method
