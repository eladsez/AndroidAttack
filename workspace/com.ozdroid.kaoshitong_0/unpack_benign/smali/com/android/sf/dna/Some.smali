.class Lcom/android/sf/dna/Some;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/android/sf/dna/Collection;


# direct methods
.method constructor <init>(Lcom/android/sf/dna/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/sf/dna/Some;->a:Lcom/android/sf/dna/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/sf/dna/Some;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget v1, v0, Lcom/android/sf/dna/To;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/sf/dna/To;->f:I

    iget-object v0, p0, Lcom/android/sf/dna/Some;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget v0, v0, Lcom/android/sf/dna/To;->f:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/sf/dna/Some;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/sf/dna/To;->f:I

    iget-object v0, p0, Lcom/android/sf/dna/Some;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/sf/dna/Some;->a:Lcom/android/sf/dna/Collection;

    iget-object v0, v0, Lcom/android/sf/dna/Collection;->a:Lcom/android/sf/dna/To;

    iget-object v0, v0, Lcom/android/sf/dna/To;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
