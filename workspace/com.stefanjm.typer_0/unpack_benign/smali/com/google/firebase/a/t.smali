.class final synthetic Lcom/google/firebase/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/b/a;


# instance fields
.field private final a:Lcom/google/firebase/a/e;

.field private final b:Lcom/google/firebase/a/b;


# direct methods
.method constructor <init>(Lcom/google/firebase/a/e;Lcom/google/firebase/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/a/t;->a:Lcom/google/firebase/a/e;

    iput-object p2, p0, Lcom/google/firebase/a/t;->b:Lcom/google/firebase/a/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/a/t;->a:Lcom/google/firebase/a/e;

    iget-object v1, p0, Lcom/google/firebase/a/t;->b:Lcom/google/firebase/a/b;

    invoke-static {v0, v1}, Lcom/google/firebase/a/s;->a(Lcom/google/firebase/a/e;Lcom/google/firebase/a/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
