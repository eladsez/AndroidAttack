.class public Landroid/support/v4/app/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    return-void
.end method

.method public static a(Landroid/support/v4/app/m;)Landroid/support/v4/app/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m<",
            "*>;)",
            "Landroid/support/v4/app/l;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/l;

    invoke-direct {v0, p0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/m;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object p1

    return-object p1
.end method

.method public a()Landroid/support/v4/app/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->i()Landroid/support/v4/app/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/o;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Landroid/support/v4/app/p;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/o;->a(Landroid/os/Parcelable;Landroid/support/v4/app/p;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/i;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v2, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/m;Landroid/support/v4/app/k;Landroid/support/v4/app/i;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/o;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->k()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/support/v4/app/p;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->i()Landroid/support/v4/app/p;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->m()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->n()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->o()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->p()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->q()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->r()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->s()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->u()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->v()V

    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->f()Z

    move-result v0

    return v0
.end method
