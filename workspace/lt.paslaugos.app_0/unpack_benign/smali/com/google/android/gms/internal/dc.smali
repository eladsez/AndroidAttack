.class public final Lcom/google/android/gms/internal/dc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private A:Lcom/google/android/gms/internal/bp;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Lcom/google/android/gms/internal/fu;

.field private H:Z

.field private I:Z

.field private final J:Lcom/google/android/gms/internal/bj;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Z

.field private final k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Lcom/google/android/gms/internal/fk;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bj;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/dc;->i:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->j:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/dc;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/dc;->m:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/dc;->n:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->o:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->p:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->r:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->t:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->u:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->v:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->z:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->B:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/dc;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/dc;->J:Lcom/google/android/gms/internal/bj;

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p0

    float-to-long p0, v0

    return-wide p0

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not parse float from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " header: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public final a(JZ)Lcom/google/android/gms/internal/bn;
    .locals 68

    move-object/from16 v0, p0

    new-instance v45, Lcom/google/android/gms/internal/bn;

    iget-object v2, v0, Lcom/google/android/gms/internal/dc;->J:Lcom/google/android/gms/internal/bj;

    iget-object v3, v0, Lcom/google/android/gms/internal/dc;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/dc;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/dc;->d:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/dc;->h:Ljava/util/List;

    iget-wide v7, v0, Lcom/google/android/gms/internal/dc;->i:J

    iget-boolean v9, v0, Lcom/google/android/gms/internal/dc;->j:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/dc;->l:Ljava/util/List;

    iget-wide v13, v0, Lcom/google/android/gms/internal/dc;->m:J

    iget v15, v0, Lcom/google/android/gms/internal/dc;->n:I

    iget-object v1, v0, Lcom/google/android/gms/internal/dc;->a:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->f:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/dc;->g:Ljava/lang/String;

    move-object/from16 v46, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->o:Z

    move/from16 v47, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->p:Z

    move/from16 v48, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->q:Z

    move/from16 v49, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->r:Z

    move/from16 v50, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->t:Ljava/lang/String;

    move-object/from16 v51, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->u:Z

    move/from16 v52, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->v:Z

    move/from16 v53, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->w:Lcom/google/android/gms/internal/fk;

    move-object/from16 v54, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->x:Ljava/util/List;

    move-object/from16 v55, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->y:Ljava/util/List;

    move-object/from16 v56, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->z:Z

    move/from16 v57, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->A:Lcom/google/android/gms/internal/bp;

    move-object/from16 v58, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->B:Z

    move/from16 v59, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->C:Ljava/lang/String;

    move-object/from16 v60, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->D:Ljava/util/List;

    move-object/from16 v61, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->E:Z

    move/from16 v62, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->F:Ljava/lang/String;

    move-object/from16 v63, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->G:Lcom/google/android/gms/internal/fu;

    move-object/from16 v64, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/dc;->e:Ljava/lang/String;

    move-object/from16 v65, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->s:Z

    move/from16 v66, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->H:Z

    move/from16 v67, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/dc;->I:Z

    if-eqz p3, :cond_0

    const/16 v16, 0x2

    const/16 v44, 0x2

    goto :goto_0

    :cond_0
    const/16 v16, 0x1

    const/16 v44, 0x1

    :goto_0
    const-wide/16 v16, -0x1

    move/from16 v43, v10

    move-object/from16 v20, v11

    move-object/from16 v19, v46

    move/from16 v21, v47

    move/from16 v22, v48

    move/from16 v23, v49

    move/from16 v24, v50

    move-object/from16 v26, v51

    move/from16 v27, v52

    move/from16 v28, v53

    move-object/from16 v29, v54

    move-object/from16 v30, v55

    move-object/from16 v31, v56

    move/from16 v32, v57

    move-object/from16 v33, v58

    move/from16 v34, v59

    move-object/from16 v35, v60

    move-object/from16 v36, v61

    move/from16 v37, v62

    move-object/from16 v38, v63

    move-object/from16 v39, v64

    move-object/from16 v40, v65

    move/from16 v41, v66

    move/from16 v42, v67

    move-wide/from16 v10, v16

    const/16 v25, 0x0

    move-object/from16 v16, v1

    move-object/from16 v1, v45

    move-wide/from16 v17, p1

    invoke-direct/range {v1 .. v44}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bj;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/fk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/bp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/fu;Ljava/lang/String;ZZZI)V

    return-object v45
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/google/android/gms/internal/dc;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Ad-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->a:Ljava/lang/String;

    const-string v0, "X-Afma-Ad-Slot-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->F:Ljava/lang/String;

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->d:Ljava/util/List;

    :cond_0
    const-string v0, "X-Afma-Debug-Signals"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->e:Ljava/lang/String;

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->f:Ljava/lang/String;

    :cond_1
    const-string v0, "X-Afma-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->h:Ljava/util/List;

    :cond_2
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iput-wide v2, p0, Lcom/google/android/gms/internal/dc;->i:J

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dc;->j:Z

    const-string v2, "X-Afma-Mediation"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/dc;->d(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->j:Z

    const-string v0, "X-Afma-Manual-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->l:Ljava/util/List;

    :cond_4
    const-string v0, "X-Afma-Refresh-Rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    iput-wide v2, p0, Lcom/google/android/gms/internal/dc;->m:J

    :cond_5
    const-string v0, "X-Afma-Orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->b()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/dc;->n:I

    goto :goto_1

    :cond_6
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->a()I

    move-result v0

    goto :goto_0

    :cond_7
    :goto_1
    const-string v0, "X-Afma-ActiveView"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->g:Ljava/lang/String;

    const-string v0, "X-Afma-Use-HTTPS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->q:Z

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dc;->o:Z

    const-string v2, "X-Afma-Custom-Rendering-Allowed"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/dc;->d(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->o:Z

    const-string v0, "X-Afma-Ad-Format"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "native"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->p:Z

    const-string v0, "X-Afma-Content-Url-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->r:Z

    :cond_9
    const-string v0, "X-Afma-Content-Vertical-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->s:Z

    :cond_a
    const-string v0, "X-Afma-Gws-Query-Id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->t:Ljava/lang/String;

    :cond_b
    const-string v0, "X-Afma-Fluid"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->u:Z

    :cond_c
    const-string v0, "X-Afma-Ad-Format"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "native_express"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->v:Z

    const-string v0, "X-Afma-Rewards"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/fk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->w:Lcom/google/android/gms/internal/fk;

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->x:Ljava/util/List;

    if-nez v0, :cond_d

    const-string v0, "X-Afma-Reward-Video-Start-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->x:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->y:Ljava/util/List;

    if-nez v0, :cond_e

    const-string v0, "X-Afma-Reward-Video-Complete-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->y:Ljava/util/List;

    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dc;->z:Z

    const-string v3, "X-Afma-Use-Displayed-Impression"

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/dc;->d(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->z:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dc;->B:Z

    const-string v3, "X-Afma-Auto-Collect-Location"

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/dc;->d(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->B:Z

    const-string v0, "Set-Cookie"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->C:Ljava/lang/String;

    const-string v0, "X-Afma-Auto-Protection-Configuration"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_2

    :cond_f
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/bp;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->A:Lcom/google/android/gms/internal/bp;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Error parsing configuration JSON"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/bp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->A:Lcom/google/android/gms/internal/bp;

    goto :goto_3

    :cond_10
    :goto_2
    const-string v0, "https://pagead2.googlesyndication.com/pagead/gen_204"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "gmob-apps-blocked-navigation"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v3, p0, Lcom/google/android/gms/internal/dc;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "debugDialog"

    iget-object v4, p0, Lcom/google/android/gms/internal/dc;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/bp;

    sget-object v4, Lcom/google/android/gms/internal/axt;->e:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&navigationURL={NAVIGATION_URL}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/bp;-><init>(ZLjava/util/List;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/dc;->A:Lcom/google/android/gms/internal/bp;

    :goto_3
    const-string v0, "X-Afma-Remote-Ping-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->D:Ljava/util/List;

    :cond_12
    const-string v0, "X-Afma-Safe-Browsing"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/fu;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/fu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->G:Lcom/google/android/gms/internal/fu;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "Error parsing safe browsing header"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dc;->E:Z

    const-string v1, "X-Afma-Render-In-Browser"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/dc;->d(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->E:Z

    const-string v0, "X-Afma-Pool"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "never_pool"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->H:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "Error parsing interstitial pool header"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_5
    const-string v0, "X-Afma-Custom-Close-Blocked"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dc;->d(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/dc;->I:Z

    return-void
.end method
