-- This file was obfuscated with MoonSec v1 By Federal#9999
return (function()
    local a
    do
        local b = bit32
        local c
        local d
        local e
        local f = 50
        local g = {
            [22] = 18,
            [31] = 8,
            [33] = 28,
            [0] = 3,
            [1] = 13,
            [2] = 23,
            [26] = 33,
            [12] = 1,
            [13] = 6,
            [14] = 10,
            [15] = 16,
            [16] = 20,
            [17] = 26,
            [18] = 30,
            [19] = 36,
            [3] = 0,
            [4] = 2,
            [5] = 4,
            [6] = 7,
            [7] = 9,
            [8] = 12,
            [9] = 14,
            [10] = 17,
            [20] = 19,
            [21] = 22,
            [23] = 24,
            [24] = 27,
            [25] = 29,
            [27] = 32,
            [32] = 34,
            [34] = 37,
            [11] = 5,
            [28] = 11,
            [29] = 15,
            [30] = 21,
            [35] = 25,
            [36] = 31,
            [37] = 35
        }
        local h = {
            [0] = "ABC",
            "ABx",
            "ABC",
            "ABC",
            "ABC",
            "ABx",
            "ABC",
            "ABx",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "AsBx",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "ABC",
            "AsBx",
            "AsBx",
            "ABC",
            "ABC",
            "ABC",
            "ABx",
            "ABC"
        }
        local i = {
            [0] = {b = "OpArgR", c = "OpArgN"},
            {b = "OpArgK", c = "OpArgN"},
            {b = "OpArgU", c = "OpArgU"},
            {b = "OpArgR", c = "OpArgN"},
            {b = "OpArgU", c = "OpArgN"},
            {b = "OpArgK", c = "OpArgN"},
            {b = "OpArgR", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgN"},
            {b = "OpArgU", c = "OpArgN"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgU", c = "OpArgU"},
            {b = "OpArgR", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgR", c = "OpArgN"},
            {b = "OpArgR", c = "OpArgN"},
            {b = "OpArgR", c = "OpArgN"},
            {b = "OpArgR", c = "OpArgR"},
            {b = "OpArgR", c = "OpArgN"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgK", c = "OpArgK"},
            {b = "OpArgR", c = "OpArgU"},
            {b = "OpArgR", c = "OpArgU"},
            {b = "OpArgU", c = "OpArgU"},
            {b = "OpArgU", c = "OpArgU"},
            {b = "OpArgU", c = "OpArgN"},
            {b = "OpArgR", c = "OpArgN"},
            {b = "OpArgR", c = "OpArgN"},
            {b = "OpArgN", c = "OpArgU"},
            {b = "OpArgU", c = "OpArgU"},
            {b = "OpArgN", c = "OpArgN"},
            {b = "OpArgU", c = "OpArgN"},
            {b = "OpArgU", c = "OpArgN"}
        }
        local function j(k, l, m, n)
            local o = 0
            for p = l, m, n do
                local q = 256 ^ math.abs(p - l)
                o = o + q * string.byte(k, p, p)
            end
            return o
        end
        local function r(s, t, u, v)
            local w = (-1) ^ b.rshift(v, 7)
            local x = b.rshift(u, 7) + b.lshift(b.band(v, 0x7F), 1)
            local y = s + b.lshift(t, 8) + b.lshift(b.band(u, 0x7F), 16)
            local z = 1
            if x == 0 then
                if y == 0 then
                    return w * 0
                else
                    z = 0
                    x = 1
                end
            elseif x == 0x7F then
                if y == 0 then
                    return w * 1 / 0
                else
                    return w * 0 / 0
                end
            end
            return w * 2 ^ (x - 127) * (1 + z / 2 ^ 23)
        end
        local function A(s, t, u, v, B, C, D, E)
            local w = (-1) ^ b.rshift(E, 7)
            local x = b.lshift(b.band(E, 0x7F), 4) + b.rshift(D, 4)
            local y = b.band(D, 0x0F) * 2 ^ 48
            local z = 1
            y = y + C * 2 ^ 40 + B * 2 ^ 32 + v * 2 ^ 24 + u * 2 ^ 16 + t * 2 ^ 8 + s
            if x == 0 then
                if y == 0 then
                    return w * 0
                else
                    z = 0
                    x = 1
                end
            elseif x == 0x7FF then
                if y == 0 then
                    return w * 1 / 0
                else
                    return w * 0 / 0
                end
            end
            return w * 2 ^ (x - 1023) * (z + y / 2 ^ 52)
        end
        local function F(k, l, m)
            return j(k, l, m - 1, 1)
        end
        local function G(k, l, m)
            return j(k, m - 1, l, -1)
        end
        local function H(k, l)
            return r(string.byte(k, l, l + 3))
        end
        local function I(k, l)
            local s, t, u, v = string.byte(k, l, l + 3)
            return r(v, u, t, s)
        end
        local function J(k, l)
            return A(string.byte(k, l, l + 7))
        end
        local function K(k, l)
            local s, t, u, v, B, C, D, E = string.byte(k, l, l + 7)
            return A(E, D, C, B, v, u, t, s)
        end
        local L = {[4] = {little = H, big = I}, [8] = {little = J, big = K}}
        local function M(N)
            local O = N.index
            local P = string.byte(N.source, O, O)
            N.index = O + 1
            return P
        end
        local function Q(N, R)
            local S = N.index + R
            local T = string.sub(N.source, N.index, S - 1)
            N.index = S
            return T
        end
        local function U(N)
            local R = N:s_szt()
            local T
            if R ~= 0 then
                T = string.sub(Q(N, R), 1, -2)
            end
            return T
        end
        local function V(R, W)
            return function(N)
                local S = N.index + R
                local X = W(N.source, N.index, S)
                N.index = S
                return X
            end
        end
        local function Y(R, W)
            return function(N)
                local Z = W(N.source, N.index)
                N.index = N.index + R
                return Z
            end
        end
        local function _(N)
            local R = N:s_int()
            local a0 = table.create(R)
            for p = 1, R do
                local a1 = N:s_ins()
                local a2 = b.band(a1, 0x3F)
                local a3 = h[a2]
                local a4 = i[a2]
                local a5 = {value = a1, op = g[a2], A = b.band(b.rshift(a1, 6), 0xFF)}
                if a3 == "ABC" then
                    a5.B = b.band(b.rshift(a1, 23), 0x1FF)
                    a5.C = b.band(b.rshift(a1, 14), 0x1FF)
                    a5.is_KB = a4.b == "OpArgK" and a5.B > 0xFF
                    a5.is_KC = a4.c == "OpArgK" and a5.C > 0xFF
                    if a2 == 10 then
                        local m = b.band(b.rshift(a5.B, 3), 31)
                        if m == 0 then
                            a5.const = a5.B
                        else
                            a5.const = b.lshift(b.band(a5.B, 7) + 8, m - 1)
                        end
                    end
                elseif a3 == "ABx" then
                    a5.Bx = b.band(b.rshift(a1, 14), 0x3FFFF)
                    a5.is_K = a4.b == "OpArgK"
                elseif a3 == "AsBx" then
                    a5.sBx = b.band(b.rshift(a1, 14), 0x3FFFF) - 131071
                end
                a0[p] = a5
            end
            return a0
        end
        local function a6(N)
            local R = N:s_int()
            local a0 = table.create(R)
            for p = 1, R do
                local a7 = M(N)
                local a8
                if a7 == 1 then
                    a8 = M(N) ~= 0
                elseif a7 == 3 then
                    a8 = N:s_num()
                elseif a7 == 4 then
                    a8 = U(N)
                end
                a0[p] = a8
            end
            return a0
        end
        local function a9(N, k)
            local R = N:s_int()
            local a0 = table.create(R)
            for p = 1, R do
                a0[p] = e(N, k)
            end
            return a0
        end
        local function aa(N)
            local R = N:s_int()
            local a0 = table.create(R)
            for p = 1, R do
                a0[p] = N:s_int()
            end
            return a0
        end
        local function ab(N)
            local R = N:s_int()
            local a0 = table.create(R)
            for p = 1, R do
                a0[p] = {varname = U(N), startpc = N:s_int(), endpc = N:s_int()}
            end
            return a0
        end
        local function ac(N)
            local R = N:s_int()
            local a0 = table.create(R)
            for p = 1, R do
                a0[p] = U(N)
            end
            return a0
        end
        function e(N, ad)
            local ae = {}
            local k = U(N) or ad
            ae.source = k
            N:s_int()
            N:s_int()
            ae.num_upval = M(N)
            ae.num_param = M(N)
            M(N)
            ae.max_stack = M(N)
            ae.code = _(N)
            ae.const = a6(N)
            ae.subs = a9(N, k)
            aa(N)
            ab(N)
            ac(N)
            for af, ag in ae.code do
                if ag.is_K then
                    ag.const = ae.const[ag.Bx + 1]
                else
                    if ag.is_KB then
                        ag.const_B = ae.const[ag.B - 0xFF]
                    end
                    if ag.is_KC then
                        ag.const_C = ae.const[ag.C - 0xFF]
                    end
                end
            end
            return ae
        end
        function c(k)
            local ah
            local ai
            local aj
            local ak
            local al
            local am
            local an
            local ao = {index = 1, source = k}
            assert(Q(ao, 4) == "\27Lua", "invalid Lua signature")
            assert(M(ao) == 0x51, "invalid Lua version")
            assert(M(ao) == 0, "invalid Lua format")
            ai = M(ao) ~= 0
            aj = M(ao)
            ak = M(ao)
            al = M(ao)
            am = M(ao)
            an = M(ao) ~= 0
            ah = ai and F or G
            ao.s_int = V(aj, ah)
            ao.s_szt = V(ak, ah)
            ao.s_ins = V(al, ah)
            if an then
                ao.s_num = V(am, ah)
            elseif L[am] then
                ao.s_num = Y(am, L[am][ai and "little" or "big"])
            else
                error("unsupported float size")
            end
            return e(ao, "@wfuscator-vm")
        end
        local function ap(a0, aq)
            for p, ar in pairs(a0) do
                if ar.index >= aq then
                    ar.value = ar.store[ar.index]
                    ar.store = ar
                    ar.index = "value"
                    a0[p] = nil
                end
            end
        end
        local function as(a0, aq, at)
            local au = a0[aq]
            if not au then
                au = {index = aq, store = at}
                a0[aq] = au
            end
            return au
        end
        local function av(aw, ax)
            local k = aw.source
            error(string.format("%s: %s", k, ax), 0)
        end
        local function ay(az, aA, aB)
            local aC = az.code
            local aD = az.subs
            local aE = az.vararg
            local aF = -1
            local aG = {}
            local at = az.memory
            local aH = az.pc
            while true do
                local aI = aC[aH]
                local a2 = aI.op
                aH = aH + 1
                if a2 < 18 then
                    if a2 < 8 then
                        if a2 < 3 then
                            if a2 < 1 then
                                for p = aI.A, aI.B do
                                    at[p] = nil
                                end
                            elseif a2 > 1 then
                                local ar = aB[aI.B]
                                at[aI.A] = ar.store[ar.index]
                            else
                                local aJ, aK
                                if aI.is_KB then
                                    aJ = aI.const_B
                                else
                                    aJ = at[aI.B]
                                end
                                if aI.is_KC then
                                    aK = aI.const_C
                                else
                                    aK = at[aI.C]
                                end
                                at[aI.A] = aJ + aK
                            end
                        elseif a2 > 3 then
                            if a2 < 6 then
                                if a2 > 4 then
                                    local aL = aI.A
                                    local aM = aI.B
                                    local aq
                                    if aI.is_KC then
                                        aq = aI.const_C
                                    else
                                        aq = at[aI.C]
                                    end
                                    at[aL + 1] = at[aM]
                                    at[aL] = at[aM][aq]
                                else
                                    at[aI.A] = aA[aI.const]
                                end
                            elseif a2 > 6 then
                                local aq
                                if aI.is_KC then
                                    aq = aI.const_C
                                else
                                    aq = at[aI.C]
                                end
                                at[aI.A] = at[aI.B][aq]
                            else
                                local aJ, aK
                                if aI.is_KB then
                                    aJ = aI.const_B
                                else
                                    aJ = at[aI.B]
                                end
                                if aI.is_KC then
                                    aK = aI.const_C
                                else
                                    aK = at[aI.C]
                                end
                                at[aI.A] = aJ - aK
                            end
                        else
                            at[aI.A] = at[aI.B]
                        end
                    elseif a2 > 8 then
                        if a2 < 13 then
                            if a2 < 10 then
                                aA[aI.const] = at[aI.A]
                            elseif a2 > 10 then
                                if a2 < 12 then
                                    local aL = aI.A
                                    local aM = aI.B
                                    local aN = aI.C
                                    local aO
                                    if aM == 0 then
                                        aO = aF - aL
                                    else
                                        aO = aM - 1
                                    end
                                    local aP = table.pack(at[aL](table.unpack(at, aL + 1, aL + aO)))
                                    local aQ = aP.n
                                    if aN == 0 then
                                        aF = aL + aQ - 1
                                    else
                                        aQ = aN - 1
                                    end
                                    table.move(aP, 1, aQ, aL, at)
                                else
                                    local ar = aB[aI.B]
                                    ar.store[ar.index] = at[aI.A]
                                end
                            else
                                local aJ, aK
                                if aI.is_KB then
                                    aJ = aI.const_B
                                else
                                    aJ = at[aI.B]
                                end
                                if aI.is_KC then
                                    aK = aI.const_C
                                else
                                    aK = at[aI.C]
                                end
                                at[aI.A] = aJ * aK
                            end
                        elseif a2 > 13 then
                            if a2 < 16 then
                                if a2 > 14 then
                                    local aL = aI.A
                                    local aM = aI.B
                                    local aO
                                    if aM == 0 then
                                        aO = aF - aL
                                    else
                                        aO = aM - 1
                                    end
                                    ap(aG, 0)
                                    return at[aL](table.unpack(at, aL + 1, aL + aO))
                                else
                                    local aq, aR
                                    if aI.is_KB then
                                        aq = aI.const_B
                                    else
                                        aq = at[aI.B]
                                    end
                                    if aI.is_KC then
                                        aR = aI.const_C
                                    else
                                        aR = at[aI.C]
                                    end
                                    at[aI.A][aq] = aR
                                end
                            elseif a2 > 16 then
                                at[aI.A] = table.create(aI.const)
                            else
                                local aJ, aK
                                if aI.is_KB then
                                    aJ = aI.const_B
                                else
                                    aJ = at[aI.B]
                                end
                                if aI.is_KC then
                                    aK = aI.const_C
                                else
                                    aK = at[aI.C]
                                end
                                at[aI.A] = aJ / aK
                            end
                        else
                            at[aI.A] = aI.const
                        end
                    else
                        local aL = aI.A
                        local aS = at[aL + 2]
                        local aq = at[aL] + aS
                        local aT = at[aL + 1]
                        local aU
                        if aS == math.abs(aS) then
                            aU = aq <= aT
                        else
                            aU = aq >= aT
                        end
                        if aU then
                            at[aL] = aq
                            at[aL + 3] = aq
                            aH = aH + aI.sBx
                        end
                    end
                elseif a2 > 18 then
                    if a2 < 28 then
                        if a2 < 23 then
                            if a2 < 20 then
                                at[aI.A] = #at[aI.B]
                            elseif a2 > 20 then
                                if a2 < 22 then
                                    local aL = aI.A
                                    local aM = aI.B
                                    local R
                                    if aM == 0 then
                                        R = aF - aL + 1
                                    else
                                        R = aM - 1
                                    end
                                    ap(aG, 0)
                                    return table.unpack(at, aL, aL + R - 1)
                                else
                                    local aM = aI.B
                                    local T = at[aM]
                                    for p = aM + 1, aI.C do
                                        T = T .. at[p]
                                    end
                                    at[aI.A] = T
                                end
                            else
                                local aJ, aK
                                if aI.is_KB then
                                    aJ = aI.const_B
                                else
                                    aJ = at[aI.B]
                                end
                                if aI.is_KC then
                                    aK = aI.const_C
                                else
                                    aK = at[aI.C]
                                end
                                at[aI.A] = aJ % aK
                            end
                        elseif a2 > 23 then
                            if a2 < 26 then
                                if a2 > 24 then
                                    ap(aG, aI.A)
                                else
                                    local aJ, aK
                                    if aI.is_KB then
                                        aJ = aI.const_B
                                    else
                                        aJ = at[aI.B]
                                    end
                                    if aI.is_KC then
                                        aK = aI.const_C
                                    else
                                        aK = at[aI.C]
                                    end
                                    if aJ == aK == (aI.A ~= 0) then
                                        aH = aH + aC[aH].sBx
                                    end
                                    aH = aH + 1
                                end
                            elseif a2 > 26 then
                                local aJ, aK
                                if aI.is_KB then
                                    aJ = aI.const_B
                                else
                                    aJ = at[aI.B]
                                end
                                if aI.is_KC then
                                    aK = aI.const_C
                                else
                                    aK = at[aI.C]
                                end
                                if aJ < aK == (aI.A ~= 0) then
                                    aH = aH + aC[aH].sBx
                                end
                                aH = aH + 1
                            else
                                local aJ, aK
                                if aI.is_KB then
                                    aJ = aI.const_B
                                else
                                    aJ = at[aI.B]
                                end
                                if aI.is_KC then
                                    aK = aI.const_C
                                else
                                    aK = at[aI.C]
                                end
                                at[aI.A] = aJ ^ aK
                            end
                        else
                            at[aI.A] = aI.B ~= 0
                            if aI.C ~= 0 then
                                aH = aH + 1
                            end
                        end
                    elseif a2 > 28 then
                        if a2 < 33 then
                            if a2 < 30 then
                                local aJ, aK
                                if aI.is_KB then
                                    aJ = aI.const_B
                                else
                                    aJ = at[aI.B]
                                end
                                if aI.is_KC then
                                    aK = aI.const_C
                                else
                                    aK = at[aI.C]
                                end
                                if aJ <= aK == (aI.A ~= 0) then
                                    aH = aH + aC[aH].sBx
                                end
                                aH = aH + 1
                            elseif a2 > 30 then
                                if a2 < 32 then
                                    local aV = aD[aI.Bx + 1]
                                    local aW = aV.num_upval
                                    local aX
                                    if aW ~= 0 then
                                        aX = {}
                                        for p = 1, aW do
                                            local aY = aC[aH + p - 1]
                                            if aY.op == g[0] then
                                                aX[p - 1] = as(aG, aY.B, at)
                                            elseif aY.op == g[4] then
                                                aX[p - 1] = aB[aY.B]
                                            end
                                        end
                                        aH = aH + aW
                                    end
                                    at[aI.A] = d(aV, aA, aX)
                                else
                                    local aL = aI.A
                                    local aM = aI.B
                                    if not at[aM] ~= (aI.C ~= 0) then
                                        at[aL] = at[aM]
                                        aH = aH + aC[aH].sBx
                                    end
                                    aH = aH + 1
                                end
                            else
                                at[aI.A] = -at[aI.B]
                            end
                        elseif a2 > 33 then
                            if a2 < 36 then
                                if a2 > 34 then
                                    local aL = aI.A
                                    local R = aI.B
                                    if R == 0 then
                                        R = aE.len
                                        aF = aL + R - 1
                                    end
                                    table.move(aE.list, 1, R, aL, at)
                                else
                                    local aL = aI.A
                                    local aZ, aT, aS
                                    aZ = assert(tonumber(at[aL]), "`for` initial value must be a number")
                                    aT = assert(tonumber(at[aL + 1]), "`for` limit must be a number")
                                    aS = assert(tonumber(at[aL + 2]), "`for` step must be a number")
                                    at[aL] = aZ - aS
                                    at[aL + 1] = aT
                                    at[aL + 2] = aS
                                    aH = aH + aI.sBx
                                end
                            elseif a2 > 36 then
                                local aL = aI.A
                                local aN = aI.C
                                local R = aI.B
                                local a_ = at[aL]
                                local b0
                                if R == 0 then
                                    R = aF - aL
                                end
                                if aN == 0 then
                                    aN = aI[aH].value
                                    aH = aH + 1
                                end
                                b0 = (aN - 1) * f
                                table.move(at, aL + 1, aL + R, b0 + 1, a_)
                            else
                                at[aI.A] = not at[aI.B]
                            end
                        else
                            if not at[aI.A] ~= (aI.C ~= 0) then
                                aH = aH + aC[aH].sBx
                            end
                            aH = aH + 1
                        end
                    else
                        local aL = aI.A
                        local b1 = aL + 3
                        if type(at[aL]) == "table" then
                            at[aL + 1] = at[aL]
                            at[aL] = pairs(at[aL])
                        end
                        local b2 = {at[aL](at[aL + 1], at[aL + 2])}
                        table.move(b2, 1, aI.C, b1, at)
                        if at[b1] ~= nil then
                            at[aL + 2] = at[b1]
                            aH = aH + aC[aH].sBx
                        end
                        aH = aH + 1
                    end
                else
                    aH = aH + aI.sBx
                end
                az.pc = aH
            end
        end
        function d(ae, aA, b3)
            local function b4(...)
                local b5 = table.pack(...)
                local at = table.create(ae.max_stack)
                local aE = {len = 0, list = {}}
                table.move(b5, 1, ae.num_param, 0, at)
                if ae.num_param < b5.n then
                    local b6 = ae.num_param + 1
                    local R = b5.n - ae.num_param
                    aE.len = R
                    table.move(b5, b6, b6 + R - 1, 1, aE.list)
                end
                local az = {vararg = aE, memory = at, code = ae.code, subs = ae.subs, pc = 1}
                local b7 = table.pack(pcall(ay, az, aA, b3))
                if b7[1] then
                    return table.unpack(b7, 2, b7.n)
                else
                    local aw = {pc = az.pc, source = ae.source}
                    return av(aw, b7[2])
                end
            end
            return b4
        end
        a = function(b8, aA)
            return d(c(b8), aA)()
        end
    end
    local r = ipairs
    local g = table.create
    local aa = 226
    local p = string.gsub
    local q = string.find
    local b9 = math
    local n = string.char
    local e = table.insert
    local o = string.sub
    local z = 10
    local h = table.pack
    local i = table.unpack
    local t = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local v = function(ad, an)
        local am, ah = 1, 0
        local ae = z + an
        while ad > 0 and ae > 0 do
            local af, ag = ad % 2, ae % 2
            if af ~= ag then
                ah = ah + am
            end
            ad = (ad - af) / 2
            ae = (ae - ag) / 2
            am = am * 2
        end
        if ad < ae then
            ad = ae
        end
        while ad > 0 do
            local af = ad % 2
            if af > 0 then
                ah = ah + am
            end
            ad = (ad - af) / 2
            am = am * 2
        end
        return ah
    end
    local u = function(ai, an)
        ai = p(ai, "[^" .. t .. "=]", "")
        ai =
            p(
            ai,
            ".",
            function(aj)
                if aj == "=" then
                    return ""
                end
                local ak, af = "", q(t, aj) - 1
                for al = 6, 1, -1 do
                    ak = ak .. (af % 2 ^ al - af % 2 ^ (al - 1) > 0 and "1" or "0")
                end
                return ak
            end
        )
        ai =
            p(
            ai,
            "%d%d%d?%d?%d?%d?%d?%d?",
            function(aj)
                if #aj ~= 8 then
                    return ""
                end
                local am = 0
                for al = 1, 8 do
                    am = am + (o(aj, al, al) == "1" and 2 ^ (8 - al) or 0)
                end
                return n(v(am, an))
            end
        )
        return ai
    end
    local s = function(ad, an)
        local am, ah = 1, 0
        local ae = aa + an
        while ad > 0 and ae > 0 do
            local af, ag = ad % 2, ae % 2
            if af ~= ag then
                ah = ah + am
            end
            ad = (ad - af) / 2
            ae = (ae - ag) / 2
            am = am * 2
        end
        if ad < ae then
            ad = ae
        end
        while ad > 0 do
            local af = ad % 2
            if af > 0 then
                ah = ah + am
            end
            ad = (ad - af) / 2
            am = am * 2
        end
        return ah
    end
    local ba, bb, w, k, d, c, y, bc, as, f, j, bd, x, m, be, bf, ao, l = typeof, table, function(ag)
            local ah = ""
            repeat
                local bg = ag / 2
                local al, bh = b9["modf"](bg)
                ag = al
                ah = b9["ceil"](bh) .. ah
            until ag == 0
            return ah
        end, task.wait, 11, 243, (function()
            ao = function(ap, aq, ar)
                if not ap then
                    as(aq, 2 + (ar or 0))
                end
            end
            local y = g(0)
            y["partial"] = function(at, ...)
                local au = h(...)
                local av = h(i(au))
                return function(...)
                    local au = h(...)
                    local aw = g(0)
                    for ax, ay in r(av) do
                        e(aw, ay)
                    end
                    for ax, ay in r(h(i(au))) do
                        e(aw, ay)
                    end
                    return at(i(aw))
                end
            end
            return y
        end)(), getmetatable, error, table.remove, task.spawn, string, function(ad, am)
            local ah = g(0)
            for ae = 1, #ad, am do
                e(ah, o(ad, ae, ae + am - 1))
            end
            return ah
        end, string.len, task, print, assert, math.random
    local ab = g(0)
    ab[26] = u("", 7)
    ab[56] = s(308, 82)
    ab[38] = u("Y3JweA==", 9)
    ab[40] = u("ZWJ/aX54", 2)
    ab[14] = u("UFU=", 1)
    ab[102] = s(277, 51)
    ab[30] = u("cnlwYw==", 7)
    ab[95] = s(282, 57, 630)
    ab[82] = s(332, 107)
    ab[71] = s(285, 71)
    ab[15] = u("", 10)
    ab[94] = s(377, 95)
    ab[112] = s(299, 106)
    ab[84] = s(294, 76)
    ab[4] = u("eH95YmVs", 1)
    ab[92] = s(307, 80, 118)
    ab[97] = s(340, 116, 569, 774)
    ab[49] = s(328, 64)
    ab[21] = u("amViaA==", 2)
    ab[59] = s(282, 54, 685)
    ab[47] = s(278, 96)
    ab[13] = u("MlI=", 5)
    ab[32] = u("fQ==", 4)
    ab[35] = u("fG1+eGVtYA==", 2)
    ab[6] = u("dXdmf3dmc2ZzcH53", 8)
    ab[19] = u("Mg==", 5)
    ab[110] = s(327, 101, 85)
    ab[51] = s(304, 118, 118)
    ab[41] = u("fmV7amhg", 1)
    ab[93] = s(276, 64)
    ab[57] = s(344, 120)
    ab[45] = u("J3phbm1jai97YC9pZmFrL3lufWZubWNqL2ZhL3liJg==", 5)
    ab[54] = s(285, 95, 660)
    ab[90] = s(358, 88)
    ab[39] = u("fG1vZw==", 2)
    ab[50] = s(281, 75)
    ab[61] = s(331, 103, 958)
    ab[5] = u("emNyemFg", 9)
    ab[18] = u("", 2)
    ab[80] = s(331, 103)
    ab[83] = s(342, 110)
    ab[25] = u("Nnc2dzZ3LDZ3LDZ3LDZ3LDZ3LDZ3LA==", 9)
    ab[78] = s(328, 103)
    ab[46] =
        u(
        "F0B5bV0MDQgECAQMDAwMDAwMDAwMDAwMDAwMDAwMDhGcDAwMDUwMDAsMDAwJjAwMCsxMDEmMDAxKDM0MiYwMDIpMTQ3NjA0MCc0NDEkNDgxKTc4OiQ0ODIqNTg/JDQ4Mys3ODwmODAwKDk8ISU4PDI2ODwzJDg4Mys7PCQkPCAwKT0gKaA8MDAwMDA6JjwgMyc8NDMrPyAsJCAkMSQgODEpIyQSJiAkMyYgMDMrIyQUJCQgMCglKBmhJDAwMDIwODAyMDIYJDAzJiQoMDcoKDE0KCwzQiYwNhcmJgMmJCgwNigsMTcoLDNCJjA2FyYmCyUkEDA2KBAxNCgQM0ImMDYXJCZzJSQQMDQoFDE1KBQzQiYwNhcmJnclJBAwNygUMTQoGDNCJjA2FyQmfyUkEDA2KBgxNigUM0ImMDYXJiZjJSQQMDQoHDE1KBgzQiYwNhcmJmclJBAwNSgcMTYoHDNCJjA2FyYmeyUkEDA3KBwxNSgYM0ImMDYXJCZvJSQQMDQoADE3KBAzQiYwNhckJmMlJBAwNigAMTcoGDNCJjA2FyYmUyYkKDA0KAQxNSgEM0ImMDYXJiZXJSQQMDcoBDE1KBgzQiYwNhckJl8mJCgwNSgIMTYoCDI3KAgzQiQwOhckJkMmJCgwNCgMMTUoDDNCJjA2FyQmLyYkKDA3KAwxKik8HjQocDNCJDA7KyQkHy4kDDMlJHAyLiBwMqIgMDAwMDAcMDAwL6MkMDAwMDAUMDAwHDAwMCygKDQwMDAwLDAwMB0wKDASJigoMzcocDA0LHQyQiowNiooKB1BKDA0SDIwMSQwMDAgFDAwMDAwMDFNaSV5fRUNCDAgBDAwMDAwMDHtqeX9vbXhjfiF6YQwICwwMDAwMDAx/eH5lYmsMCAkMDAwMDAwMamViaAwICAwMDAwMDAx/eW4MCAkMDAwMDAwMa395bgwPDAwMDAxsYkwICQwMDAwMDAxhbXhkDAgKDAwMDAwMDHhtbmBpDAgLDAwMDAwMDGVif2l+eAwICQwMDAwMDAx8bW9nDAgLDAwMDAwMDHlifG1vZwwICQwMDAwMDAxvZG1+DAgLDAwMDAwMDGV8bWV+fwwPDAwMDAwMKkwICwwMDAwMDAxvfmlteGkMCAkMDAwMDAwMeG1/ZwwICgwMDAwMDAx/fG17YgwIAQwMDAwMDAxraXhhaXhteG1uYGkMCAsMDAwMDAwMfm1iaGNhDAgKDAwMDAwMDHx+ZWJ4DAgLDAwMDAwMDH5pYWN6aQwICwwMDAwMDAx4dXxpY2oMCAgMDAwMDAwMYGliDAgJDAwMDAwMDHttZXgMDwwMDAwMDCBMCA4MDAwMDAwMfQwPDAwMDAycfEwPDAwMDAzMX0wPDAwMDAwMIkwPDAwMDAzsfkwPDAwMDAwMQkwPDAwMDAwMDEwIDgwMDAwMDAx/DAgZDAwMDAwMDG5hSn9qYjlnVT85OW5LQnltTTExDA8MDAwMDAwcTAgVDAwMDAwMDG9iPXtVYUZ1amI1ZVZbQmdvYVonVXsxMQwPDAwMDAwMFEwPDAwMDAwMEEwIWQwMDAwMDAxYSXRqXmBGS15KfERbPU5qWWdOTVpnTkFbYD1EWmdKaFlgNUFaPXRBVFp0RFhKOW9aPXxaX2d0QVlKdGhdSWhOXmBORFRJSkFdWlZaWmdKW1RaTlsMDwwMDAwMDCxMDwwMDAwMDChMCAUMDAwMDAwMVGA9WFprMTEMDwwMDAwMDARMCFkMDAwMDAwMX2d8Vl1KXk1dYHROVFpWVlpJVktZSVZHVEp4TllJaG5aSmBHWVp8R1s9fE5fYGRtWVp0WFhJfEdaYHxuXmdKRF1KVk5bZ2hHXj1OWFlJaF1bPVZdDAgFDAwMDAwMDGlLPXlVS2cxDA8MDAwMDAz8MwgpDAwMDAwMDFpaeE9qW05kQl9gNVVbSmBWZTQ6Q2FGNVVLSTtvVE5mQ2V/MQwIGQwMDAwMDAxuS0J5akR0YVVUdDtuYUp/bWsxMQwPDAwMDAwMGEwIQQwMDAwMDAxZWkpPWzw1bltZaG1eZz1PWD09aF89PV5ePE5tXz10TVg8Rl5fZ0peXUlKbVlZQk5fZ2hFWj1KXl49PUJdWU5oW2B0blhafE5UTTExDA8MDAwMDAwmTA8MDAwMDBx7TA8MDAwMDIxFTA8MDAwMDAwuTAhVDAwMDAwMDF9nfFZdSl5NXWB0TlRaVlZaSVZLWUlWR1RKeE5ZSWhuWkpgR1lafEdbPXxOX2BkbVladFhYSXxHVEp4aFlJaG9dWlZWWklWS1pgfG5eZ0pEXUpWTltnaEsMDwwMDAwMDCRMDwwMDAwMfHxMDwwMDAwMTFRMDwwMDAwMTIdMDwwMDAwMXHtMDwwMDAwMTF1MCA8MDAwMDAwMbWQMDwwMDAwMHHhMDwwMDAwM3IxMCA8MDAwMDAwMbWYMCA8MDAwMDAwMbW0MDwwMDAwM/HpMDwwMDAwMjFBMCQwMDAwMDAwMDAwMDQwMDA0MDAwNDQwLHQwMDE0MDAyDTEwMyAwMDMqMzA0MDQwN0MwMDQwMjA1IDQwMSs3MDowNDA5QjQwNjA2MDFmMjQ4bDE0MGkzwc1IMDA0SDIwMCQwMDAgNDAwMDAwMDAwPDAwMDAwMDEwICQwMDAwMDAxhY2hqDAgJDAwMDAwMDG9pZWAMDwwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDQwMDA0MDAwODgwBHQwMDIYMDAzNDAwMGA0MDEwNjAzsDA6MyA0MDAwODA1IDowMjA4MDMwODA8ATwwPAQ9MClAODA7QTQwM00zxc5IMDA0SDIwMDQwMDA8MDAwMDAz8MwwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDA0MDAwNDAwMDg0MBDgMDAxJDAwMjAwMDFCMDA2IDAwMyUwMDA2NDAxNzQwM0IyMDYrMDA0bjIwMGowFjIgMjAzMDAwMkIwMDZYMDAwaTASMyAwMDAlNDAxNDQ0MjU0NDBCNjA3KDI0NyswMDdYMDAwajA2MyAwMDAlNDAxNjQ0Mjc0NDM0NDgwQjQwOSgyNDcgMDAwJTQwMTU0ODIgNDAyKjU4Pzc0ODBCNDA7KDI0NyswMDdYMDAwajA2MyAwMDAlNDAxNDQ8MiA0MDIpNTw8QjYwNSgyNDVIMDA0SDIwMAgwMDAgPDAwMDAwMDG1tDAgODAwMDAwMDH0MDwwMDAwMXHhMDwwMDAwMDFhMDwwMDAwMXH9MDwwMDAwMzFxMDwwMDAwMfH9MDwwMDAwMjFxMDwwMDAwMfIxMDwwMDAwM/HhMDwwMDAwMDCZMDwwMDAwMrH1MDwwMDAwMLHhMDwwMDAwMDCRMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDQwMDA0MDAwPDQwKGwwMDEgMDAyMDAwMUIwMDYgMjAzJDAwMDU0MDE2NDAzQjIwNiswMDRuMjAwajA6MSAwMDYwMDAxQjAwNiAyMDMkMDAwNzQwMTQ0NDNCMjA2KzAwNSoyMDFIMDA0SDIwMCQwMDAgODAwMDAwMDH0MDwwMDAwMnHhMDwwMDAwMjF9MDwwMDAwM/HpMDwwMDAwMTFFMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDQwMDA0MDAwODQwKHAwMDEgMDAyMDAwMUIwMDYgMjAzJDAwMDU0MDEgNjAxKjcwO0IyMDYrMDA1KjIwMiAyMDIrMTA1KjIwMUgwMDRIMjAwIDAwMCA4MDAwMDAwMfQwPDAwMDAx8f0wPDAwMDAwMIEwPDAwMDAwMIkwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM",
        2
    )
    ab[11] = u("fA==", 1)
    ab[72] = s(358, 62, 291)
    ab[31] = u("bHh+aQ==", 1)
    ab[8] = u("eHV8aWNq", 2)
    ab[22] = u("Jg==", 12)
    ab[107] = s(321, 97, 809, 329)
    ab[20] = u("", 4)
    ab[75] = s(380, 59, 721)
    ab[43] = u("ZWJ/aX54", 2)
    ab[69] = s(350, 57)
    ab[74] = s(309, 82, 144)
    ab[1] = u("YHV2eHE=", 10)
    ab[42] = u("YXByeg==", 7)
    ab[65] = s(312, 86)
    ab[60] = s(322, 94, 765)
    ab[101] = s(287, 59)
    ab[100] = s(337, 113)
    ab[53] = s(264, 99)
    ab[98] = s(344, 120)
    ab[91] = s(347, 113)
    ab[108] = s(308, 82)
    ab[44] = u("emF/bmxk", 5)
    ab[79] = s(299, 71)
    ab[116] = s(331, 91)
    ab[105] = s(276, 50, 377, 226)
    ab[76] = s(263, 117, 718)
    ab[87] = s(308, 90)
    ab[104] = s(329, 105)
    ab[12] = u("YA==", 10)
    ab[16] = u("dmJkcw==", 7)
    ab[62] = s(345, 119)
    ab[29] = u("eg==", 4)
    ab[96] = s(287, 61, 230)
    ab[24] = u("bHh+aQ==", 1)
    ab[89] = s(299, 104, 62)
    ab[67] = s(307, 79, 579, 944, 378)
    ab[23] = u("Pw==", 4)
    ab[81] = s(281, 54, 413)
    ab[55] = s(315, 88, 991, 503)
    ab[115] = s(336, 54)
    ab[103] = s(341, 115, 853, 110, 432, 910)
    ab[58] = s(312, 88)
    ab[33] = u("bQ==", 11)
    ab[9] = u("ag==", 8)
    ab[48] = s(315, 115)
    ab[86] = s(314, 88, 535, 49)
    ab[77] = s(345, 119)
    ab[70] = s(326, 72)
    ab[10] = u("eg==", 3)
    ab[113] = s(320, 75, 612)
    ab[66] = s(347, 119, 274)
    ab[109] = s(316, 108)
    ab[2] = u("eG1/Zw==", 2)
    ab[99] = s(315, 87)
    ab[7] = u("fH5lYng=", 2)
    ab[63] = s(339, 113)
    ab[68] = s(312, 86)
    ab[85] = s(311, 85)
    ab[73] = s(313, 109)
    ab[17] = u("IQ==", 5)
    ab[117] = s(284, 61)
    ab[28] = u("Z2F2", 10)
    ab[37] = u("YXpkdXd/", 10)
    ab[36] = u("Znd1fQ==", 12)
    ab[3] = u("fnJnew==", 9)
    ab[52] = s(271, 110)
    ab[88] = s(331, 103, 63)
    ab[106] = s(321, 97)
    ab[34] = u("Zw==", 12)
    ab[64] = s(280, 56)
    ab[27] = u("Pg==", 5)
    ab[114] = s(290, 102)
    ab[111] = s(316, 92)
    local bi = function(ar)
        local ac = {
            [ab[s(310, 85, 983)]] = bb,
            [ab[s(308, ab[47], 309)]] = be,
            [ab[s(339, ab[48])]] = b9,
            [ab[s(348, 118)]] = bd,
            [ab[s(329, ab[49])]] = r,
            [ab[s(272, ab[50], 33)]] = bc,
            [ab[s(333, ab[51], 659, 169, 388, 762)]] = bf,
            [ab[s(329, ab[52])]] = ba
        }
        ac[ab[s(294, ab[53])]] = c
        ac[ab[s(308, ab[54], 133)]] = d
        ac[ab[s(348, 110)]] = function(ad, an)
            local am, ah = ab[55], ab[56]
            local ae = ac[ab[s(286, 51)]] + an
            while ad > ab[63] and ae > ab[62] do
                local af, ag = ad % ab[57], ae % ab[58]
                if af ~= ag then
                    ah = ah + am
                end
                ad = (ad - af) / ab[59]
                ae = (ae - ag) / ab[60]
                am = am * ab[61]
            end
            if ad < ae then
                ad = ae
            end
            while ad > ab[68] do
                local af = ad % ab[64]
                if af > ab[65] then
                    ah = ah + am
                end
                ad = (ad - af) / ab[66]
                am = am * ab[67]
            end
            return ah
        end
        ac[ab[s(314, ab[94])]] = function(ai, an)
            ai = p(ai, ab[s(349, 113)] .. t .. ab[s(298, ab[69])], ab[s(321, ab[70])])
            ai =
                p(
                ai,
                ab[s(263, ab[71])],
                function(aj)
                    if aj == ab[s(329, 120)] then
                        return ab[s(314, ab[72])]
                    end
                    local ak, af = ab[s(332, ab[73])], q(t, aj) - ab[74]
                    for al = ab[83], ab[82], -ab[81] do
                        ak =
                            ak ..
                            (af % ab[80] ^ al - af % ab[79] ^ (al - ab[78]) > ab[77] and ab[s(316, 73)] or
                                ab[s(292, ab[76], 562)])
                    end
                    return ak
                end
            )
            ai =
                p(
                ai,
                ab[s(321, 118, 385)],
                function(aj)
                    if #aj ~= ab[84] then
                        return ab[s(312, 64)]
                    end
                    local am = ab[85]
                    for al = ab[92], ab[91] do
                        am = am + (o(aj, al, al) == ab[s(344, ab[89])] and ab[88] ^ (ab[87] - al) or ab[86])
                    end
                    return n(ac[ab[s(298, 85)]](am, an))
                end
            )
            return ai
        end
        ac[ab[s(374, ab[109])]] = function(ad, an)
            local am, ah = ab[95], ab[96]
            local ae = ac[ab[s(263, 68)]] + an
            while ad > ab[103] and ae > ab[102] do
                local af, ag = ad % ab[97], ae % ab[98]
                if af ~= ag then
                    ah = ah + am
                end
                ad = (ad - af) / ab[99]
                ae = (ae - ag) / ab[100]
                am = am * ab[101]
            end
            if ad < ae then
                ad = ae
            end
            while ad > ab[108] do
                local af = ad % ab[104]
                if af > ab[105] then
                    ah = ah + am
                end
                ad = (ad - af) / ab[106]
                am = am * ab[107]
            end
            return ah
        end
        ac[ab[s(259, 76)]] =
            (function()
            ao = function(ap, aq, ar)
                if not ap then
                    as(aq, ab[111] + (ar or ab[110]))
                end
            end
            local y = g(0)
            y[ab[s(272, 81, 384)]] = function(at, ...)
                local au = h(...)
                local av = h(i(au))
                return function(...)
                    local au = h(...)
                    local aw = g(0)
                    for ax, ay in r(av) do
                        e(aw, ay)
                    end
                    for ax, ay in r(h(i(au))) do
                        e(aw, ay)
                    end
                    return at(i(aw))
                end
            end
            return y
        end)()(
            function(az)
            end
        )(ac)
        return ac
    end
    return a(ab[s(374, ab[116])], bi(ab[117]))
end)()
