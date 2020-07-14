.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x744a, %rcx
nop
nop
nop
nop
dec %rdx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x1669a, %rdi
nop
nop
nop
nop
cmp $4996, %r10
movw $0x6162, (%rdi)
nop
nop
sub $34872, %rdx
lea addresses_normal_ht+0x92, %rax
nop
nop
mfence
movb (%rax), %r10b
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x18f26, %rdx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
nop
nop
add $20775, %r13
lea addresses_normal_ht+0x12a2a, %rdi
nop
nop
sub $5361, %r13
movb (%rdi), %r10b
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x1091a, %r9
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
xor $33712, %r10
lea addresses_A_ht+0x13a9a, %r9
nop
nop
sub %r10, %r10
movw $0x6162, (%r9)
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x37ee, %rsi
lea addresses_WT_ht+0x1771a, %rdi
dec %r10
mov $73, %rcx
rep movsq
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Load
lea addresses_US+0x47fa, %r8
nop
nop
nop
xor %r9, %r9
vmovaps (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
xor $23558, %r10

// Load
lea addresses_normal+0x269a, %rcx
nop
nop
nop
cmp $43309, %rax
mov (%rcx), %ebp
xor %rbp, %rbp

// Store
lea addresses_US+0x1c812, %rcx
nop
nop
nop
add $57397, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
cmp $45857, %r9

// Store
lea addresses_US+0xb706, %rax
nop
nop
nop
nop
nop
xor $1865, %rbp
movb $0x51, (%rax)
nop
sub %r10, %r10

// Faulty Load
lea addresses_A+0x869a, %r9
clflush (%r9)
nop
nop
cmp %r10, %r10
movb (%r9), %r8b
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_US', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 10}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_US', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'00': 1}
00
*/
