.class Lanywheresoftware/b4a/objects/collections/List$2;
.super Ljava/lang/Object;
.source "List.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/collections/List;->sortList(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/collections/List;

.field private final synthetic val$Ascending:Z

.field private final synthetic val$caseInsensitive:Z

.field private final synthetic val$f:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/collections/List;ZLjava/lang/reflect/Field;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/collections/List$2;->this$0:Lanywheresoftware/b4a/objects/collections/List;

    iput-boolean p2, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$caseInsensitive:Z

    iput-object p3, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$f:Ljava/lang/reflect/Field;

    iput-boolean p4, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$Ascending:Z

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 202
    :try_start_0
    iget-boolean v2, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$caseInsensitive:Z

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$f:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$f:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 206
    .local v0, "cmp":I
    :goto_0
    iget-boolean v2, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$Ascending:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    mul-int/2addr v2, v0

    return v2

    .line 205
    .end local v0    # "cmp":I
    :cond_0
    iget-object v2, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$f:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/collections/List$2;->val$f:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "cmp":I
    goto :goto_0

    .line 206
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 207
    .end local v0    # "cmp":I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
