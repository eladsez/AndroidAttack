.class final synthetic Lcom/google/android/gms/internal/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/aa;


# instance fields
.field private final a:Lcom/google/android/gms/internal/t;

.field private final b:Lcom/google/android/gms/internal/nu;

.field private final c:Lcom/google/android/gms/internal/bjh;

.field private final d:Lcom/google/android/gms/internal/lq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bjh;Lcom/google/android/gms/internal/lq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/y;->a:Lcom/google/android/gms/internal/t;

    iput-object p2, p0, Lcom/google/android/gms/internal/y;->b:Lcom/google/android/gms/internal/nu;

    iput-object p3, p0, Lcom/google/android/gms/internal/y;->c:Lcom/google/android/gms/internal/bjh;

    iput-object p4, p0, Lcom/google/android/gms/internal/y;->d:Lcom/google/android/gms/internal/lq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/y;->a:Lcom/google/android/gms/internal/t;

    iget-object v1, p0, Lcom/google/android/gms/internal/y;->b:Lcom/google/android/gms/internal/nu;

    iget-object v2, p0, Lcom/google/android/gms/internal/y;->c:Lcom/google/android/gms/internal/bjh;

    iget-object v3, p0, Lcom/google/android/gms/internal/y;->d:Lcom/google/android/gms/internal/lq;

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/nu;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bjh;Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/nu;Ljava/util/Map;)V

    return-void
.end method
