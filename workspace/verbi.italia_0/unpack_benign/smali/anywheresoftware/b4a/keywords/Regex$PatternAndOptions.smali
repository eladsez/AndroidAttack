.class Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;
.super Ljava/lang/Object;
.source "Regex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/keywords/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternAndOptions"
.end annotation


# instance fields
.field public final options:I

.field public final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "options"    # I

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->pattern:Ljava/lang/String;

    .line 173
    iput p2, p0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->options:I

    .line 174
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 200
    :goto_0
    return v2

    .line 188
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 189
    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 191
    goto :goto_0

    .line 192
    :cond_2
    move-object v0, p1

    check-cast v0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;

    move-object v1, v0

    .line 193
    .local v1, "other":Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;
    iget v2, p0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->options:I

    iget v3, v1, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->options:I

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 194
    goto :goto_0

    .line 195
    :cond_3
    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->pattern:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 196
    iget-object v2, v1, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->pattern:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v4

    .line 197
    goto :goto_0

    .line 198
    :cond_4
    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->pattern:Ljava/lang/String;

    iget-object v3, v1, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 199
    goto :goto_0

    :cond_5
    move v2, v5

    .line 200
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 177
    const/16 v0, 0x1f

    .line 178
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 179
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v2, p0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->options:I

    add-int/lit8 v1, v2, 0x1f

    .line 180
    mul-int/lit8 v2, v1, 0x1f

    .line 181
    iget-object v3, p0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->pattern:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 180
    :goto_0
    add-int v1, v2, v3

    .line 182
    return v1

    .line 181
    :cond_0
    iget-object v3, p0, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0
.end method
