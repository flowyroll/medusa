.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8f3f, %rcx
nop
nop
nop
nop
nop
and $10226, %r10
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
inc %rax
lea addresses_D_ht+0x1ccff, %r8
nop
nop
inc %r10
movb $0x61, (%r8)
nop
nop
nop
nop
sub $26410, %r10
lea addresses_D_ht+0xa3ff, %rdi
inc %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x183e9, %r15
nop
xor $7453, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r15)
add $7641, %rdi
lea addresses_A_ht+0xc8d7, %rsi
lea addresses_UC_ht+0x151ff, %rdi
sub $64253, %r8
mov $70, %rcx
rep movsw
nop
nop
nop
nop
add $33933, %rsi
lea addresses_WC_ht+0xd49f, %r8
clflush (%r8)
add %rbp, %rbp
mov (%r8), %ecx
nop
nop
nop
nop
nop
xor $62225, %rdi
lea addresses_UC_ht+0x15112, %rsi
lea addresses_WC_ht+0x1e5ff, %rdi
nop
nop
cmp $39787, %r15
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $37866, %rax
lea addresses_UC_ht+0x115ff, %rbp
nop
nop
and $50453, %rax
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x1bb7f, %rax
add %r10, %r10
movl $0x61626364, (%rax)
nop
and $29006, %rax
lea addresses_A_ht+0x10947, %r8
nop
nop
nop
nop
nop
dec %r10
movw $0x6162, (%r8)
and $11785, %rcx
lea addresses_UC_ht+0x1cecf, %r15
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %r15
vmovntdq %ymm3, (%r15)
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x1ddff, %r15
nop
xor %r8, %r8
mov (%r15), %eax
nop
dec %rcx
lea addresses_UC_ht+0x3fff, %rbp
nop
nop
and $45787, %rax
mov (%rbp), %rcx
nop
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx

// Store
mov $0xc0f, %r8
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r8)
cmp %r14, %r14

// Store
mov $0x54f1ae00000005ff, %r8
nop
nop
cmp $223, %r12
movw $0x5152, (%r8)
nop
nop
nop
cmp $28878, %rcx

// Faulty Load
mov $0xdff, %r13
nop
nop
cmp $2194, %r8
movaps (%r13), %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 338}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
