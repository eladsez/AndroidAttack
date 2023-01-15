.class public Lcom/google/firebase/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/google/firebase/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/a/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/a/a$a;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/a/a$a;->b:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/a/a$a;->c:I

    const-string v1, "Null interface"

    invoke-static {p1, v1}, Lcom/google/firebase/a/u;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/a/a$a;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    const-string v2, "Null interface"

    invoke-static {v1, v2}, Lcom/google/firebase/a/u;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/a/a$a;->a:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/a/l;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/a/a$a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/a/e;)Lcom/google/firebase/a/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a/e<",
            "TT;>;)",
            "Lcom/google/firebase/a/a$a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null factory"

    invoke-static {p1, v0}, Lcom/google/firebase/a/u;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/a/e;

    iput-object p1, p0, Lcom/google/firebase/a/a$a;->d:Lcom/google/firebase/a/e;

    return-object p0
.end method

.method public a()Lcom/google/firebase/a/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/a/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/a/a$a;->d:Lcom/google/firebase/a/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Missing required property: factory."

    invoke-static {v0, v1}, Lcom/google/firebase/a/u;->a(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/firebase/a/a;

    new-instance v3, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/a/a$a;->a:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/a/a$a;->b:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v5, p0, Lcom/google/firebase/a/a$a;->c:I

    iget-object v6, p0, Lcom/google/firebase/a/a$a;->d:Lcom/google/firebase/a/e;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/a/a;-><init>(Ljava/util/Set;Ljava/util/Set;ILcom/google/firebase/a/e;Lcom/google/firebase/a/l;)V

    return-object v0
.end method
