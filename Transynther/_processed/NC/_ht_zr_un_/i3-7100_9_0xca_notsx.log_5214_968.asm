.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e91a, %rsi
lea addresses_A_ht+0x7dfd, %rdi
clflush (%rdi)
nop
xor $59718, %r13
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x173ce, %rdi
nop
nop
nop
nop
nop
inc %r14
mov (%rdi), %rcx
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1a79a, %r14
nop
nop
nop
nop
inc %r8
mov (%r14), %r13
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x941a, %rcx
clflush (%rcx)
nop
nop
add %r9, %r9
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
xor $12787, %r8
lea addresses_WC_ht+0x1c94c, %rsi
lea addresses_D_ht+0x23ea, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
cmp $40143, %r14
mov $3, %rcx
rep movsl
nop
sub $63410, %r9
lea addresses_D_ht+0x1731a, %r8
nop
nop
nop
nop
nop
sub $55709, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_normal+0x6b9a, %rbx
nop
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%rbx)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0x959a, %rbp
nop
nop
nop
and $19982, %rbx
movb $0x51, (%rbp)
nop
nop
add %r9, %r9

// Faulty Load
mov $0x4dceb2000000079a, %r9
xor $8857, %r14
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'45': 3, '40': 2, 'f6': 8, 'ff': 1, '9d': 1, '48': 774, '00': 3640, '02': 1, '44': 783, '81': 1}
44 44 00 00 48 00 00 00 00 48 44 00 00 00 00 44 44 44 48 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 48 00 00 44 00 44 00 48 00 44 00 00 48 00 00 00 00 48 00 00 00 00 44 00 00 00 00 00 00 00 44 48 00 00 44 44 00 44 48 00 48 00 00 00 00 48 00 00 00 00 00 44 48 00 00 44 00 48 00 48 00 00 00 44 00 00 00 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 44 00 00 48 00 44 00 00 00 48 44 00 48 48 00 00 44 44 00 00 00 00 44 48 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 48 48 00 00 00 44 00 00 00 00 00 00 00 00 00 48 48 44 00 00 48 00 44 00 00 00 44 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 48 00 44 00 00 00 00 00 00 44 44 00 00 00 44 00 00 48 00 00 48 44 48 00 00 00 48 48 00 48 00 00 00 00 48 00 48 00 44 00 00 00 00 48 00 00 00 44 00 00 44 48 48 00 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 44 00 00 48 00 00 44 00 44 48 00 00 48 00 00 48 00 00 00 44 48 48 00 00 44 00 00 48 48 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 44 44 44 00 48 48 00 00 00 00 00 00 44 48 48 44 48 48 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 48 00 44 00 00 44 48 00 44 00 00 00 44 44 44 00 44 00 48 48 00 00 00 48 00 00 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 f6 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 48 00 00 00 48 00 00 44 00 00 44 00 00 48 00 00 00 44 00 48 00 00 48 00 00 00 44 48 00 00 00 00 00 00 00 44 00 00 00 44 02 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 48 00 48 48 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 44 00 44 00 00 00 48 00 00 00 00 40 44 00 00 44 48 00 44 48 00 00 00 00 44 44 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 48 44 48 00 44 44 00 00 00 00 00 00 48 f6 48 00 44 00 44 48 00 00 48 00 48 00 48 48 44 48 00 00 44 00 00 00 48 00 00 00 00 48 00 44 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 48 44 00 44 00 00 00 48 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 48 00 00 44 00 00 44 00 00 00 00 00 44 48 48 00 48 48 00 00 00 00 00 00 44 00 48 44 44 00 44 00 00 00 00 00 00 00 48 00 00 00 44 00 00 00 00 00 00 48 40 00 00 44 00 44 44 44 00 00 00 00 00 48 00 48 00 44 44 44 44 00 00 00 00 00 44 00 44 00 00 48 00 44 00 00 44 00 00 44 44 00 00 48 48 00 00 44 00 00 48 00 00 00 00 00 00 00 44 00 00 00 44 00 48 00 00 00 00 00 00 00 00 48 00 44 00 00 00 00 48 00 00 00 00 00 48 00 44 44 00 48 44 00 00 00 00 44 00 00 44 00 00 00 44 44 00 00 44 00 00 00 44 48 00 00 00 00 00 48 44 00 48 48 44 00 00 48 00 48 00 00 48 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 48 44 00 00 00 00 00 00 00 00 00 44 48 00 48 44 44 00 00 00 00 44 00 48 00 44 00 48 00 00 00 48 48 00 00 00 44 48 00 00 44 48 00 00 48 00 00 48 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 44 48 00 00 00 00 00 f6 00 00 00
*/
