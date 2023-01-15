.class final synthetic Lcom/google/android/gms/internal/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/asm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/atn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/atn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/atn;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/atc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/atn;

    iget-object p1, p1, Lcom/google/android/gms/internal/atc;->c:Lcom/google/android/gms/internal/ata;

    iput-object v0, p1, Lcom/google/android/gms/internal/ata;->b:Lcom/google/android/gms/internal/atn;

    return-void
.end method
