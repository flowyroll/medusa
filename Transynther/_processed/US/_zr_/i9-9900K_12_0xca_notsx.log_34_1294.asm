.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1207b, %rbp
sub %r14, %r14
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0xd11b, %rax
nop
nop
nop
cmp $43056, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
cmp $42898, %rsi
lea addresses_normal_ht+0xa3d6, %rax
nop
nop
nop
xor $32331, %rdx
mov (%rax), %r15w
nop
nop
nop
nop
cmp $36720, %rdx
lea addresses_D_ht+0xf7d3, %rax
nop
nop
nop
nop
nop
and $36659, %rsi
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x833b, %rbx
nop
inc %r14
movl $0x61626364, (%rbx)
and %r14, %r14
lea addresses_A_ht+0x187d3, %rbx
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%rbx)
nop
nop
add %rax, %rax
lea addresses_WT_ht+0xc6e7, %r14
nop
nop
nop
sub %rbx, %rbx
mov (%r14), %esi
nop
nop
nop
dec %rax
lea addresses_D_ht+0x11cd3, %rsi
lea addresses_WT_ht+0x10233, %rdi
nop
nop
sub %r15, %r15
mov $64, %rcx
rep movsb
nop
dec %rsi
lea addresses_A_ht+0x5d0f, %r15
clflush (%r15)
nop
nop
nop
nop
cmp $48564, %r14
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0xfcb3, %rsi
lea addresses_normal_ht+0xeeb3, %rdi
nop
nop
dec %rdx
mov $93, %rcx
rep movsl
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x38b3, %rax
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
cmp $14837, %rbp
lea addresses_WC_ht+0xdeb3, %rsi
lea addresses_A_ht+0x5253, %rdi
nop
nop
dec %rax
mov $16, %rcx
rep movsb
nop
nop
xor $6611, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0xa273, %rcx
nop
nop
and $27448, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rcx)
add %rcx, %rcx

// Load
lea addresses_WT+0x1fa17, %r12
nop
nop
nop
add %rdx, %rdx
movb (%r12), %r8b
xor %r14, %r14

// Store
lea addresses_A+0x102b3, %r14
nop
nop
nop
add %r12, %r12
movw $0x5152, (%r14)
nop
nop
cmp $49136, %r10

// Faulty Load
lea addresses_US+0x9eb3, %rdi
nop
nop
nop
nop
and %r10, %r10
mov (%rdi), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
