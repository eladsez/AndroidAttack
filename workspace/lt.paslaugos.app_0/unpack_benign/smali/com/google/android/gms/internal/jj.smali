.class public final Lcom/google/android/gms/internal/jj;
.super Lcom/google/android/gms/internal/ban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ban<",
        "Lcom/google/android/gms/internal/ayl;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/lq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/lq<",
            "Lcom/google/android/gms/internal/ayl;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/kd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/lq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lq<",
            "Lcom/google/android/gms/internal/ayl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/jj;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/lq;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/lq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/lq<",
            "Lcom/google/android/gms/internal/ayl;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/jl;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/android/gms/internal/lq;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ban;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/bhi;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/jj;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/jj;->a:Lcom/google/android/gms/internal/lq;

    new-instance p3, Lcom/google/android/gms/internal/kd;

    invoke-direct {p3}, Lcom/google/android/gms/internal/kd;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/jj;->c:Lcom/google/android/gms/internal/kd;

    iget-object p3, p0, Lcom/google/android/gms/internal/jj;->c:Lcom/google/android/gms/internal/kd;

    const-string v0, "GET"

    invoke-virtual {p3, p1, v0, p2, p2}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ayl;)Lcom/google/android/gms/internal/bgr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ayl;",
            ")",
            "Lcom/google/android/gms/internal/bgr<",
            "Lcom/google/android/gms/internal/ayl;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/op;->a(Lcom/google/android/gms/internal/ayl;)Lcom/google/android/gms/internal/ru;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/bgr;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ru;)Lcom/google/android/gms/internal/bgr;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ayl;

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->c:Lcom/google/android/gms/internal/kd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ayl;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ayl;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/kd;->a(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->c:Lcom/google/android/gms/internal/kd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ayl;->b:[B

    invoke-static {}, Lcom/google/android/gms/internal/kd;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kd;->a([B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->a:Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/Object;)V

    return-void
.end method
