.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x17219, %r8
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
and $0xffffffffffffffc0, %r8
movaps %xmm1, (%r8)
nop
nop
add $38735, %r9
lea addresses_D_ht+0x99, %rsi
lea addresses_UC_ht+0xcfd9, %rdi
clflush (%rsi)
nop
sub %r9, %r9
mov $9, %rcx
rep movsb
nop
nop
sub $33653, %r9
lea addresses_normal_ht+0x1cc19, %rdx
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb (%rdx), %r9b
nop
nop
nop
xor $34125, %rbp
lea addresses_UC_ht+0x141d9, %r8
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r8)
xor $2927, %rdx
lea addresses_A_ht+0xff19, %rsi
nop
nop
nop
nop
nop
sub %r8, %r8
movb (%rsi), %r9b
and %rdx, %rdx
lea addresses_WT_ht+0x1c999, %rdx
nop
nop
nop
nop
sub $37569, %rdi
mov (%rdx), %si
nop
nop
nop
nop
nop
sub $56855, %rcx
lea addresses_UC_ht+0x1b319, %rbp
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rbp)
nop
nop
dec %rcx
lea addresses_WT_ht+0x7419, %rcx
nop
nop
xor $63847, %rsi
movb (%rcx), %dl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1a019, %rdx
nop
nop
nop
nop
nop
and $18141, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
add $47880, %rsi
lea addresses_WT_ht+0x14425, %r9
nop
and $28329, %r8
movw $0x6162, (%r9)
add %r9, %r9
lea addresses_WC_ht+0x4219, %rcx
nop
nop
nop
nop
nop
cmp $10449, %rdi
mov (%rcx), %r8d
nop
cmp $27041, %rbp
lea addresses_WT_ht+0x2c69, %rsi
lea addresses_A_ht+0x999, %rdi
clflush (%rsi)
add $53963, %r12
mov $3, %rcx
rep movsb
nop
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x14cb9, %r8
nop
nop
nop
nop
cmp $62110, %r12
movl $0x61626364, (%r8)
nop
nop
nop
xor $45975, %rbp
lea addresses_WC_ht+0x5369, %rsi
lea addresses_A_ht+0xc6a9, %rdi
nop
nop
nop
nop
dec %rbp
mov $12, %rcx
rep movsq
nop
nop
xor $3781, %r8
lea addresses_D_ht+0xf019, %r9
xor %rcx, %rcx
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x19819, %rdi
nop
nop
nop
nop
add $22835, %r10
movw $0x5152, (%rdi)
sub %r12, %r12

// Store
lea addresses_WT+0xefed, %r15
nop
nop
xor $5696, %r12
movb $0x51, (%r15)
nop
sub %r10, %r10

// REPMOV
lea addresses_PSE+0x12481, %rsi
lea addresses_UC+0x2419, %rdi
nop
nop
nop
nop
sub $11988, %rbx
mov $28, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $49405, %r15

// Store
lea addresses_WT+0xc2d9, %r12
nop
nop
nop
cmp $11, %rsi
movb $0x51, (%r12)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_RW+0x1a319, %rbx
nop
cmp %rcx, %rcx
movb $0x51, (%rbx)
add %rdi, %rdi

// Faulty Load
mov $0x6d5ec0000000419, %r15
nop
nop
nop
nop
cmp $14836, %rsi
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 21551, '33': 278}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00
*/
