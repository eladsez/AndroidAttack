.class Lcom/android/sf/dna/My;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/sf/dna/Today;


# direct methods
.method constructor <init>(Lcom/android/sf/dna/Today;)V
    .locals 0

    iput-object p1, p0, Lcom/android/sf/dna/My;->a:Lcom/android/sf/dna/Today;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/sf/dna/My;->a:Lcom/android/sf/dna/Today;

    iget-object v0, v0, Lcom/android/sf/dna/Today;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/sf/dna/To;->a(Lcom/android/sf/dna/To;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
