.class public abstract Lcom/google/android/gms/common/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/google/android/gms/common/a/a$a; = null

.field private static e:I = 0x0

.field private static f:Ljava/lang/String; = "com.google.android.providers.gsf.permission.READ_GSERVICES"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/a/a;->c:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/a/a;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/a/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/a/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/a/b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/a/b;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method
