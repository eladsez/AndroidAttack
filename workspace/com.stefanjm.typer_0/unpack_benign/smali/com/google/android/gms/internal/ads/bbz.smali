.class public final Lcom/google/android/gms/internal/ads/bbz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/lb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lb<",
            "Lcom/google/android/gms/internal/ads/bae;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/internal/ads/lb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lb<",
            "Lcom/google/android/gms/internal/ads/bae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/baq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bca;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbz;->a:Lcom/google/android/gms/internal/ads/lb;

    new-instance v0, Lcom/google/android/gms/internal/ads/bcb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbz;->b:Lcom/google/android/gms/internal/ads/lb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/baq;

    sget-object v4, Lcom/google/android/gms/internal/ads/bbz;->a:Lcom/google/android/gms/internal/ads/lb;

    sget-object v5, Lcom/google/android/gms/internal/ads/bbz;->b:Lcom/google/android/gms/internal/ads/lb;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/baq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/lb;Lcom/google/android/gms/internal/ads/lb;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/bbz;->c:Lcom/google/android/gms/internal/ads/baq;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/bbt;)Lcom/google/android/gms/internal/ads/bbr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bbu<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/bbt<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/bbr<",
            "TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/bcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbz;->c:Lcom/google/android/gms/internal/ads/baq;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bcc;-><init>(Lcom/google/android/gms/internal/ads/baq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/bbt;)V

    return-object v0
.end method
