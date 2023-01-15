.class Lcom/android/sf/dna/Today;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/android/sf/dna/Collection;


# direct methods
.method constructor <init>(Lcom/android/sf/dna/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/sf/dna/Today;->a:Lcom/android/sf/dna/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/sf/dna/Today;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    invoke-static {v0}, Lcom/android/sf/dna/To;->b(Lcom/android/sf/dna/To;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/sf/dna/My;

    invoke-direct {v1, p0}, Lcom/android/sf/dna/My;-><init>(Lcom/android/sf/dna/Today;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/android/sf/dna/To;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
