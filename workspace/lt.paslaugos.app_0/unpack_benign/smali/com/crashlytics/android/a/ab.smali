.class final Lcom/crashlytics/android/a/ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/a/ab$a;,
        Lcom/crashlytics/android/a/ab$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/crashlytics/android/a/ac;

.field public final b:J

.field public final c:Lcom/crashlytics/android/a/ab$b;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/a/ac;JLcom/crashlytics/android/a/ab$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/a/ac;",
            "J",
            "Lcom/crashlytics/android/a/ab$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/a/ab;->a:Lcom/crashlytics/android/a/ac;

    iput-wide p2, p0, Lcom/crashlytics/android/a/ab;->b:J

    iput-object p4, p0, Lcom/crashlytics/android/a/ab;->c:Lcom/crashlytics/android/a/ab$b;

    iput-object p5, p0, Lcom/crashlytics/android/a/ab;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/crashlytics/android/a/ab;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/crashlytics/android/a/ab;->f:Ljava/util/Map;

    iput-object p8, p0, Lcom/crashlytics/android/a/ab;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/crashlytics/android/a/ab;->h:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/a/ac;JLcom/crashlytics/android/a/ab$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/crashlytics/android/a/ab$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/crashlytics/android/a/ab;-><init>(Lcom/crashlytics/android/a/ac;JLcom/crashlytics/android/a/ab$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(J)Lcom/crashlytics/android/a/ab$a;
    .locals 2

    new-instance v0, Lcom/crashlytics/android/a/ab$a;

    sget-object v1, Lcom/crashlytics/android/a/ab$b;->f:Lcom/crashlytics/android/a/ab$b;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/a/ab$a;-><init>(Lcom/crashlytics/android/a/ab$b;)V

    const-string v1, "installedAt"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/a/ab$a;->a(Ljava/util/Map;)Lcom/crashlytics/android/a/ab$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/crashlytics/android/a/ab$b;Landroid/app/Activity;)Lcom/crashlytics/android/a/ab$a;
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/a/ab$a;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/ab$a;-><init>(Lcom/crashlytics/android/a/ab$b;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/a/ab$a;->a(Ljava/util/Map;)Lcom/crashlytics/android/a/ab$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/crashlytics/android/a/ab$a;
    .locals 2

    const-string v0, "sessionId"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/crashlytics/android/a/ab$a;

    sget-object v1, Lcom/crashlytics/android/a/ab$b;->e:Lcom/crashlytics/android/a/ab$b;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/a/ab$a;-><init>(Lcom/crashlytics/android/a/ab$b;)V

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/a/ab$a;->a(Ljava/util/Map;)Lcom/crashlytics/android/a/ab$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/a/ab$a;
    .locals 1

    invoke-static {p0}, Lcom/crashlytics/android/a/ab;->a(Ljava/lang/String;)Lcom/crashlytics/android/a/ab$a;

    move-result-object p0

    const-string v0, "exceptionName"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/a/ab$a;->b(Ljava/util/Map;)Lcom/crashlytics/android/a/ab$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/a/ab;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/crashlytics/android/a/ab;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/a/ab;->c:Lcom/crashlytics/android/a/ab$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/a/ab;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/a/ab;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/a/ab;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", predefinedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/a/ab;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", predefinedAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/a/ab;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crashlytics/android/a/ab;->a:Lcom/crashlytics/android/a/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/a/ab;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/a/ab;->i:Ljava/lang/String;

    return-object v0
.end method
