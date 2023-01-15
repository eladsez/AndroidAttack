.class Lcom/android/sf/dna/Looking;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/sf/dna/Collection;


# direct methods
.method constructor <init>(Lcom/android/sf/dna/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/sf/dna/Looking;->a:Lcom/android/sf/dna/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/sf/dna/Looking;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->k:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, 0x2710

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/sf/dna/Looking;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/sf/dna/To;->a(Lcom/android/sf/dna/To;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
