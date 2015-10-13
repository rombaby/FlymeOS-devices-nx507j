.class public Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;
.super Ljava/lang/Object;
.source "PhoneWindowManagerWapper.java"


# instance fields
.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p1, "mPhoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 9
    return-void
.end method


# virtual methods
.method public dismissKeyguardLw()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissKeyguardLw()V

    .line 17
    return-void
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public updateRotation(Z)V
    .locals 2
    .param p1, "oriention"    # Z

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 26
    return-void
.end method
