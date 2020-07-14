.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19562, %rsi
lea addresses_WC_ht+0x6d42, %rdi
nop
nop
nop
add $28360, %r12
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x5ee2, %rsi
lea addresses_WC_ht+0x18b82, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r14, %r14
mov $43, %rcx
rep movsw
nop
nop
cmp $26744, %r12
lea addresses_UC_ht+0xb282, %rax
nop
nop
nop
and %rbp, %rbp
movl $0x61626364, (%rax)
nop
nop
nop
add $14378, %rcx
lea addresses_D_ht+0x10be2, %rsi
lea addresses_WT_ht+0x102e2, %rdi
nop
nop
add $46969, %rax
mov $37, %rcx
rep movsb
dec %r12
lea addresses_A_ht+0x12912, %rdi
nop
nop
nop
nop
nop
and $59953, %rcx
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
nop
xor $30304, %r12
lea addresses_A_ht+0x12fa2, %rsi
lea addresses_D_ht+0xed42, %rdi
clflush (%rdi)
nop
nop
nop
add %r15, %r15
mov $81, %rcx
rep movsb
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_PSE+0x3026, %r10
nop
nop
nop
dec %rax
mov (%r10), %edx
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x1a22, %rdx
nop
nop
nop
mfence
movw $0x5152, (%rdx)
dec %rcx

// Store
lea addresses_RW+0x163e2, %rbx
nop
nop
nop
nop
nop
xor $30201, %rax
movb $0x51, (%rbx)
cmp %r14, %r14

// Load
lea addresses_RW+0x2444, %rbx
nop
nop
nop
sub %rcx, %rcx
mov (%rbx), %rdx
cmp $36605, %rbp

// Faulty Load
lea addresses_WC+0xe2e2, %rbp
nop
cmp $64381, %r14
mov (%rbp), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'00': 6}
00 00 00 00 00 00
*/
