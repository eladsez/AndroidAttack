.class final Landroid/support/v4/app/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field final j:Z

.field k:Landroid/os/Bundle;

.field l:Landroid/support/v4/app/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/r$1;

    invoke-direct {v0}, Landroid/support/v4/app/r$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/r;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/r;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/r;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/r;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/r;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v4/app/r;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Landroid/support/v4/app/r;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/r;->k:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/app/i;->o:I

    iput v0, p0, Landroid/support/v4/app/r;->b:I

    iget-boolean v0, p1, Landroid/support/v4/app/i;->w:Z

    iput-boolean v0, p0, Landroid/support/v4/app/r;->c:Z

    iget v0, p1, Landroid/support/v4/app/i;->H:I

    iput v0, p0, Landroid/support/v4/app/r;->d:I

    iget v0, p1, Landroid/support/v4/app/i;->I:I

    iput v0, p0, Landroid/support/v4/app/r;->e:I

    iget-object v0, p1, Landroid/support/v4/app/i;->J:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/r;->f:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/support/v4/app/i;->M:Z

    iput-boolean v0, p0, Landroid/support/v4/app/r;->g:Z

    iget-boolean v0, p1, Landroid/support/v4/app/i;->L:Z

    iput-boolean v0, p0, Landroid/support/v4/app/r;->h:Z

    iget-object v0, p1, Landroid/support/v4/app/i;->q:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    iget-boolean p1, p1, Landroid/support/v4/app/i;->K:Z

    iput-boolean p1, p0, Landroid/support/v4/app/r;->j:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/m;Landroid/support/v4/app/k;Landroid/support/v4/app/i;Landroid/support/v4/app/p;Landroid/arch/lifecycle/p;)Landroid/support/v4/app/i;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/m;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/k;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/i;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    invoke-static {v0, p2, v1}, Landroid/support/v4/app/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/i;

    move-result-object p2

    goto :goto_0

    :goto_1
    iget-object p2, p0, Landroid/support/v4/app/r;->k:Landroid/os/Bundle;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v4/app/r;->k:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/os/Bundle;

    iput-object v0, p2, Landroid/support/v4/app/i;->l:Landroid/os/Bundle;

    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget v0, p0, Landroid/support/v4/app/r;->b:I

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/app/i;->a(ILandroid/support/v4/app/i;)V

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget-boolean p3, p0, Landroid/support/v4/app/r;->c:Z

    iput-boolean p3, p2, Landroid/support/v4/app/i;->w:Z

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/support/v4/app/i;->y:Z

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget p3, p0, Landroid/support/v4/app/r;->d:I

    iput p3, p2, Landroid/support/v4/app/i;->H:I

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget p3, p0, Landroid/support/v4/app/r;->e:I

    iput p3, p2, Landroid/support/v4/app/i;->I:I

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget-object p3, p0, Landroid/support/v4/app/r;->f:Ljava/lang/String;

    iput-object p3, p2, Landroid/support/v4/app/i;->J:Ljava/lang/String;

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget-boolean p3, p0, Landroid/support/v4/app/r;->g:Z

    iput-boolean p3, p2, Landroid/support/v4/app/i;->M:Z

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget-boolean p3, p0, Landroid/support/v4/app/r;->h:Z

    iput-boolean p3, p2, Landroid/support/v4/app/i;->L:Z

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget-boolean p3, p0, Landroid/support/v4/app/r;->j:Z

    iput-boolean p3, p2, Landroid/support/v4/app/i;->K:Z

    iget-object p2, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    iput-object p1, p2, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    sget-boolean p1, Landroid/support/v4/app/o;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "FragmentManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iput-object p4, p1, Landroid/support/v4/app/i;->E:Landroid/support/v4/app/p;

    iget-object p1, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    iput-object p5, p1, Landroid/support/v4/app/i;->F:Landroid/arch/lifecycle/p;

    iget-object p1, p0, Landroid/support/v4/app/r;->l:Landroid/support/v4/app/i;

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/r;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/support/v4/app/r;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/r;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/r;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/r;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/r;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/support/v4/app/r;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Landroid/support/v4/app/r;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/r;->k:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
