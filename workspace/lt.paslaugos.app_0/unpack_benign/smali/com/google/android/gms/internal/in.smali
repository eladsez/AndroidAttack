.class final Lcom/google/android/gms/internal/in;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/google/android/gms/internal/im;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/im;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/im;

    iput p2, p0, Lcom/google/android/gms/internal/in;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/in;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/in;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/in;->a:I

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/im;

    invoke-static {p1}, Lcom/google/android/gms/internal/im;->a(Lcom/google/android/gms/internal/im;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/in;->b:I

    if-ne p2, p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/axt;->cE:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/im;

    invoke-static {p1}, Lcom/google/android/gms/internal/im;->b(Lcom/google/android/gms/internal/im;)V

    return-void

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/in;->c:I

    if-ne p2, p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/axt;->cF:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/im;

    invoke-static {p1}, Lcom/google/android/gms/internal/im;->c(Lcom/google/android/gms/internal/im;)V

    :cond_2
    return-void
.end method
