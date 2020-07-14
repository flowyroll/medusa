.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x19bc6, %rcx
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x249e, %rsi
lea addresses_normal_ht+0x5ee, %rdi
nop
nop
nop
nop
cmp $55560, %rax
mov $34, %rcx
rep movsq
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xf49e, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $27990, %rbx
movw $0x6162, (%rsi)
nop
nop
inc %rdx
lea addresses_UC_ht+0x6b4e, %rsi
lea addresses_normal_ht+0x50b1, %rdi
nop
nop
sub %rax, %rax
mov $36, %rcx
rep movsl
nop
nop
nop
cmp $57316, %rdx
lea addresses_A_ht+0x219e, %rdx
nop
nop
nop
and $6668, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm3, (%rdx)
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xc9e, %rsi
nop
lfence
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x1715e, %rsi
nop
sub $45079, %rcx
mov (%rsi), %di
nop
nop
nop
nop
add $14528, %rcx
lea addresses_UC_ht+0x5e9e, %rsi
lea addresses_WC_ht+0x1121e, %rdi
nop
nop
nop
xor $15951, %r14
mov $39, %rcx
rep movsb
nop
nop
cmp $13350, %rdx
lea addresses_D_ht+0xe6ba, %rsi
lea addresses_A_ht+0x18656, %rdi
nop
nop
nop
nop
dec %r12
mov $91, %rcx
rep movsw
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x1887e, %rcx
nop
nop
add $49663, %rax
movb (%rcx), %dl
add $23537, %rax
lea addresses_normal_ht+0xf85e, %rsi
lea addresses_UC_ht+0x13896, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and $9322, %rbx
mov $95, %rcx
rep movsq
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x1196e, %rax
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_RW+0x749e, %rcx
clflush (%rcx)
and %rdx, %rdx
mov (%rcx), %ebx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'32': 498}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
