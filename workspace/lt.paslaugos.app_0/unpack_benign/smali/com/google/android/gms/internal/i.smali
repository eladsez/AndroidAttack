.class final synthetic Lcom/google/android/gms/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/h;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lcom/google/android/gms/internal/lq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/h;Lorg/json/JSONObject;Lcom/google/android/gms/internal/lq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/i;->a:Lcom/google/android/gms/internal/h;

    iput-object p2, p0, Lcom/google/android/gms/internal/i;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/i;->c:Lcom/google/android/gms/internal/lq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/i;->a:Lcom/google/android/gms/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/internal/i;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/i;->c:Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/h;->a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/lq;)V

    return-void
.end method
