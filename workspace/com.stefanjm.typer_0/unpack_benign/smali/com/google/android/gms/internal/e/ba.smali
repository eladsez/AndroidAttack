.class final Lcom/google/android/gms/internal/e/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/Object;

.field private final synthetic d:Ljava/lang/Object;

.field private final synthetic e:Ljava/lang/Object;

.field private final synthetic f:Lcom/google/android/gms/internal/e/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/az;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    iput p2, p0, Lcom/google/android/gms/internal/e/ba;->a:I

    iput-object p3, p0, Lcom/google/android/gms/internal/e/ba;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/e/ba;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/e/ba;->d:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/internal/e/ba;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/az;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->P()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/az;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    invoke-static {v1}, Lcom/google/android/gms/internal/e/az;->a(Lcom/google/android/gms/internal/e/az;)C

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/aa;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    const/16 v2, 0x43

    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/e/az;->a(Lcom/google/android/gms/internal/e/az;C)C

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    const/16 v2, 0x63

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    invoke-static {v1}, Lcom/google/android/gms/internal/e/az;->b(Lcom/google/android/gms/internal/e/az;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    const-wide/16 v2, 0x30a3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/e/az;->a(Lcom/google/android/gms/internal/e/az;J)J

    :cond_3
    const-string v1, "01VDIWEA?"

    iget v2, p0, Lcom/google/android/gms/internal/e/ba;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    invoke-static {v2}, Lcom/google/android/gms/internal/e/az;->a(Lcom/google/android/gms/internal/e/az;)C

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/e/ba;->f:Lcom/google/android/gms/internal/e/az;

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->b(Lcom/google/android/gms/internal/e/az;)J

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/e/ba;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/e/ba;->c:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/e/ba;->d:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/internal/e/ba;->e:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/e/az;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ba;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->b:Lcom/google/android/gms/internal/e/bo;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/e/bo;->a(Ljava/lang/String;J)V

    return-void
.end method
