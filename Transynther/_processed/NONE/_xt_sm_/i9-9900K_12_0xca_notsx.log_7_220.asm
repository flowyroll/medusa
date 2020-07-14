.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xfb74, %rcx
cmp $46199, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rcx)
xor %r12, %r12
lea addresses_UC_ht+0x13ae2, %r13
nop
sub %r12, %r12
movw $0x6162, (%r13)
nop
nop
nop
nop
add $6724, %rbp
lea addresses_UC_ht+0x6522, %rsi
lea addresses_D_ht+0x11ef2, %rdi
cmp %rax, %rax
mov $30, %rcx
rep movsw
and %rbp, %rbp
lea addresses_WC_ht+0x21f2, %r12
sub $50368, %rbp
mov (%r12), %rdi
nop
xor $53165, %r12
lea addresses_WC_ht+0xaee2, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
xor %rdi, %rdi
lea addresses_A_ht+0xace2, %r13
sub $4457, %rbp
mov (%r13), %cx
and %r10, %r10
lea addresses_WT_ht+0x162c2, %rsi
lea addresses_normal_ht+0xfdc2, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r13, %r13
mov $113, %rcx
rep movsb
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0xe2e2, %rsi
lea addresses_D_ht+0xd2e2, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $35, %rcx
rep movsb
nop
nop
xor $35094, %r13
lea addresses_UC_ht+0x17262, %r13
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r13)
nop
sub $27461, %r10
lea addresses_UC_ht+0x15656, %rsi
lea addresses_UC_ht+0x96e2, %rdi
nop
nop
nop
inc %rbp
mov $65, %rcx
rep movsq
nop
nop
nop
nop
cmp $22827, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_RW+0xd71e, %rax
nop
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovaps %ymm6, (%rax)
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_A+0x4ee2, %r8
clflush (%r8)
nop
cmp $13495, %r9
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
nop
nop
and %r10, %r10

// Load
lea addresses_A+0x4ee2, %r10
nop
inc %r9
mov (%r10), %r8d
nop
nop
nop
nop
nop
xor $18938, %r9

// Faulty Load
lea addresses_A+0x4ee2, %rbx
nop
nop
nop
xor %r14, %r14
movb (%rbx), %al
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'58': 7}
58 58 58 58 58 58 58
*/
