.class public Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "TypefaceWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Typeface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;->DEFAULT:Landroid/graphics/Typeface;

    .line 16
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v0, Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 17
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sput-object v0, Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 18
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    sput-object v0, Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;->SERIF:Landroid/graphics/Typeface;

    .line 19
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sput-object v0, Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;->MONOSPACE:Landroid/graphics/Typeface;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static CreateNew(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "Typeface1"    # Landroid/graphics/Typeface;
    .param p1, "Style"    # I

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static LoadFromAssets(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "FileName"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
