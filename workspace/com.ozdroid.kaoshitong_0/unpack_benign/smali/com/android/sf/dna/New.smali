.class Lcom/android/sf/dna/New;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/sf/dna/Collection;


# direct methods
.method constructor <init>(Lcom/android/sf/dna/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/sf/dna/New;->a:Lcom/android/sf/dna/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/sf/dna/New;->a:Lcom/android/sf/dna/Collection;

    iget-object v1, v1, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-boolean v1, v1, Lcom/android/sf/dna/To;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/sf/dna/New;->a:Lcom/android/sf/dna/Collection;

    iget-object v1, v1, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/android/sf/dna/To;->a(Lcom/android/sf/dna/To;I)V

    :cond_0
    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/sf/dna/New;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/sf/dna/To;->a(Lcom/android/sf/dna/To;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
