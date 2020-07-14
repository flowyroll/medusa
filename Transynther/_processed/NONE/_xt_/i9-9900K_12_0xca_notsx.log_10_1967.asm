.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6e46, %rsi
nop
nop
cmp $28604, %r15
movl $0x61626364, (%rsi)
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x2ae5, %rsi
lea addresses_WC_ht+0x8065, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $57, %rcx
rep movsw
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1bae5, %rcx
nop
nop
nop
nop
add $37889, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp $64762, %r8
lea addresses_WT_ht+0x16065, %rsi
lea addresses_A_ht+0xedf5, %rdi
clflush (%rdi)
nop
nop
and %r10, %r10
mov $2, %rcx
rep movsq
xor $19215, %r8
lea addresses_A_ht+0xe265, %rcx
nop
nop
nop
nop
nop
sub $14118, %r8
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x63e5, %rdi
clflush (%rdi)
nop
nop
nop
add %r15, %r15
movl $0x61626364, (%rdi)
nop
nop
nop
xor $116, %rdi
lea addresses_A_ht+0x1b5, %r8
nop
nop
nop
cmp $10608, %rcx
movl $0x61626364, (%r8)
nop
nop
cmp $19213, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_WC+0xaa65, %r15
nop
nop
add %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
add $40886, %r15

// Store
lea addresses_PSE+0x192ab, %r12
nop
dec %rdi
movw $0x5152, (%r12)
cmp $31932, %rdi

// Store
mov $0x8964c0000000665, %r12
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x5152, (%r12)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x8e65, %rsi
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
xor $23981, %r9

// Faulty Load
lea addresses_D+0x183e5, %rdi
add $10198, %rbp
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'36': 10}
36 36 36 36 36 36 36 36 36 36
*/
