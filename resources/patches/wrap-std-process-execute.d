
/+ BEGIN wrap-std-process-execute.d +/
auto execute(scope const(char[])[] args,
             const string[string] env = null,
             std.process.Config config = std.process.Config.none,
             size_t maxOutput = size_t.max,
             scope const(char)[] workDir = null)
    @safe
{
    config |= (std.process.Config.inheritFDs | std.process.Config.stderrPassThrough);
    return std.process.execute(args, env, config, maxOutput, workDir);
}
auto execute(scope const(char)[] program,
             const string[string] env = null,
             std.process.Config config = std.process.Config.none,
             size_t maxOutput = size_t.max,
             scope const(char)[] workDir = null)
    @safe
{
    config |= (std.process.Config.inheritFDs | std.process.Config.stderrPassThrough);
    return std.process.execute(program, env, config, maxOutput, workDir);
}
/+ END wrap-std-process-execute.d +/
