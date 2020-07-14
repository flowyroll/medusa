.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x194f7, %rsi
lea addresses_D_ht+0xe9bb, %rdi
add %r13, %r13
mov $122, %rcx
rep movsb
nop
dec %r10
lea addresses_WC_ht+0x7e37, %r9
nop
nop
nop
nop
and $3257, %r15
mov (%r9), %esi
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x19cf7, %rsi
lea addresses_normal_ht+0x1c4f7, %rdi
nop
inc %rax
mov $101, %rcx
rep movsl
nop
nop
nop
nop
cmp $15209, %rcx
lea addresses_WT_ht+0x1a2d7, %r9
nop
nop
nop
nop
cmp $29119, %rcx
mov (%r9), %r15w
nop
nop
nop
and $10253, %r10
lea addresses_A_ht+0x102ab, %r13
nop
sub %r15, %r15
movw $0x6162, (%r13)
nop
sub $33862, %r9
lea addresses_WT_ht+0xe323, %rdi
clflush (%rdi)
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
cmp $32639, %rsi
lea addresses_A_ht+0x9137, %r15
nop
nop
nop
nop
add $63088, %rax
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
sub $12185, %rsi
lea addresses_A_ht+0x18cd7, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x1026d, %r9
nop
sub $47729, %r10
movups (%r9), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x17ce7, %r13
nop
nop
nop
inc %rdi
movups (%r13), %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
xor $40024, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rdi
push %rdx

// Store
mov $0x4f7, %r8
nop
nop
nop
nop
xor $9259, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r8)
cmp $14848, %r12

// Faulty Load
lea addresses_normal+0x134f7, %rdx
nop
sub %rbp, %rbp
movaps (%rdx), %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'00': 2758, '58': 4792, '5f': 14279}
00 5f 5f 00 58 5f 5f 5f 5f 5f 5f 00 5f 5f 00 58 5f 5f 5f 5f 5f 5f 58 58 00 5f 5f 58 00 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 58 58 5f 00 5f 5f 5f 58 5f 5f 00 5f 58 58 00 00 5f 5f 5f 58 58 5f 5f 5f 5f 5f 58 00 5f 5f 5f 00 5f 58 5f 58 5f 00 00 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 00 58 5f 5f 5f 58 5f 58 00 5f 5f 58 00 5f 5f 00 5f 5f 5f 5f 00 5f 5f 58 58 5f 00 5f 58 5f 5f 5f 58 58 5f 58 5f 58 5f 58 58 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 00 58 00 5f 5f 5f 5f 5f 5f 58 58 58 5f 5f 5f 5f 5f 58 5f 5f 5f 58 58 5f 5f 00 5f 5f 58 00 5f 00 5f 5f 00 5f 00 5f 5f 00 58 5f 5f 5f 00 5f 5f 5f 5f 5f 58 5f 5f 5f 00 5f 5f 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 58 00 58 5f 5f 5f 5f 00 5f 5f 58 5f 5f 58 58 5f 58 5f 58 5f 00 5f 00 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 58 00 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 58 5f 5f 5f 5f 5f 58 5f 5f 00 58 5f 5f 5f 5f 5f 5f 5f 00 5f 58 5f 5f 5f 5f 00 5f 5f 58 58 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 00 5f 5f 5f 58 5f 00 5f 58 5f 58 58 5f 58 5f 5f 5f 5f 00 5f 58 58 58 00 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 00 00 5f 5f 5f 5f 5f 00 00 5f 58 5f 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 5f 58 00 5f 5f 58 58 5f 00 5f 00 58 58 58 58 5f 5f 5f 58 5f 5f 5f 00 58 58 5f 5f 5f 58 5f 58 5f 5f 00 5f 00 5f 58 5f 5f 5f 5f 58 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 58 5f 00 5f 00 5f 5f 5f 5f 5f 58 5f 00 00 5f 00 5f 58 58 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 5f 00 5f 5f 58 5f 5f 58 58 58 00 5f 5f 58 58 58 58 5f 00 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 58 58 5f 00 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 00 5f 5f 5f 58 5f 58 5f 5f 58 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 58 5f 00 58 00 5f 5f 5f 00 5f 58 00 58 5f 58 5f 5f 5f 58 5f 5f 00 5f 00 58 5f 5f 58 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 00 58 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 5f 00 58 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 58 5f 5f 5f 58 58 00 00 58 5f 00 00 5f 5f 00 5f 5f 58 5f 00 5f 00 5f 5f 00 00 5f 58 58 5f 58 00 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 00 5f 58 58 5f 5f 58 5f 5f 5f 58 5f 5f 58 00 00 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 00 58 00 58 00 00 00 5f 5f 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 00 5f 00 5f 00 5f 5f 5f 58 58 58 58 5f 58 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 5f 5f 58 58 58 5f 58 5f 5f 58 58 5f 5f 00 58 5f 5f 58 58 00 58 5f 5f 00 00 5f 5f 58 5f 5f 5f 00 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 00 58 5f 58 5f 58 5f 5f 58 58 5f 5f 5f 5f 00 00 5f 5f 5f 58 58 58 00 5f 00 5f 58 5f 5f 5f 00 5f 58 5f 00 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 58 5f 58 5f 5f 58 58 5f 00 5f 5f 58 5f 58 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 00 00 5f 58 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 58 5f 5f 58 5f 00 58 00 5f 5f 58 58 5f 5f 00 5f 00 5f 5f 5f 5f 5f 58 00 5f 5f 58 5f 5f 5f 5f 5f 58 00 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 58 00 00 5f 5f 5f
*/
