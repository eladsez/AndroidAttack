.class public final Lcom/google/android/gms/internal/bev;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/iw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/iw<",
            "Lcom/google/android/gms/ads/internal/js/o;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/iw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/iw<",
            "Lcom/google/android/gms/ads/internal/js/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/js/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bew;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bev;->a:Lcom/google/android/gms/internal/iw;

    new-instance v0, Lcom/google/android/gms/internal/bex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bev;->b:Lcom/google/android/gms/internal/iw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/ads/internal/js/z;

    sget-object v4, Lcom/google/android/gms/internal/bev;->a:Lcom/google/android/gms/internal/iw;

    sget-object v5, Lcom/google/android/gms/internal/bev;->b:Lcom/google/android/gms/internal/iw;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/js/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Ljava/lang/String;Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iw;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/bev;->c:Lcom/google/android/gms/ads/internal/js/z;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/beq;Lcom/google/android/gms/internal/beo;)Lcom/google/android/gms/internal/bem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/beq<",
            "TI;>;",
            "Lcom/google/android/gms/internal/beo<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/bem<",
            "TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/bey;

    iget-object v1, p0, Lcom/google/android/gms/internal/bev;->c:Lcom/google/android/gms/ads/internal/js/z;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/bey;-><init>(Lcom/google/android/gms/ads/internal/js/z;Ljava/lang/String;Lcom/google/android/gms/internal/beq;Lcom/google/android/gms/internal/beo;)V

    return-object v0
.end method
