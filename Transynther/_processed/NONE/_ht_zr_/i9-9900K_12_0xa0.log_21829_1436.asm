.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14814, %rbx
nop
nop
nop
xor %r8, %r8
movl $0x61626364, (%rbx)
nop
nop
nop
sub $62270, %rdi
lea addresses_D_ht+0x8c24, %r10
nop
nop
sub $3734, %r12
movups (%r10), %xmm4
vpextrq $0, %xmm4, %rcx
add $9989, %rdi
lea addresses_UC_ht+0xbbe4, %rsi
lea addresses_normal_ht+0x16124, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $42, %rcx
rep movsb
nop
nop
nop
sub $30875, %rcx
lea addresses_A_ht+0x2024, %rbx
nop
nop
cmp %rsi, %rsi
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
lfence
lea addresses_A_ht+0x1d114, %rsi
nop
nop
nop
nop
nop
inc %rdi
movb (%rsi), %r10b
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x6824, %rsi
nop
nop
nop
nop
nop
add $6534, %rdi
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
add $32269, %r8
lea addresses_A_ht+0x548, %rbx
clflush (%rbx)
nop
nop
nop
cmp %r12, %r12
movb (%rbx), %r10b
nop
and $18742, %r10
lea addresses_normal_ht+0x424, %rcx
nop
nop
nop
nop
and $38872, %rdi
mov (%rcx), %r10w
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x44a4, %rsi
lea addresses_WT_ht+0xac8c, %rdi
nop
nop
nop
nop
xor $47918, %r15
mov $119, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $19744, %r8
lea addresses_normal_ht+0xbf82, %rsi
lea addresses_WC_ht+0x1ec34, %rdi
nop
and %r10, %r10
mov $94, %rcx
rep movsl
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1c9c4, %r15
nop
nop
nop
cmp $58753, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r15)
nop
inc %r12
lea addresses_UC_ht+0x1c424, %r15
nop
nop
nop
nop
and $34926, %rcx
mov (%r15), %ebx
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0xef6c, %rsi
nop
and %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x9474, %rsi
lea addresses_A_ht+0x45c4, %rdi
nop
nop
nop
nop
inc %rbx
mov $76, %rcx
rep movsw
nop
nop
xor $23328, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rdi

// Faulty Load
lea addresses_WC+0x19424, %rdi
nop
nop
xor %r8, %r8
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'44': 13856, '45': 5701, '49': 2269, '00': 3}
44 44 44 45 45 44 44 45 44 44 44 45 49 44 44 45 49 44 44 45 44 44 45 45 44 44 45 44 44 44 45 44 44 45 44 44 45 44 44 44 45 44 44 44 45 44 44 45 49 44 44 49 44 44 44 45 45 44 44 49 45 44 44 49 44 44 44 45 44 44 49 45 44 44 45 45 44 44 45 44 44 44 45 44 45 45 44 44 44 44 44 44 49 45 44 44 49 45 49 44 45 44 49 44 44 44 45 44 45 45 44 44 44 45 45 44 44 45 45 44 44 44 45 44 44 49 44 44 45 44 44 44 45 44 44 45 44 44 44 45 45 44 44 45 45 44 44 49 45 44 44 45 44 44 44 44 45 44 44 44 49 44 44 49 45 44 44 44 49 44 44 44 49 44 44 44 45 44 44 44 44 49 44 44 44 49 49 44 44 45 44 44 44 45 44 44 44 45 45 44 49 44 44 44 45 45 44 44 44 45 49 44 44 44 49 44 44 44 45 44 44 44 45 44 44 45 44 44 45 44 44 44 49 44 44 44 45 44 44 44 45 44 44 45 49 44 44 45 44 44 44 45 45 44 44 49 45 44 44 45 44 45 45 45 44 44 49 44 45 45 44 44 45 49 44 44 44 49 44 44 44 44 45 45 44 44 44 45 45 44 44 45 44 44 44 45 45 44 44 45 44 44 44 49 49 44 44 45 45 44 44 44 49 44 44 44 44 45 45 44 44 49 44 44 44 45 44 44 44 45 44 44 45 45 44 44 44 49 44 44 44 49 44 44 44 45 44 44 44 49 44 44 45 45 44 44 44 45 44 44 44 45 44 44 45 45 44 44 45 44 44 45 45 44 44 44 45 44 44 44 49 44 44 44 45 44 44 44 49 45 44 44 45 44 44 45 45 44 44 45 44 49 49 44 44 49 44 44 44 49 44 44 49 45 44 44 45 44 44 45 44 44 44 49 44 44 44 45 44 44 44 44 49 44 44 44 45 44 44 44 45 49 44 44 45 45 44 44 45 44 44 45 45 44 44 45 44 44 44 49 49 44 45 45 44 44 45 44 44 44 44 49 44 44 44 45 45 44 44 45 44 44 44 45 45 44 44 45 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 49 44 44 45 49 44 44 44 45 44 44 44 49 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 49 45 44 44 45 45 44 44 44 49 44 44 44 45 44 44 44 44 45 44 44 44 45 44 44 44 45 45 44 44 45 44 44 44 49 44 44 45 44 44 44 45 45 44 44 49 44 44 44 45 44 44 44 45 45 49 44 44 45 45 45 44 44 44 45 44 49 45 45 44 44 44 44 45 44 44 44 45 44 44 45 45 44 44 44 45 44 44 44 49 44 44 45 45 44 44 45 49 44 44 45 49 44 44 49 44 44 44 45 45 45 44 44 45 44 49 49 44 45 45 44 44 45 49 44 44 44 49 44 44 44 44 44 45 45 44 44 44 49 44 44 49 49 45 44 44 45 45 44 44 45 45 44 44 44 49 44 44 45 45 44 44 44 45 44 44 44 49 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 45 45 44 44 44 44 49 45 44 44 44 44 45 44 44 49 45 44 44 45 45 44 44 45 49 44 49 44 44 45 44 44 44 45 45 44 44 45 45 44 44 45 45 44 44 45 44 44 44 45 49 44 44 45 44 44 44 49 44 44 45 49 44 49 45 44 44 44 49 44 44 44 49 44 44 45 44 44 45 45 44 44 44 45 45 44 44 45 44 44 45 49 44 44 45 44 44 44 49 49 44 44 45 49 44 44 45 44 44 45 44 44 44 45 45 44 44 45 44 44 44 45 49 44 44 45 44 44 44 45 44 44 45 45 44 44 44 44 44 44 44 45 49 44 44 45 44 44 44 45 45 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 45 44 44 45 45 44 44 44 45 44 44 44 49 45 44 44 49 44 44 44 45 45 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 45 45 44 44 49 45 44 44 44 49 44 44 44 45 44 44 49 44 44 44 45 44 44 44 45 44 44 49 44 44 45 49 44 44 44 49 44 44 44 45 44 44 49 49 44 44 49 44 44 44 45 45 44 44 45 49 44 44 45 44 44 45 45 44 44 45 44 44 44 45
*/
