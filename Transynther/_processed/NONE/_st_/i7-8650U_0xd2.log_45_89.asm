.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18066, %r11
nop
nop
xor %rbx, %rbx
mov (%r11), %r9d
sub %rbx, %rbx
lea addresses_normal_ht+0x1d06, %r9
nop
inc %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r9)
nop
nop
dec %rax
lea addresses_WT_ht+0x1b126, %rsi
lea addresses_normal_ht+0xda66, %rdi
clflush (%rdi)
nop
nop
dec %rax
mov $111, %rcx
rep movsw
nop
nop
nop
nop
and $17598, %rbx
lea addresses_WC_ht+0x4666, %rbx
nop
nop
nop
sub $39515, %r11
movw $0x6162, (%rbx)
dec %rcx
lea addresses_UC_ht+0x1be66, %rsi
lea addresses_WC_ht+0x4e66, %rdi
nop
sub $24451, %rax
mov $44, %rcx
rep movsq
add %r9, %r9
lea addresses_normal_ht+0xdf45, %rbx
nop
add $33264, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x716e, %rdi
nop
xor $1935, %r9
movl $0x61626364, (%rdi)
nop
nop
sub $29140, %r9
lea addresses_normal_ht+0x109c6, %rbp
nop
nop
nop
nop
add %rbx, %rbx
movw $0x6162, (%rbp)
nop
nop
cmp $35379, %r9
lea addresses_WT_ht+0x6ee6, %rsi
lea addresses_normal_ht+0x9e66, %rdi
nop
and %rbp, %rbp
mov $59, %rcx
rep movsw
and %rcx, %rcx
lea addresses_D_ht+0x83e6, %rsi
nop
nop
nop
and $37396, %r11
movb (%rsi), %cl
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_US+0xde66, %r10
nop
nop
and $28889, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
add %rax, %rax

// Store
lea addresses_D+0x8d56, %rax
nop
sub %r14, %r14
movw $0x5152, (%rax)
xor %rdx, %rdx

// Store
lea addresses_A+0x15266, %rdi
add $52762, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
cmp %r10, %r10

// Load
lea addresses_WC+0x1fe66, %r12
add %r14, %r14
mov (%r12), %rax
nop
nop
and $26489, %rax

// Faulty Load
lea addresses_WC+0x1fe66, %rdx
nop
nop
nop
inc %rdi
mov (%rdx), %ax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'58': 45}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
