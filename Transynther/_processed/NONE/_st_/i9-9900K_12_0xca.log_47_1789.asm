.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1a50e, %rbx
dec %rax
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
add $43387, %rbp
lea addresses_D_ht+0x1b83b, %rbx
nop
nop
nop
nop
xor $33546, %rax
mov (%rbx), %r12
nop
add $30757, %r13
lea addresses_UC_ht+0x1d4f8, %rbp
xor %rdx, %rdx
movb (%rbp), %r13b
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x162a0, %r13
add $814, %rdx
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0xdec7, %rsi
lea addresses_UC_ht+0xc520, %rdi
nop
nop
nop
nop
nop
and $10863, %r12
mov $56, %rcx
rep movsq
nop
nop
and %rax, %rax
lea addresses_WT_ht+0xeca0, %rsi
lea addresses_D_ht+0xf641, %rdi
dec %r12
mov $22, %rcx
rep movsw
add $42865, %rbp
lea addresses_A_ht+0xc5a0, %rsi
lea addresses_UC_ht+0x10fa0, %rdi
cmp %rdx, %rdx
mov $70, %rcx
rep movsw
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x11ba0, %rax
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rax), %r13w
nop
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x423c, %rsi
lea addresses_UC_ht+0xbd0f, %rdi
clflush (%rdi)
nop
nop
dec %rax
mov $120, %rcx
rep movsl
nop
nop
add $22763, %rdi
lea addresses_D_ht+0x12020, %rsi
xor %rbp, %rbp
mov (%rsi), %r13w
nop
xor $14710, %rbp
lea addresses_D_ht+0x199a0, %rsi
lea addresses_normal_ht+0xf480, %rdi
add %rax, %rax
mov $82, %rcx
rep movsw
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0xdc20, %rcx
clflush (%rcx)
sub $37840, %r13
movw $0x6162, (%rcx)
nop
add $43840, %rdx
lea addresses_A_ht+0x1ac20, %rcx
clflush (%rcx)
xor $18489, %rbx
mov (%rcx), %si
nop
nop
nop
nop
nop
add $8004, %rbp
lea addresses_UC_ht+0xb9a0, %rsi
nop
and %rbp, %rbp
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x17da0, %rsi
lea addresses_WT+0x41f4, %rdi
nop
nop
xor $29658, %r14
mov $63, %rcx
rep movsb
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x16020, %rsi
add $40236, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
and $61526, %r15

// Store
lea addresses_WC+0x1cda0, %r14
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r14)
add %r15, %r15

// Load
lea addresses_UC+0x25a0, %r14
nop
nop
xor $42268, %r9
mov (%r14), %r15d
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_A+0x17da0, %rsi
nop
sub %r15, %r15
movb (%rsi), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'58': 47}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
