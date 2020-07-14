.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x2120, %r9
nop
nop
nop
sub %rbx, %rbx
mov (%r9), %rdx
nop
nop
add %r10, %r10
lea addresses_D_ht+0x11634, %rsi
lea addresses_WC_ht+0x19324, %rdi
cmp $12616, %rax
mov $66, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x3c24, %rsi
lea addresses_A_ht+0x15ca4, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rax, %rax
mov $56, %rcx
rep movsw
nop
xor $61010, %rsi
lea addresses_UC_ht+0x5a4, %rdi
nop
nop
nop
nop
nop
cmp $35525, %rbx
mov (%rdi), %ecx
nop
nop
nop
lfence
lea addresses_A_ht+0x118a4, %rcx
nop
nop
cmp %rax, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1c874, %r9
nop
nop
nop
inc %rcx
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
cmp $22320, %rdx
lea addresses_normal_ht+0x16ca4, %rsi
lea addresses_UC_ht+0x723c, %rdi
sub $13811, %rax
mov $40, %rcx
rep movsq
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x156a4, %r14
nop
sub %rdx, %rdx
movl $0x51525354, (%r14)
nop
nop
xor $36435, %rdx

// Load
lea addresses_normal+0x1cd84, %rdi
dec %rbp
movb (%rdi), %r9b
nop
cmp $50450, %r9

// Store
lea addresses_UC+0xd38c, %rbp
nop
nop
nop
add $2879, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
cmp %rdi, %rdi

// Load
mov $0xca4, %rdx
nop
nop
nop
nop
dec %rsi
mov (%rdx), %r13d
nop
nop
nop
add $39741, %rdx

// Store
lea addresses_WT+0x158a4, %r14
nop
nop
nop
nop
sub $33890, %rbp
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
cmp $52414, %r9

// Store
lea addresses_PSE+0x160a4, %rdx
nop
nop
sub %rdi, %rdi
movb $0x51, (%rdx)
nop
nop
and $15039, %rdx

// Store
lea addresses_US+0x1cc34, %r14
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r14)
cmp %r13, %r13

// Store
lea addresses_UC+0x16b48, %r14
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovaps %ymm0, (%r14)
add %rbp, %rbp

// Faulty Load
lea addresses_US+0x114a4, %r9
dec %rdx
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'00': 58}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
