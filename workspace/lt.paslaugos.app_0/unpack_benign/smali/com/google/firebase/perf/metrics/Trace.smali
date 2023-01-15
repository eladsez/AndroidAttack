.class public Lcom/google/firebase/perf/metrics/Trace;
.super Lcom/google/android/gms/internal/aio;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/firebase/perf/metrics/Trace;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ajb;

.field private final g:Lcom/google/android/gms/internal/aiq;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/aje;

.field private j:Lcom/google/android/gms/internal/aje;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->a:Ljava/util/Map;

    new-instance v0, Lcom/google/firebase/perf/metrics/c;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/c;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/firebase/perf/metrics/d;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/d;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->k:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ain;->a()Lcom/google/android/gms/internal/ain;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/aio;-><init>(Lcom/google/android/gms/internal/ain;)V

    const-class v1, Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/metrics/Trace;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->b:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->d:Ljava/util/List;

    const-class v2, Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->e:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->e:Ljava/util/Map;

    const-class v2, Lcom/google/firebase/perf/metrics/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    const-class v1, Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aje;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->i:Lcom/google/android/gms/internal/aje;

    const-class v1, Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aje;

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->j:Lcom/google/android/gms/internal/aje;

    if-eqz p2, :cond_1

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->g:Lcom/google/android/gms/internal/aiq;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->f:Lcom/google/android/gms/internal/ajb;

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->g:Lcom/google/android/gms/internal/aiq;

    new-instance p1, Lcom/google/android/gms/internal/ajb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ajb;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->f:Lcom/google/android/gms/internal/ajb;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ZLcom/google/firebase/perf/metrics/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method private final i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->j:Lcom/google/android/gms/internal/aje;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->i:Lcom/google/android/gms/internal/aje;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->e:Ljava/util/Map;

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/aje;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->i:Lcom/google/android/gms/internal/aje;

    return-object v0
.end method

.method final d()Lcom/google/android/gms/internal/aje;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->j:Lcom/google/android/gms/internal/aje;

    return-object v0
.end method

.method public describeContents()I
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->j()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "FirebasePerformance"

    const-string v3, "Trace \'%s\' is started but not stopped when it is destructed!"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/aio;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->h:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->d:Ljava/util/List;

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/perf/metrics/Trace;->incrementCounter(Ljava/lang/String;J)V

    return-void
.end method

.method public incrementCounter(Ljava/lang/String;J)V
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string v2, "Counter name must not be null"

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Counter name must not exceed %d characters"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ajc;->values()[Lcom/google/android/gms/internal/ajc;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ajc;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "Counter name must not start with \'_\'"

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    if-eqz v2, :cond_4

    const-string p2, "FirebasePerformance"

    const-string p3, "Cannot increment counter %s. Counter name is invalid.(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object v2, v3, v1

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->j()Z

    move-result v2

    if-nez v2, :cond_5

    const-string p2, "FirebasePerformance"

    const-string p3, "Cannot increment counter \'%s\' for trace \'%s\' because it\'s not started"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p2, "FirebasePerformance"

    const-string p3, "Cannot increment counter \'%s\' for trace \'%s\' because it\'s been stopped"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/a;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/firebase/perf/metrics/a;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/metrics/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/a;->a(J)V

    return-void
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->i()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->h:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->h:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/4 v3, 0x5

    if-ge p2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Exceeds max limit of number of attributes - %d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    new-instance p2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p2, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/aix;->a(Ljava/util/AbstractMap$SimpleEntry;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Trace %s has been stopped"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v7

    :goto_1
    const-string v3, "FirebasePerformance"

    const-string v4, "Can not set attribute %s with value %s (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object p1, v5, v1

    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->h:Ljava/util/Map;

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "FirebasePerformance"

    const-string v0, "Can\'t remove a attribute from a Trace that\'s stopped."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "Trace name must not be null"

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Trace name must not exceed %d characters"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ajd;->values()[Lcom/google/android/gms/internal/ajd;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Trace name must not start with \'_\'"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    const-string v3, "FirebasePerformance"

    const-string v4, "Cannot start trace %s. Trace name is invalid.(%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->i:Lcom/google/android/gms/internal/aje;

    if-eqz v0, :cond_5

    const-string v0, "FirebasePerformance"

    const-string v3, "Trace \'%s\' has already started, should not start again!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->i:Lcom/google/android/gms/internal/aje;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aio;->e()V

    return-void
.end method

.method public stop()V
    .locals 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->j()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "FirebasePerformance"

    const-string v3, "Trace \'%s\' has not been started so unable to stop!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FirebasePerformance"

    const-string v3, "Trace \'%s\' has already stopped, should not stop again!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aio;->f()V

    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->j:Lcom/google/android/gms/internal/aje;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->b:Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->j:Lcom/google/android/gms/internal/aje;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/metrics/Trace;

    iget-object v2, v1, Lcom/google/firebase/perf/metrics/Trace;->j:Lcom/google/android/gms/internal/aje;

    if-nez v2, :cond_2

    iput-object v0, v1, Lcom/google/firebase/perf/metrics/Trace;->j:Lcom/google/android/gms/internal/aje;

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->g:Lcom/google/android/gms/internal/aiq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->g:Lcom/google/android/gms/internal/aiq;

    new-instance v1, Lcom/google/firebase/perf/metrics/e;

    invoke-direct {v1, p0}, Lcom/google/firebase/perf/metrics/e;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/e;->a()Lcom/google/android/gms/internal/ajq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aio;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aiq;->a(Lcom/google/android/gms/internal/ajq;I)V

    return-void

    :cond_3
    const-string v0, "FirebasePerformance"

    const-string v1, "Trace name is empty, no log is sent to server"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->b:Lcom/google/firebase/perf/metrics/Trace;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->e:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->i:Lcom/google/android/gms/internal/aje;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->j:Lcom/google/android/gms/internal/aje;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
