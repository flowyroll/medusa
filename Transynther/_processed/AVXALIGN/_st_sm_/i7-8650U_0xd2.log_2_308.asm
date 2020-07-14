.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xdf6c, %r9
nop
nop
cmp $21125, %r10
movb (%r9), %r12b
sub %rbp, %rbp
lea addresses_WC_ht+0x196c, %rbx
and $34595, %r10
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
and $2738, %rbx
lea addresses_D_ht+0x1a56c, %r14
nop
nop
nop
nop
nop
cmp $19069, %rdx
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
cmp %r10, %r10
lea addresses_normal_ht+0x1a36c, %r10
nop
nop
and %rdx, %rdx
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
xor $13157, %rdx
lea addresses_WT_ht+0x1596c, %r14
nop
nop
nop
nop
nop
sub $16108, %rbx
mov (%r14), %r10
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xe30c, %rdx
nop
lfence
movl $0x61626364, (%rdx)
nop
nop
nop
and $53805, %r12
lea addresses_WT_ht+0x8c6c, %rsi
lea addresses_UC_ht+0x35ec, %rdi
nop
nop
nop
add $4773, %r10
mov $64, %rcx
rep movsb
nop
nop
xor $64874, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_A+0x7b6c, %rax
clflush (%rax)
cmp %rbp, %rbp
movw $0x5152, (%rax)
nop
nop
nop
cmp $12849, %rax

// Store
mov $0x7520110000000bec, %rax
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rax)
nop
nop
cmp %rbp, %rbp

// Store
mov $0x92c, %rdi
nop
nop
nop
nop
xor $61337, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovaps %ymm3, (%rdi)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_UC+0x19b6c, %rax
nop
nop
nop
and %r8, %r8
movw $0x5152, (%rax)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_US+0xec04, %rbp
nop
xor %r9, %r9
movl $0x51525354, (%rbp)
and $19293, %r9

// Load
lea addresses_D+0x15cc4, %r9
nop
sub %rdi, %rdi
movb (%r9), %bl
nop
nop
and %r8, %r8

// Store
lea addresses_RW+0x17e6c, %rax
nop
nop
nop
add $36631, %r8
movw $0x5152, (%rax)
nop
nop
inc %rbx

// Load
lea addresses_WC+0xac2c, %rdi
nop
inc %rsi
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
and %rdi, %rdi

// Store
lea addresses_A+0x1136c, %rbp
sub %rsi, %rsi
movw $0x5152, (%rbp)
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_A+0x7b6c, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and %rax, %rax
mov (%r8), %r9w
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'52': 2}
52 52
*/
