.class public Lcom/google/android/gms/internal/aky$a;
.super Lcom/google/android/gms/internal/ajv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/aky<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/aky$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ajv<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/aky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/aky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/aky;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ajv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aky$a;->b:Lcom/google/android/gms/internal/aky;

    sget v0, Lcom/google/android/gms/internal/aky$g;->g:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    iput-object p1, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/aky;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/aky$f;->a:Lcom/google/android/gms/internal/aky$f;

    sget v1, Lcom/google/android/gms/internal/aky$g;->b:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    iget-object p1, p1, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/aky$h;->a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/ajv;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ajv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky$a;

    return-object v0
.end method

.method protected final synthetic a(Lcom/google/android/gms/internal/aju;)Lcom/google/android/gms/internal/ajv;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/aky;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/aky;)V

    return-object p0
.end method

.method protected final b()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    sget v1, Lcom/google/android/gms/internal/aky$g;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky;

    iget-object v1, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/aky;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    :cond_0
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/aky;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    sget v1, Lcom/google/android/gms/internal/aky$g;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/anb;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->b:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/aky;

    sget v1, Lcom/google/android/gms/internal/aky$g;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky$a;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    sget v3, Lcom/google/android/gms/internal/aky$g;->f:I

    invoke-virtual {v1, v3, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/anb;->c()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    goto :goto_0

    :goto_1
    check-cast v1, Lcom/google/android/gms/internal/aky;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/aky;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    sget v3, Lcom/google/android/gms/internal/aky$g;->f:I

    invoke-virtual {v0, v3, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/anb;->c()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    goto :goto_0

    :goto_1
    check-cast v0, Lcom/google/android/gms/internal/aky;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget v4, Lcom/google/android/gms/internal/aky$g;->c:I

    invoke-virtual {v0, v4, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v1, :cond_1

    goto :goto_4

    :cond_1
    if-nez v4, :cond_2

    const/4 v1, 0x0

    goto :goto_4

    :cond_2
    sget v4, Lcom/google/android/gms/internal/aky$g;->a:I

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v6, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_5

    sget v3, Lcom/google/android/gms/internal/aky$g;->d:I

    if-eqz v1, :cond_4

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/amz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/amz;-><init>(Lcom/google/android/gms/internal/alx;)V

    throw v1
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/alx;
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->a:Lcom/google/android/gms/internal/aky;

    sget v3, Lcom/google/android/gms/internal/aky$g;->f:I

    invoke-virtual {v0, v3, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/anb;->c()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/aky$a;->c:Z

    goto :goto_0

    :goto_1
    check-cast v0, Lcom/google/android/gms/internal/aky;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget v4, Lcom/google/android/gms/internal/aky$g;->c:I

    invoke-virtual {v0, v4, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v1, :cond_1

    goto :goto_4

    :cond_1
    if-nez v4, :cond_2

    const/4 v1, 0x0

    goto :goto_4

    :cond_2
    sget v4, Lcom/google/android/gms/internal/aky$g;->a:I

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v6, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_5

    sget v3, Lcom/google/android/gms/internal/aky$g;->d:I

    if-eqz v1, :cond_4

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/amz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/amz;-><init>(Lcom/google/android/gms/internal/alx;)V

    throw v1
.end method

.method public final synthetic n()Lcom/google/android/gms/internal/alx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aky$a;->b:Lcom/google/android/gms/internal/aky;

    return-object v0
.end method
