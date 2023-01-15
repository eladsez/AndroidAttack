.class final Lcom/google/android/gms/internal/adm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/acl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/acl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/adm;->a:Lcom/google/android/gms/internal/acl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/adm;->a:Lcom/google/android/gms/internal/acl;

    invoke-static {v0}, Lcom/google/android/gms/internal/acl;->a(Lcom/google/android/gms/internal/acl;)V

    return-void
.end method
