.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x64ee, %r9
add $35273, %r11
movups (%r9), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
xor $9443, %r12
lea addresses_A_ht+0x1d470, %r15
dec %r14
movb (%r15), %r11b
nop
nop
nop
xor $22123, %r9
lea addresses_normal_ht+0x1645a, %r13
nop
sub %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r13)
nop
nop
and $25723, %r15
lea addresses_D_ht+0x1e768, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%r9), %r15w
nop
nop
add $24857, %rsi
lea addresses_WC_ht+0x64a6, %rsi
nop
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %rsi
movntdq %xmm2, (%rsi)
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x9ace, %rsi
lea addresses_WC_ht+0x62a6, %rdi
sub $38539, %r15
mov $75, %rcx
rep movsb
nop
nop
and $54511, %r12
lea addresses_A_ht+0xb9ce, %r14
clflush (%r14)
nop
nop
nop
nop
cmp $62747, %rsi
movb (%r14), %r9b
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1b2a6, %r9
nop
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
nop
and $11435, %r14
lea addresses_WT_ht+0x94e6, %r15
nop
nop
add $8363, %r12
mov $0x6162636465666768, %r11
movq %r11, (%r15)
nop
nop
nop
nop
and $12278, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdx

// Store
mov $0x43bb8d00000004a6, %r10
nop
and $27964, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
nop
and $63068, %rdx

// Faulty Load
lea addresses_A+0x1caa6, %r10
nop
nop
nop
nop
nop
xor $24850, %r15
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'40': 1, '00': 651, '04': 47, '08': 9491, '72': 11639}
04 40 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 72 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 72 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 72 08 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 08 72 72 72 72 72 72 08 72 72 72 72 72 72 72 08 72 72 72 08 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 72 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 08 72 72 72 08 72 72 08 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 08 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 08 72 72 72 72 72 08 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 08 72 08 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72
*/
