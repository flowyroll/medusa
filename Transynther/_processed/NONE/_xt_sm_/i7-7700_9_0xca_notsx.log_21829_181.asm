.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1423, %rbp
nop
sub %r9, %r9
mov (%rbp), %r12
nop
nop
nop
lfence
lea addresses_normal_ht+0xa7da, %rsi
lea addresses_normal_ht+0xa32a, %rdi
clflush (%rsi)
nop
xor %r11, %r11
mov $113, %rcx
rep movsw
nop
nop
nop
nop
add $28090, %rdi
lea addresses_A_ht+0x15fda, %rbp
sub $9582, %r12
movb (%rbp), %r11b
xor %rbx, %rbx
lea addresses_WT_ht+0x9fd4, %rsi
lea addresses_UC_ht+0x15fda, %rdi
nop
nop
nop
and $21212, %r12
mov $34, %rcx
rep movsl
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x163ec, %r9
add %rdi, %rdi
movb $0x61, (%r9)
nop
nop
nop
nop
add $33831, %rsi
lea addresses_A_ht+0x72da, %rsi
lea addresses_WC_ht+0x1afda, %rdi
clflush (%rdi)
nop
nop
nop
inc %r9
mov $23, %rcx
rep movsl
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x179ca, %rbx
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%rbx)
and %rbx, %rbx
lea addresses_normal_ht+0x173da, %rdi
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0xf09a, %rcx
nop
nop
nop
nop
nop
add $17384, %r9
mov (%rcx), %r11w
nop
xor %rbx, %rbx
lea addresses_normal_ht+0xefa4, %r11
cmp %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x133da, %rsi
lea addresses_A+0x132be, %rdi
nop
nop
nop
nop
lfence
mov $122, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WC+0x1e7da, %rbp
xor $48525, %r13
movw $0x5152, (%rbp)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_normal+0x429a, %rdi
nop
mfence
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
sub $47970, %r13

// Faulty Load
lea addresses_WC+0x1e7da, %rdi
clflush (%rdi)
nop
nop
xor $974, %rbp
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
