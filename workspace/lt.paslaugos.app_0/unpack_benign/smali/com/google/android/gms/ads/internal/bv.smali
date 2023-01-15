.class final synthetic Lcom/google/android/gms/ads/internal/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/aqg;

.field private final b:Lcom/google/android/gms/internal/gl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aqg;Lcom/google/android/gms/internal/gl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bv;->a:Lcom/google/android/gms/internal/aqg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bv;->b:Lcom/google/android/gms/internal/gl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bv;->a:Lcom/google/android/gms/internal/aqg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bv;->b:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aqg;->a(Lcom/google/android/gms/internal/aqk;)V

    return-void
.end method
