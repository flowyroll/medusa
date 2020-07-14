.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17585, %r15
nop
nop
nop
nop
lfence
movb $0x61, (%r15)
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x14cf1, %rcx
cmp $10208, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x4542, %r10
nop
nop
nop
nop
add $55583, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x965b, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rbx), %r12
nop
xor $6991, %r12
lea addresses_D_ht+0x50fb, %rdi
cmp $53437, %r10
movb (%rdi), %cl
nop
nop
nop
add $39746, %rcx
lea addresses_A_ht+0xda5b, %rsi
lea addresses_D_ht+0x1a51f, %rdi
nop
add %r9, %r9
mov $41, %rcx
rep movsw
nop
add %r10, %r10
lea addresses_WT_ht+0x1dd5b, %rsi
lea addresses_WC_ht+0x625b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $28, %rcx
rep movsb
nop
nop
xor $56602, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Load
lea addresses_WT+0x3edb, %r9
nop
nop
nop
xor %r8, %r8
mov (%r9), %r12
cmp $15083, %r12

// Store
lea addresses_UC+0x15c5b, %r12
cmp %rsi, %rsi
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
add $12183, %rax

// Store
lea addresses_D+0x12ff7, %rax
nop
nop
nop
nop
add $7709, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
add %r12, %r12

// Load
lea addresses_A+0x1aa5b, %r9
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r9), %r12
nop
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_A+0x1aa5b, %r9
nop
nop
sub $16716, %r12
movups (%r9), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
inc %r10

// Store
mov $0xa3b, %r12
nop
nop
dec %r8
movl $0x51525354, (%r12)
nop
cmp $52493, %r12

// Faulty Load
lea addresses_A+0x1aa5b, %rax
and $54518, %r12
mov (%rax), %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'35': 203}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
