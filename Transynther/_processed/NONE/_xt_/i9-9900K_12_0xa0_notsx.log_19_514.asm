.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8442, %rsi
lea addresses_WT_ht+0x155e2, %rdi
sub $65411, %r11
mov $107, %rcx
rep movsl
nop
nop
and $32253, %r12
lea addresses_WC_ht+0x1c442, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $35198, %r8
mov (%rcx), %esi
nop
nop
nop
and $27862, %rsi
lea addresses_WC_ht+0xe42, %r11
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r11), %r12
nop
add $34090, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rcx

// Store
mov $0x391, %r13
xor %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovntdq %ymm1, (%r13)
nop
nop
dec %rcx

// Faulty Load
lea addresses_normal+0x9042, %rcx
nop
nop
dec %r15
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'34': 19}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
