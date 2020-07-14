.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x13414, %rsi
lea addresses_WT_ht+0x15584, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x5e04, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x1a08d, %rbp
nop
nop
cmp $47162, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
dec %r15
lea addresses_UC_ht+0xb814, %rsi
lea addresses_WC_ht+0x17314, %rdi
nop
nop
lfence
mov $89, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $55012, %r13
lea addresses_WT_ht+0xc4b4, %rsi
lea addresses_A_ht+0xd1cc, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $54092, %r9
mov $28, %rcx
rep movsw
nop
nop
nop
nop
add $15599, %r15
lea addresses_WC_ht+0xf9f4, %rsi
lea addresses_WC_ht+0x1d014, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r10, %r10
mov $14, %rcx
rep movsq
add %r9, %r9
lea addresses_normal_ht+0x11b04, %rsi
lea addresses_UC_ht+0x1ed24, %rdi
nop
nop
nop
nop
nop
sub $53526, %r15
mov $80, %rcx
rep movsb
nop
nop
xor $53014, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0x1d814, %r9
sub %rbx, %rbx
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_RW+0x16cb4, %rsi
nop
nop
lfence
movw $0x5152, (%rsi)
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_UC+0x14c14, %r9
nop
nop
nop
and $23462, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
inc %r15

// Store
lea addresses_D+0x14, %rbx
nop
nop
nop
nop
nop
cmp $49500, %r8
movl $0x51525354, (%rbx)
nop
nop
nop
nop
xor %r8, %r8

// Load
lea addresses_A+0x1f014, %r9
and $63788, %r8
mov (%r9), %r13w
cmp $22051, %rbx

// Store
lea addresses_UC+0x1ecd8, %rcx
sub $58249, %rsi
movw $0x5152, (%rcx)
nop
nop
sub $37977, %r8

// Faulty Load
lea addresses_A+0x1f014, %r15
nop
nop
nop
nop
nop
and %r13, %r13
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
