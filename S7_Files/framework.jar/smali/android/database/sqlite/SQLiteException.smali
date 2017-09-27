.class public Landroid/database/sqlite/SQLiteException;
.super Landroid/database/SQLException;
.source "SQLiteException.java"


# static fields
.field private static final errString:[[Ljava/lang/String;

.field private static final errString2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/16 v0, 0x1d

    new-array v0, v0, [[Ljava/lang/String;

    .line 27
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_OK"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 28
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_ERROR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "SQL(query) error or missing database."

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 29
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_INTERNAL"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 30
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_PERM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Access permission denied."

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 31
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_ABORT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Callback routine requested an abort."

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_BUSY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The database file is locked."

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 33
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_LOCKED"

    aput-object v2, v1, v3

    const-string/jumbo v2, "A table in the database is locked."

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 34
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOMEM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "There is no enough heap memory for application."

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 35
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_READONLY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Attempt to write a readonly database. (database may be deleted by other process)"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 36
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_INTERRUPT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Operation terminated by interrupt function."

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 37
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "disk I/O error occurred."

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 38
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CORRUPT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The database disk image is malformed."

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 39
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOTFOUND"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Unknown operation code."

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 40
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_FULL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "No available space in disk."

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 41
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Unable to open the database file."

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 42
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_PROTOCOL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Database lock protocol error."

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 43
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_EMPTY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Database is empty."

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 44
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_SCHEMA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The database schema changed."

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 45
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_TOOBIG"

    aput-object v2, v1, v3

    const-string/jumbo v2, "String or BLOB exceeds size limits."

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 46
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CONSTRAINT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Abort due to constraint violation."

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 47
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_MISMATCH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Data type mismatch."

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 48
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_MISUSE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Library used incorrectly."

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 49
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOLFS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Uses OS features not supported on host."

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 50
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_AUTH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Authorization denied."

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 51
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_FORMAT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Auxiliary database format error."

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 52
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_RANGE"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 53
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOTADB"

    aput-object v2, v1, v3

    const-string/jumbo v2, "File opened that is not a database file or encrypted."

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 54
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOTICE"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_WARNING"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 26
    sput-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "SQLITE_ROW"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SQLITE_DONE"

    aput-object v1, v0, v4

    sput-object v0, Landroid/database/sqlite/SQLiteException;->errString2:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteException;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteException;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method private static getCausedBy(II)Ljava/lang/String;
    .locals 2
    .param p0, "majorCode"    # I
    .param p1, "minorCode"    # I

    .prologue
    const/4 v1, 0x1

    .line 90
    sparse-switch p0, :sswitch_data_0

    .line 104
    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    return-object v0

    .line 92
    :sswitch_0
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 93
    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    .line 96
    :sswitch_1
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 97
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->makeCausedBy(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :sswitch_2
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    .line 101
    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 102
    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method private static getErrString(II)Ljava/lang/String;
    .locals 2
    .param p0, "majorCode"    # I
    .param p1, "minorCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    sparse-switch p0, :sswitch_data_0

    .line 126
    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    return-object v0

    .line 110
    :sswitch_0
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 111
    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    .line 114
    :sswitch_1
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 115
    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    .line 118
    :sswitch_2
    if-lez p1, :cond_0

    .line 119
    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 120
    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    .line 123
    :sswitch_3
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteConstraintException;->errString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 124
    sget-object v0, Landroid/database/sqlite/SQLiteConstraintException;->errString:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0xe -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method private static makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Landroid/database/sqlite/SQLiteExceptionLog;

    const/4 v3, -0x1

    invoke-direct {v0, v3, p0}, Landroid/database/sqlite/SQLiteExceptionLog;-><init>(ILjava/lang/String;)V

    .line 71
    .local v0, "logAdder":Landroid/database/sqlite/SQLiteExceptionLog;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMajorCode()I

    move-result v1

    .line 72
    .local v1, "majorCode":I
    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    const/16 v3, 0x65

    if-gt v1, v3, :cond_0

    .line 73
    sget-object v3, Landroid/database/sqlite/SQLiteException;->errString2:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x64

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->setErrString(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 76
    :cond_0
    if-ltz v1, :cond_2

    sget-object v3, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMinorCode()I

    move-result v2

    .line 80
    .local v2, "minorCode":I
    const/16 v3, 0xe

    if-ne v1, v3, :cond_1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 81
    const-string/jumbo v3, ""

    return-object v3

    .line 83
    :cond_1
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteException;->getErrString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->setErrString(Ljava/lang/String;)V

    .line 84
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteException;->getCausedBy(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 86
    .end local v2    # "minorCode":I
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method
