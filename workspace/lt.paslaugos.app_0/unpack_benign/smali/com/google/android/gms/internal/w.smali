.class final synthetic Lcom/google/android/gms/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/t;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/t;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/w;->a:Lcom/google/android/gms/internal/t;

    iput-object p2, p0, Lcom/google/android/gms/internal/w;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/w;->a:Lcom/google/android/gms/internal/t;

    iget-object v1, p0, Lcom/google/android/gms/internal/w;->b:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/nu;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/t;->b(Lorg/json/JSONObject;Lcom/google/android/gms/internal/nu;)Lcom/google/android/gms/internal/lf;

    move-result-object p1

    return-object p1
.end method
