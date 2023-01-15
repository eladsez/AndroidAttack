.class public abstract Lcom/google/android/gms/internal/ads/abq$c;
.super Lcom/google/android/gms/internal/ads/abq;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/abq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/abq$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/abq<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# instance fields
.field protected zzdtz:Lcom/google/android/gms/internal/ads/abi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/abi<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abq;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/abi;->a()Lcom/google/android/gms/internal/ads/abi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abq$c;->zzdtz:Lcom/google/android/gms/internal/ads/abi;

    return-void
.end method
