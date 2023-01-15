.class public final Lcom/google/android/gms/internal/ato;
.super Lcom/google/android/gms/internal/anv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/anv<",
        "Lcom/google/android/gms/internal/ato;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:[Lcom/google/android/gms/internal/ato;


# instance fields
.field private b:Lcom/google/android/gms/internal/att;

.field private c:Lcom/google/android/gms/internal/atv;

.field private d:Lcom/google/android/gms/internal/atw;

.field private e:Lcom/google/android/gms/internal/atx;

.field private f:Lcom/google/android/gms/internal/atp;

.field private g:Lcom/google/android/gms/internal/atu;

.field private h:Lcom/google/android/gms/internal/atr;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Lcom/google/android/gms/internal/atm;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Integer;

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/anv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->b:Lcom/google/android/gms/internal/att;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->c:Lcom/google/android/gms/internal/atv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->d:Lcom/google/android/gms/internal/atw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->e:Lcom/google/android/gms/internal/atx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->f:Lcom/google/android/gms/internal/atp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->g:Lcom/google/android/gms/internal/atu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->h:Lcom/google/android/gms/internal/atr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->k:Lcom/google/android/gms/internal/atm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->m:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->p:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->X:Lcom/google/android/gms/internal/anx;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ato;->Y:I

    return-void
.end method

.method public static b()[Lcom/google/android/gms/internal/ato;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ato;->a:[Lcom/google/android/gms/internal/ato;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/anz;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ato;->a:[Lcom/google/android/gms/internal/ato;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ato;

    sput-object v1, Lcom/google/android/gms/internal/ato;->a:[Lcom/google/android/gms/internal/ato;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ato;->a:[Lcom/google/android/gms/internal/ato;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/anv;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->b:Lcom/google/android/gms/internal/att;

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->b:Lcom/google/android/gms/internal/att;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->c:Lcom/google/android/gms/internal/atv;

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->c:Lcom/google/android/gms/internal/atv;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->d:Lcom/google/android/gms/internal/atw;

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->d:Lcom/google/android/gms/internal/atw;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->e:Lcom/google/android/gms/internal/atx;

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->e:Lcom/google/android/gms/internal/atx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->f:Lcom/google/android/gms/internal/atp;

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->f:Lcom/google/android/gms/internal/atp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->g:Lcom/google/android/gms/internal/atu;

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->g:Lcom/google/android/gms/internal/atu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->h:Lcom/google/android/gms/internal/atr;

    if-eqz v1, :cond_6

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->h:Lcom/google/android/gms/internal/atr;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->k:Lcom/google/android/gms/internal/atm;

    if-eqz v1, :cond_9

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->k:Lcom/google/android/gms/internal/atm;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(ILcom/google/android/gms/internal/aob;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->o:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/gms/internal/ato;->p:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ant;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ans;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->p:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->o:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->n:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->m:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->l:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->k:Lcom/google/android/gms/internal/atm;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/atm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/atm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->k:Lcom/google/android/gms/internal/atm;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->k:Lcom/google/android/gms/internal/atm;

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->j:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ans;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->i:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->h:Lcom/google/android/gms/internal/atr;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/atr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/atr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->h:Lcom/google/android/gms/internal/atr;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->h:Lcom/google/android/gms/internal/atr;

    goto :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->g:Lcom/google/android/gms/internal/atu;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/atu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/atu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->g:Lcom/google/android/gms/internal/atu;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->g:Lcom/google/android/gms/internal/atu;

    goto :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->f:Lcom/google/android/gms/internal/atp;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/atp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/atp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->f:Lcom/google/android/gms/internal/atp;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->f:Lcom/google/android/gms/internal/atp;

    goto :goto_1

    :sswitch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->e:Lcom/google/android/gms/internal/atx;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/atx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/atx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->e:Lcom/google/android/gms/internal/atx;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->e:Lcom/google/android/gms/internal/atx;

    goto :goto_1

    :sswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->d:Lcom/google/android/gms/internal/atw;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/atw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/atw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->d:Lcom/google/android/gms/internal/atw;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->d:Lcom/google/android/gms/internal/atw;

    goto :goto_1

    :sswitch_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->c:Lcom/google/android/gms/internal/atv;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/atv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/atv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->c:Lcom/google/android/gms/internal/atv;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->c:Lcom/google/android/gms/internal/atv;

    goto :goto_1

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->b:Lcom/google/android/gms/internal/att;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/att;

    invoke-direct {v0}, Lcom/google/android/gms/internal/att;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ato;->b:Lcom/google/android/gms/internal/att;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->b:Lcom/google/android/gms/internal/att;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ans;->a(Lcom/google/android/gms/internal/aob;)V

    goto/16 :goto_0

    :sswitch_f
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x2a -> :sswitch_e
        0x32 -> :sswitch_d
        0x3a -> :sswitch_c
        0x42 -> :sswitch_b
        0x4a -> :sswitch_a
        0x52 -> :sswitch_9
        0x5a -> :sswitch_8
        0x60 -> :sswitch_7
        0x68 -> :sswitch_6
        0x72 -> :sswitch_5
        0x78 -> :sswitch_4
        0x80 -> :sswitch_3
        0x88 -> :sswitch_2
        0x90 -> :sswitch_1
        0x98 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ant;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->b:Lcom/google/android/gms/internal/att;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->b:Lcom/google/android/gms/internal/att;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->c:Lcom/google/android/gms/internal/atv;

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->c:Lcom/google/android/gms/internal/atv;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->d:Lcom/google/android/gms/internal/atw;

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->d:Lcom/google/android/gms/internal/atw;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->e:Lcom/google/android/gms/internal/atx;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->e:Lcom/google/android/gms/internal/atx;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->f:Lcom/google/android/gms/internal/atp;

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->f:Lcom/google/android/gms/internal/atp;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->g:Lcom/google/android/gms/internal/atu;

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->g:Lcom/google/android/gms/internal/atu;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->h:Lcom/google/android/gms/internal/atr;

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->h:Lcom/google/android/gms/internal/atr;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->k:Lcom/google/android/gms/internal/atm;

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->k:Lcom/google/android/gms/internal/atm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(ILcom/google/android/gms/internal/aob;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ato;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/android/gms/internal/ato;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ant;->a(II)V

    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/anv;->a(Lcom/google/android/gms/internal/ant;)V

    return-void
.end method
