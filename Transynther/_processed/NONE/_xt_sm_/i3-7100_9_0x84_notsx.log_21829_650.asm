.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8718, %rsi
lea addresses_normal_ht+0x17d00, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $111, %rcx
rep movsb
nop
nop
nop
nop
and $33350, %r15
lea addresses_WC_ht+0x4c8, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %rbp, %rbp
movb (%rbx), %r15b
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xd0a8, %rbp
nop
nop
nop
nop
nop
and %rdi, %rdi
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
sub $31871, %rbx
lea addresses_UC_ht+0xab18, %rbx
clflush (%rbx)
cmp $1862, %rcx
mov (%rbx), %rdi
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x133b8, %rsi
lea addresses_WT_ht+0x1e3b8, %rdi
add $3006, %r12
mov $23, %rcx
rep movsl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xc0d8, %rsi
lea addresses_A_ht+0x142f8, %rdi
nop
xor %rbx, %rbx
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
and $23526, %rsi
lea addresses_normal_ht+0x4bb8, %r12
nop
nop
nop
nop
nop
sub $17241, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
xor %rcx, %rcx
lea addresses_D_ht+0x168bc, %r15
nop
nop
cmp $11923, %r10
mov (%r15), %rdi
nop
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x9b8, %rsi
lea addresses_WC_ht+0x113b8, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $115, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x4278, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rbp)
nop
nop
cmp $40420, %r10
lea addresses_WT_ht+0xcbb8, %rcx
clflush (%rcx)
cmp %rdi, %rdi
mov (%rcx), %ebx
nop
and $53368, %rdi
lea addresses_D_ht+0x1ae98, %rbp
and $3090, %rdi
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
nop
nop
and $52291, %r12
lea addresses_UC_ht+0x18fb8, %rbp
nop
nop
nop
nop
nop
and %r12, %r12
movb $0x61, (%rbp)
nop
nop
nop
sub $30362, %rsi
lea addresses_A_ht+0x1fb8, %rsi
cmp %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
and $62725, %rbp
lea addresses_UC_ht+0x11fb8, %r15
sub $50701, %rcx
mov (%r15), %r12w
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x40c, %r14
nop
nop
and $25382, %rax
movl $0x51525354, (%r14)
nop
nop
nop
dec %rsi

// Load
mov $0x752c78000000004e, %rbp
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov (%rbp), %rdi
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_UC+0x15838, %r14
add %rcx, %rcx
movw $0x5152, (%r14)
nop
and $11764, %rbp

// Store
lea addresses_RW+0x71ee, %rbp
nop
nop
nop
nop
sub $47986, %rcx
movw $0x5152, (%rbp)
nop
nop
and $48569, %rbp

// Store
lea addresses_WC+0x127b8, %rsi
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rsi)
nop
sub %rbp, %rbp

// Store
lea addresses_PSE+0xafb8, %rax
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
xor $28493, %rdi

// Store
lea addresses_D+0xd418, %rbx
nop
nop
nop
nop
nop
and %r14, %r14
movb $0x51, (%rbx)
nop
nop
nop
sub $23136, %r14

// Faulty Load
lea addresses_PSE+0xafb8, %rcx
nop
add $38441, %rax
mov (%rcx), %bp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
