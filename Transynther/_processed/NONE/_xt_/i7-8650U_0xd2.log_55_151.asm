.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x67db, %r15
clflush (%r15)
xor %rsi, %rsi
mov (%r15), %dx
nop
cmp $43548, %rax
lea addresses_UC_ht+0x117c7, %rsi
lea addresses_D_ht+0x6047, %rdi
nop
nop
dec %rbx
mov $70, %rcx
rep movsl
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0x133c7, %rdx
nop
nop
nop
sub $31375, %rax
movl $0x61626364, (%rdx)
nop
add %rdx, %rdx
lea addresses_WC_ht+0x1227, %rsi
xor %rax, %rax
mov (%rsi), %bx
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x178c7, %rdx
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0xb3c7, %rdi
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
and $61284, %rcx
lea addresses_normal_ht+0x19d47, %rsi
lea addresses_normal_ht+0x2fc7, %rdi
cmp %r13, %r13
mov $38, %rcx
rep movsq
nop
nop
cmp $5745, %rdi
lea addresses_A_ht+0x14bc7, %rsi
lea addresses_UC_ht+0x33b, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $28, %rcx
rep movsl
nop
nop
nop
add $29377, %rdi
lea addresses_A_ht+0x1d7c7, %rsi
lea addresses_WT_ht+0x1b607, %rdi
nop
nop
nop
nop
cmp $20661, %r13
mov $83, %rcx
rep movsb
nop
nop
sub $13504, %rdx
lea addresses_UC_ht+0x3563, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov (%rdi), %r15w
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Load
lea addresses_WT+0xe3c7, %r9
nop
nop
nop
xor %rbx, %rbx
movb (%r9), %r14b
nop
nop
cmp $25564, %rax

// Faulty Load
lea addresses_D+0x4bc7, %rsi
nop
inc %r10
movb (%rsi), %al
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'36': 55}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
