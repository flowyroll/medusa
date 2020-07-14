.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x516e, %rsi
nop
nop
nop
nop
nop
add %r14, %r14
mov (%rsi), %r10w
nop
cmp $36263, %r10
lea addresses_WC_ht+0xe95e, %rsi
lea addresses_A_ht+0x1a9ca, %rdi
nop
nop
nop
cmp %rax, %rax
mov $121, %rcx
rep movsl
nop
cmp $46336, %rax
lea addresses_UC_ht+0x1db7c, %rsi
nop
nop
nop
nop
xor $43230, %rdx
movb (%rsi), %r10b
xor $19878, %r10
lea addresses_normal_ht+0x1616e, %rcx
cmp $31955, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0xe722, %rax
nop
nop
nop
nop
inc %rdx
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x91ae, %rcx
sub $40147, %r10
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xa56e, %rsi
lea addresses_D_ht+0xa56e, %rdi
nop
nop
nop
dec %r15
mov $66, %rcx
rep movsq
nop
cmp $9109, %rdx
lea addresses_D_ht+0x716e, %rsi
xor $25734, %rcx
movw $0x6162, (%rsi)
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0x196e, %r14
nop
nop
nop
nop
and %rbp, %rbp
movb $0x51, (%r14)
nop
nop
xor $1397, %r12

// Store
lea addresses_US+0xf36e, %rdi
clflush (%rdi)
nop
nop
nop
and $58463, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdi)
nop
cmp $64225, %r14

// Load
lea addresses_D+0x45a2, %rdi
nop
nop
nop
nop
sub $32042, %r12
mov (%rdi), %r13d
nop
sub %rdi, %rdi

// Store
lea addresses_US+0x1696e, %rbp
clflush (%rbp)
nop
nop
add $49631, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
nop
dec %rbp

// Load
lea addresses_WC+0x1bd6e, %r12
sub %rsi, %rsi
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
and %r14, %r14

// Store
lea addresses_PSE+0x1b01e, %rbp
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rbp)
and $7312, %r14

// Store
lea addresses_D+0x1496e, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%r12)
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0x1696e, %rsi
sub %r13, %r13
mov (%rsi), %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'51': 539, '58': 1}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
