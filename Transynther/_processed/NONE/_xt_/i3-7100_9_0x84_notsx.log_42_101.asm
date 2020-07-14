.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1eb9c, %rsi
lea addresses_WT_ht+0x1a654, %rdi
nop
nop
nop
cmp $44369, %r11
mov $102, %rcx
rep movsq
cmp %rdx, %rdx
lea addresses_normal_ht+0x168fc, %rsi
lea addresses_WC_ht+0x139dc, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $13, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x134fc, %rsi
nop
nop
nop
dec %r10
mov (%rsi), %r11w
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x130fc, %r12
nop
nop
nop
nop
xor $27528, %rsi
mov (%r12), %r10d
nop
nop
nop
nop
nop
cmp $36742, %r11
lea addresses_WT_ht+0x17d34, %r10
nop
sub $32831, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
nop
add $37710, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x47668d00000001fc, %rdi
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x988a, %r13
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
and $8519, %r12

// Store
lea addresses_D+0x121ff, %rcx
nop
nop
nop
nop
xor $49643, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rcx)
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_D+0x1b0fc, %r15
nop
nop
nop
sub %rsi, %rsi
mov (%r15), %bp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'36': 42}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
