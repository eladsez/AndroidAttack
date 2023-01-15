.class public Lanywheresoftware/b4a/keywords/Regex;
.super Ljava/lang/Object;
.source "Regex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;,
        Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;
    }
.end annotation


# static fields
.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final MULTILINE:I = 0x8

.field private static cachedPatterns:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "Pattern"    # Ljava/lang/String;
    .param p1, "Text"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lanywheresoftware/b4a/keywords/Regex;->IsMatch2(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static IsMatch2(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p0, "Pattern"    # Ljava/lang/String;
    .param p1, "Options"    # I
    .param p2, "Text"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Regex;->getPattern(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static Matcher(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    .locals 1
    .param p0, "Pattern"    # Ljava/lang/String;
    .param p1, "Text"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lanywheresoftware/b4a/keywords/Regex;->Matcher2(Ljava/lang/String;ILjava/lang/String;)Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static Matcher2(Ljava/lang/String;ILjava/lang/String;)Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    .locals 2
    .param p0, "Pattern"    # Ljava/lang/String;
    .param p1, "Options"    # I
    .param p2, "Text"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;-><init>()V

    .line 97
    .local v0, "mw":Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Regex;->getPattern(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/keywords/Regex$MatcherWrapper;->setObject(Ljava/lang/Object;)V

    .line 98
    return-object v0
.end method

.method public static Split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "Pattern"    # Ljava/lang/String;
    .param p1, "Text"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lanywheresoftware/b4a/keywords/Regex;->Split2(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Split2(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "Pattern"    # Ljava/lang/String;
    .param p1, "Options"    # I
    .param p2, "Text"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Regex;->getPattern(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPattern(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 6
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "options"    # I

    .prologue
    .line 29
    sget-object v4, Lanywheresoftware/b4a/keywords/Regex;->cachedPatterns:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_0

    .line 30
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v4, Lanywheresoftware/b4a/keywords/Regex;->cachedPatterns:Ljava/util/LinkedHashMap;

    .line 31
    :cond_0
    new-instance v3, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;

    invoke-direct {v3, p0, p1}, Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;-><init>(Ljava/lang/String;I)V

    .line 32
    .local v3, "po":Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;
    sget-object v4, Lanywheresoftware/b4a/keywords/Regex;->cachedPatterns:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 33
    .local v2, "p":Ljava/util/regex/Pattern;
    if-nez v2, :cond_1

    .line 34
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 35
    sget-object v4, Lanywheresoftware/b4a/keywords/Regex;->cachedPatterns:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v4, Lanywheresoftware/b4a/keywords/Regex;->cachedPatterns:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_1

    .line 37
    sget-object v4, Lanywheresoftware/b4a/keywords/Regex;->cachedPatterns:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;Ljava/util/regex/Pattern;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x19

    if-lt v0, v4, :cond_2

    .line 44
    .end local v0    # "i":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;Ljava/util/regex/Pattern;>;>;"
    :cond_1
    return-object v2

    .line 39
    .restart local v0    # "i":I
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lanywheresoftware/b4a/keywords/Regex$PatternAndOptions;Ljava/util/regex/Pattern;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
