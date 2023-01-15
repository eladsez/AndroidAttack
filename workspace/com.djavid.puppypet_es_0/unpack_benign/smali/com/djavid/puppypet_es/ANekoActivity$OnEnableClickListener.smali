.class Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;
.super Ljava/lang/Object;
.source "ANekoActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/ANekoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnableClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/ANekoActivity;


# direct methods
.method private constructor <init>(Lcom/djavid/puppypet_es/ANekoActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;->this$0:Lcom/djavid/puppypet_es/ANekoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/djavid/puppypet_es/ANekoActivity;Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;-><init>(Lcom/djavid/puppypet_es/ANekoActivity;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/djavid/puppypet_es/ANekoActivity$OnEnableClickListener;->this$0:Lcom/djavid/puppypet_es/ANekoActivity;

    invoke-static {v0}, Lcom/djavid/puppypet_es/ANekoActivity;->access$0(Lcom/djavid/puppypet_es/ANekoActivity;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method
