.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a3ad, %rsi
nop
nop
nop
nop
nop
add %r9, %r9
movb $0x61, (%rsi)
dec %rbx
lea addresses_UC_ht+0x19705, %r13
nop
nop
nop
nop
sub %rbx, %rbx
movups (%r13), %xmm5
vpextrq $0, %xmm5, %r12
and $52648, %r12
lea addresses_normal_ht+0x1b7a5, %rsi
lea addresses_WC_ht+0x17fa5, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $45, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $24448, %rsi
lea addresses_normal_ht+0x170ad, %r12
nop
and $64987, %rsi
mov (%r12), %r11d
cmp %rsi, %rsi
lea addresses_normal_ht+0x752d, %rsi
nop
nop
and $35021, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rsi)
sub $57881, %r9
lea addresses_A_ht+0x193ad, %rsi
lea addresses_UC_ht+0x1022d, %rdi
cmp %r9, %r9
mov $42, %rcx
rep movsb
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x1600d, %r9
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r9), %cx
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x13ad, %r12
nop
nop
nop
nop
sub $2260, %r9
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
xor $63179, %r9
lea addresses_WC_ht+0x6c08, %r13
nop
nop
nop
nop
nop
inc %r9
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_normal+0x19e8b, %r13
nop
nop
nop
nop
and $8095, %rbx
mov (%r13), %bp

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r14
nop
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_A+0x19d0d, %r14
nop
nop
nop
nop
nop
dec %rbx
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
and $44745, %rbx

// Store
lea addresses_US+0x1106d, %rbx
nop
nop
cmp $1083, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
nop
nop
nop
cmp $44016, %rbx

// Store
lea addresses_RW+0x33ed, %r14
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r14)
sub %r13, %r13

// Faulty Load
lea addresses_normal+0x3bad, %rcx
nop
nop
nop
nop
cmp %r15, %r15
movntdqa (%rcx), %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 165}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
