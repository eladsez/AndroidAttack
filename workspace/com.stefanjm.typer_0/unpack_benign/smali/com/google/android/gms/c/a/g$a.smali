.class public abstract Lcom/google/android/gms/c/a/g$a;
.super Lcom/google/android/gms/internal/f/b;

# interfaces
.implements Lcom/google/android/gms/c/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/a/g$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a/g;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/c/a/g;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/c/a/g;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/c/a/g$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/a/g$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-static {p2}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/a/g$a;->b(Z)V

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/c/a/k;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/c/a/k;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/c/a/f$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/c/a/g$a;->a(Lcom/google/android/gms/c/a/k;Lcom/google/android/gms/c/a/f;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/c/a/f$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/a/g$a;->a(Lcom/google/android/gms/c/a/f;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lcom/google/android/gms/c/a/h;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/c/a/h;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/c/a/f$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/c/a/g$a;->a(Lcom/google/android/gms/c/a/h;Lcom/google/android/gms/c/a/f;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-static {p2}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;)Z

    move-result p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/c/a/g$a;->a(Lcom/google/android/gms/common/internal/u;IZ)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/accounts/Account;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/c/a/f$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a/f;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/c/a/g$a;->a(ILandroid/accounts/Account;Lcom/google/android/gms/c/a/f;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/a/g$a;->a(I)V

    goto :goto_0

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/common/internal/ae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ae;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/aa$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/aa;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/c/a/g$a;->a(Lcom/google/android/gms/common/internal/ae;Lcom/google/android/gms/common/internal/aa;)V

    goto :goto_0

    :pswitch_9
    invoke-static {p2}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/a/g$a;->a(Z)V

    goto :goto_0

    :pswitch_a
    sget-object p1, Lcom/google/android/gms/c/a/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/c/a/d;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/a/g$a;->a(Lcom/google/android/gms/c/a/d;)V

    goto :goto_0

    :pswitch_b
    sget-object p1, Lcom/google/android/gms/common/internal/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/d;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/c/a/f$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/c/a/g$a;->a(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/c/a/f;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
