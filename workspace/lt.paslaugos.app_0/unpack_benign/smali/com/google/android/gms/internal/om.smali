.class public final Lcom/google/android/gms/internal/om;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/oq;",
        ":",
        "Lcom/google/android/gms/internal/ph;",
        ":",
        "Lcom/google/android/gms/internal/pj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/oo;

.field private final b:Lcom/google/android/gms/internal/oq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/internal/oo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/oo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/om;->a:Lcom/google/android/gms/internal/oo;

    iput-object p1, p0, Lcom/google/android/gms/internal/om;->b:Lcom/google/android/gms/internal/oq;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/nu;)Lcom/google/android/gms/internal/om;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/nu;",
            ")",
            "Lcom/google/android/gms/internal/om<",
            "Lcom/google/android/gms/internal/nu;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/om;

    new-instance v1, Lcom/google/android/gms/internal/on;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/on;-><init>(Lcom/google/android/gms/internal/nu;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/om;-><init>(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/internal/oo;)V

    return-object v0
.end method
