.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x113e3, %rax
nop
cmp $23309, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %rax
movaps %xmm5, (%rax)
nop
dec %r8
lea addresses_D_ht+0x3dbf, %rsi
lea addresses_UC_ht+0x28f, %rdi
nop
nop
nop
nop
nop
lfence
mov $117, %rcx
rep movsw
nop
nop
nop
nop
add $54597, %rdi
lea addresses_D_ht+0xe8bf, %rsi
lea addresses_D_ht+0x19167, %rdi
clflush (%rsi)
dec %rbp
mov $88, %rcx
rep movsl
nop
xor $36675, %r8
lea addresses_WT_ht+0x1b7bf, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rdi)
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x17cb5, %rdi
nop
sub $16895, %r8
movb (%rdi), %al
nop
nop
nop
nop
nop
and $6924, %r15
lea addresses_A_ht+0x3b45, %rsi
nop
nop
cmp %rbx, %rbx
movb (%rsi), %cl
sub $755, %rax
lea addresses_D_ht+0x1651f, %rsi
lea addresses_UC_ht+0x97ef, %rdi
nop
and %rbp, %rbp
mov $125, %rcx
rep movsq
nop
nop
nop
nop
nop
and $57330, %rbp
lea addresses_D_ht+0x93bf, %rbp
xor %rbx, %rbx
movl $0x61626364, (%rbp)
nop
nop
and $36802, %rsi
lea addresses_D_ht+0x14bd2, %rbx
nop
add %rbp, %rbp
movw $0x6162, (%rbx)
nop
nop
nop
add $28073, %rdi
lea addresses_A_ht+0x41a5, %rcx
nop
nop
nop
cmp %rbp, %rbp
movb $0x61, (%rcx)
nop
nop
nop
xor $39506, %rax
lea addresses_A_ht+0xb67f, %rax
nop
and %rbx, %rbx
movb $0x61, (%rax)
nop
dec %rcx
lea addresses_WT_ht+0xa9bf, %rax
nop
nop
nop
nop
nop
add $29070, %rbp
movl $0x61626364, (%rax)
nop
nop
nop
add $43696, %rsi
lea addresses_D_ht+0x3fbf, %rax
nop
inc %rdi
mov (%rax), %rsi
nop
nop
nop
nop
sub $49651, %rsi
lea addresses_UC_ht+0x1ef5e, %r8
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r8), %r15
and $37303, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
mov $0x490ba800000007bf, %rcx
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
sub $35107, %r10

// Store
lea addresses_US+0x140fb, %rbx
nop
nop
xor $30290, %r12
movw $0x5152, (%rbx)
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_normal+0x282f, %r12
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r12)
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x1375f, %r9
nop
nop
nop
inc %rbx
movl $0x51525354, (%r9)
nop
nop
nop
inc %r12

// Load
lea addresses_US+0x14a0f, %r10
nop
nop
nop
add %rsi, %rsi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %r9
nop
and %r12, %r12

// Store
lea addresses_RW+0xd57f, %rbp
nop
nop
sub $31377, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
cmp $49056, %r9

// Faulty Load
lea addresses_D+0x1cfbf, %r10
nop
nop
nop
nop
dec %rcx
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 5}
36 36 36 36 36
*/
