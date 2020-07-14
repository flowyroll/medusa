.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x107e, %rsi
lea addresses_WT_ht+0x129fe, %rdi
nop
nop
sub $20079, %r15
mov $29, %rcx
rep movsb
nop
nop
nop
nop
nop
and $53080, %rdi
lea addresses_A_ht+0x1effe, %rdi
nop
nop
nop
nop
and $27509, %r8
mov (%rdi), %cx
nop
and $9296, %r8
lea addresses_WT_ht+0x6bf2, %r8
nop
xor %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
cmp $1040, %rdi
lea addresses_WC_ht+0x15a, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $37960, %r8
mov $0x6162636465666768, %r12
movq %r12, (%r15)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x3fe, %rsi
lea addresses_D_ht+0x906e, %rdi
nop
add %r10, %r10
mov $114, %rcx
rep movsb
nop
and $7495, %r15
lea addresses_WC_ht+0x144fe, %rsi
lea addresses_WC_ht+0x15a7e, %rdi
nop
nop
add $28456, %r13
mov $72, %rcx
rep movsb
nop
nop
dec %r8
lea addresses_normal_ht+0x14be, %rsi
lea addresses_UC_ht+0xc8ae, %rdi
sub $32033, %r13
mov $84, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x4a7e, %r12
nop
sub %r8, %r8
mov (%r12), %r15
nop
nop
nop
nop
and $32836, %r10
lea addresses_UC_ht+0xb542, %r12
clflush (%r12)
nop
nop
add $599, %r8
mov (%r12), %r13d
nop
nop
nop
nop
and $30591, %r13
lea addresses_D_ht+0x1497e, %rsi
lea addresses_WC_ht+0x2b7e, %rdi
nop
xor $39376, %r12
mov $4, %rcx
rep movsq
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xe24a, %rsi
nop
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
nop
dec %r8

// REPMOV
mov $0xe30, %rsi
lea addresses_normal+0xb57e, %rdi
nop
nop
sub $64032, %rbx
mov $96, %rcx
rep movsb
sub $60397, %r13

// Store
mov $0x7ae, %rdi
nop
cmp $61413, %rbx
movl $0x51525354, (%rdi)
nop
nop
sub %r10, %r10

// Store
lea addresses_A+0xec7e, %rsi
nop
nop
and $20489, %rcx
movw $0x5152, (%rsi)
nop
nop
and $44611, %r10

// Load
mov $0x6bc4ff0000000374, %r13
xor %r10, %r10
mov (%r13), %esi
sub $10496, %rcx

// Store
mov $0x16e, %rax
nop
nop
nop
cmp $16888, %r10
movb $0x51, (%rax)
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_A+0x1957e, %r13
nop
nop
nop
sub $26627, %r8
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'60': 1, '00': 2931, '44': 438}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 44 00 00 44 00 44 44 44 00 00 00 00 44 44 00 44 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 44 44 00 00 00 00 44 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 44 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00
*/
