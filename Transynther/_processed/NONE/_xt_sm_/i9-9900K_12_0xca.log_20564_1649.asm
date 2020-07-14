.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd369, %rsi
lea addresses_WT_ht+0x6969, %rdi
cmp %r8, %r8
mov $112, %rcx
rep movsl
nop
nop
and %r8, %r8
lea addresses_D_ht+0xeb69, %r9
add %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
dec %r9
lea addresses_D_ht+0x18439, %rdi
nop
nop
cmp $4195, %r12
movl $0x61626364, (%rdi)
cmp $44991, %r8
lea addresses_D_ht+0x2871, %r8
cmp $9494, %r12
mov (%r8), %rdi
nop
nop
nop
dec %r9
lea addresses_WT_ht+0xf8ed, %rsi
lea addresses_WT_ht+0x9229, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $52, %rcx
rep movsq
nop
xor %r12, %r12
lea addresses_UC_ht+0xad1, %rsi
lea addresses_A_ht+0xc8e9, %rdi
nop
nop
nop
nop
cmp $64275, %r15
mov $115, %rcx
rep movsb
xor $65280, %r14
lea addresses_UC_ht+0x16e77, %rsi
lea addresses_A_ht+0xce79, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r15, %r15
mov $39, %rcx
rep movsw
cmp $27454, %rdi
lea addresses_UC_ht+0x4de9, %r14
nop
cmp %rdi, %rdi
movb (%r14), %r12b
nop
nop
nop
nop
nop
and $22435, %rcx
lea addresses_A_ht+0x79e9, %rsi
lea addresses_normal_ht+0xeab1, %rdi
nop
and %r8, %r8
mov $28, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x911b, %r8
nop
nop
nop
nop
and $42783, %rdi
movw $0x6162, (%r8)
nop
nop
nop
mfence
lea addresses_normal_ht+0x1e4e9, %rsi
lea addresses_normal_ht+0x65e9, %rdi
nop
dec %r14
mov $51, %rcx
rep movsl
cmp $26600, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x301, %rdi
nop
nop
nop
nop
xor $6950, %rax
movl $0x51525354, (%rdi)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_WT+0x1f1a9, %r9
nop
nop
nop
add $61754, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WT+0x8025, %r12
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movntdq %xmm1, (%r12)
nop
nop
nop
nop
add %rdi, %rdi

// Store
mov $0xde9, %rcx
nop
nop
and $64856, %r9
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp $26060, %rdx

// Store
lea addresses_US+0x18a15, %rcx
sub $29499, %rbx
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $24108, %rdi

// Store
lea addresses_WC+0x88e9, %rbx
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_WC+0x88e9, %r12
nop
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'58': 20564}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
