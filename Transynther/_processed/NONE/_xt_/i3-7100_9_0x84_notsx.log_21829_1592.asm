.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b9cc, %rbp
nop
nop
nop
nop
dec %rdi
mov (%rbp), %rax
nop
add %r13, %r13
lea addresses_WC_ht+0x1994c, %rsi
lea addresses_UC_ht+0x103f4, %rdi
nop
nop
add %rbp, %rbp
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x738c, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r10, %r10
movl $0x61626364, (%rsi)
nop
nop
nop
nop
add $26670, %rcx
lea addresses_WT_ht+0x181cc, %r10
sub %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r10)
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x792c, %rsi
nop
cmp $38153, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1aecc, %rsi
lea addresses_WT_ht+0xeb94, %rdi
and $25998, %rax
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x1e4cc, %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%rbp)
nop
dec %rsi
lea addresses_D_ht+0x19a8c, %rbp
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%rbp), %esi
nop
nop
nop
sub $39888, %rsi
lea addresses_WT_ht+0x12e2c, %rsi
lea addresses_normal_ht+0x1554c, %rdi
nop
xor %rax, %rax
mov $29, %rcx
rep movsw
add $22027, %rax
lea addresses_D_ht+0xe826, %rsi
lea addresses_WT_ht+0xb124, %rdi
nop
nop
and %rbp, %rbp
mov $66, %rcx
rep movsb
nop
inc %rbp
lea addresses_D_ht+0xe842, %rdi
clflush (%rdi)
nop
nop
nop
and $8159, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1db14, %rdi
nop
nop
cmp $13158, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x160b4, %rsi
lea addresses_normal_ht+0xad4c, %rdi
nop
nop
dec %rbx
mov $90, %rcx
rep movsq
cmp $60569, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1519a, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $23682, %r15
movw $0x5152, (%r10)
nop
nop
nop
add $17785, %rax

// REPMOV
lea addresses_PSE+0x13ccc, %rsi
lea addresses_D+0x1c4dc, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $29, %rcx
rep movsb
xor %r14, %r14

// Load
mov $0x648e180000000ccc, %r14
nop
xor %r15, %r15
movups (%r14), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
cmp $7899, %rax

// Faulty Load
lea addresses_PSE+0x13ccc, %r10
nop
nop
sub %rdx, %rdx
mov (%r10), %ax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
