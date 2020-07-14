.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf077, %rsi
lea addresses_A_ht+0xe852, %rdi
clflush (%rdi)
nop
nop
nop
add %r8, %r8
mov $35, %rcx
rep movsl
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x19852, %r14
clflush (%r14)
nop
inc %rsi
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x11a38, %rsi
and $27874, %rdx
mov (%rsi), %r12w
nop
nop
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x1a852, %rdi
clflush (%rdi)
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
nop
nop
sub $1990, %rdx

// Store
lea addresses_WC+0x19052, %r11
and $1016, %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_WC+0x19052, %rbp
nop
nop
nop
and %rcx, %rcx
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'2a': 1, '24': 81, '3a': 1, 'f4': 46, 'c5': 3995, '5b': 1, '2b': 1, '65': 2, '36': 349, '20': 1, '6b': 79, '40': 567, 'c6': 76, '25': 394, 'c2': 1, 'd3': 1, 'b5': 5396, '7d': 1, '8e': 2, 'bd': 1, '45': 1, '1e': 270, '15': 2, '92': 1, '27': 1, '98': 1, 'd1': 1024, '09': 20, '8c': 1, 'eb': 100, '0f': 7, '5d': 1, '32': 584, '2e': 1, 'b6': 1, '80': 1, 'd7': 157, 'd6': 2, '0b': 153, '29': 2, '78': 1, 'e3': 1, '00': 2372, '1d': 1, 'd2': 1624, 'c9': 153, '62': 20, 'a4': 1, 'cd': 1, '42': 79, 'c8': 2, 'b4': 641, '48': 4, '23': 1, 'ff': 3293, 'f7': 54, '41': 248, '69': 1, 'f2': 1, '5c': 1, '34': 1, '10': 1, '1b': 1, 'd4': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 00 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 00 00 c5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 c5 00 c5 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 ff 40 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 d1 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 ff b5 c5 c5 c5 c5 c5 c5 c5 c5 c5 ff ff ff b5 c5 c5 c5 b5 c5 ff 48 c5 00 48 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 d1 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 c5 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 b5 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff d1 ff ff ff d1 ff d1 ff d1 ff d1 ff d1 ff ff d1 ff ff
*/
