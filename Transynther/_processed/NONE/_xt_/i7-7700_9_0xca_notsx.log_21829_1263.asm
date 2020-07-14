.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16311, %rsi
lea addresses_WT_ht+0x1cbf1, %rdi
nop
nop
and $50305, %r15
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $39738, %rdi
lea addresses_UC_ht+0x17661, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r10, %r10
mov (%rdi), %r15d
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1bf11, %r13
nop
nop
mfence
mov (%r13), %rdi
nop
and %rsi, %rsi
lea addresses_UC_ht+0x9911, %rsi
lea addresses_UC_ht+0x1b1a3, %rdi
nop
and $15827, %r10
mov $65, %rcx
rep movsl
nop
nop
and $14796, %rsi
lea addresses_UC_ht+0x13bc1, %rax
sub %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
cmp $8289, %rcx
lea addresses_UC_ht+0x5976, %rsi
lea addresses_D_ht+0xdb11, %rdi
nop
cmp $28597, %r12
mov $33, %rcx
rep movsq
and %rax, %rax
lea addresses_UC_ht+0x1edab, %rcx
add $33431, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rcx)
and $14823, %rsi
lea addresses_WT_ht+0x19b11, %rsi
lea addresses_WC_ht+0x148f9, %rdi
xor $11668, %rax
mov $48, %rcx
rep movsq
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x162ad, %rsi
lea addresses_normal+0x2e11, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $71, %rcx
rep movsl
nop
nop
cmp $58690, %r11

// Store
lea addresses_A+0x9d11, %rdi
nop
dec %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdi)
nop
add %rdi, %rdi

// Store
mov $0x85b830000000dc7, %rdi
add $21776, %r11
movb $0x51, (%rdi)
inc %rcx

// Load
lea addresses_A+0xf591, %r9
nop
nop
sub %r10, %r10
movaps (%r9), %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x2ac8, %r10
clflush (%r10)
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r10)
nop
xor %rbx, %rbx

// Store
lea addresses_RW+0x176c1, %rdi
nop
nop
nop
nop
and $46144, %r11
movl $0x51525354, (%rdi)
nop
xor $40080, %rcx

// Load
lea addresses_RW+0x1d02f, %rbx
nop
nop
nop
nop
sub $37437, %rcx
mov (%rbx), %r9d
nop
nop
cmp $7323, %rsi

// Store
lea addresses_D+0x13311, %rdi
nop
nop
nop
xor %r9, %r9
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_RW+0x9451, %r9
clflush (%r9)
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r9)

// Exception!!!
nop
nop
nop
mov (0), %rcx
nop
nop
cmp $48662, %rbx

// Faulty Load
lea addresses_WT+0x18911, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
