.class public Lorg/apache/commons/io/comparator/CompositeFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "CompositeFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NO_COMPARATORS:[Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Comparator",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final delegates:[Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Comparator;

    sput-object v0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->NO_COMPARATORS:[Ljava/util/Comparator;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "delegates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Comparator<Ljava/io/File;>;>;"
    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    .line 72
    if-nez p1, :cond_0

    .line 73
    sget-object v2, Lorg/apache/commons/io/comparator/CompositeFileComparator;->NO_COMPARATORS:[Ljava/util/Comparator;

    iput-object v2, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Comparator<Ljava/io/File;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Comparator;

    iput-object v2, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 77
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public varargs constructor <init>([Ljava/util/Comparator;)V
    .locals 3
    .param p1, "delegates"    # [Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    sget-object v0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->NO_COMPARATORS:[Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    .line 61
    iget-object v0, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "result":I
    iget-object v2, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_1

    .line 99
    :cond_0
    return v1

    .line 93
    :cond_1
    aget-object v0, v2, v4

    .line 94
    .local v0, "delegate":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 95
    if-nez v1, :cond_0

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/CompositeFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 118
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 113
    :cond_0
    if-lez v1, :cond_1

    .line 114
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
