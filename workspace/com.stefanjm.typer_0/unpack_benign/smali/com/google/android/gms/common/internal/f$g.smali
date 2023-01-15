.class public Lcom/google/android/gms/common/internal/f$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "g"
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f$g;->a:Lcom/google/android/gms/common/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$g;->a:Lcom/google/android/gms/common/internal/f;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f$g;->a:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f;->C()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/u;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f$g;->a:Lcom/google/android/gms/common/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->g(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/f$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f$g;->a:Lcom/google/android/gms/common/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->g(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/f$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/f$b;->a(Lcom/google/android/gms/common/b;)V

    :cond_1
    return-void
.end method
