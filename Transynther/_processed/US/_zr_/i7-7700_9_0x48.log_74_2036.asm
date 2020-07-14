.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf14a, %rsi
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
xor $35117, %r10
lea addresses_A_ht+0xdc1a, %r9
dec %rdi
movb (%r9), %r15b
sub %r9, %r9
lea addresses_WC_ht+0xa97a, %rbx
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rbx)
nop
cmp %r15, %r15
lea addresses_WC_ht+0x1574a, %rdi
nop
inc %rsi
mov (%rdi), %rbx
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x4c22, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%rdi)
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x2b4a, %rdi
nop
nop
nop
cmp %r9, %r9
mov (%rdi), %r15
nop
nop
sub $63426, %rcx
lea addresses_UC_ht+0x15eca, %rbx
nop
xor $59107, %rcx
movw $0x6162, (%rbx)
sub %rdi, %rdi
lea addresses_D_ht+0x1b76a, %rcx
cmp $7483, %rdi
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
nop
sub $11377, %r9
lea addresses_WC_ht+0x147e, %rsi
lea addresses_WC_ht+0x10b06, %rdi
nop
nop
nop
sub $23764, %rbp
mov $27, %rcx
rep movsb
nop
nop
and %r9, %r9
lea addresses_A_ht+0x15f4a, %r10
nop
sub $23792, %r15
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x1044a, %rdi
nop
nop
nop
nop
cmp $15600, %rbp
mov (%rdi), %r15
nop
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rsi

// Store
mov $0xd84, %rax
nop
nop
nop
sub $5833, %rbp
movb $0x51, (%rax)
xor $44092, %r13

// Load
lea addresses_US+0xab4a, %r13
nop
nop
nop
nop
cmp $38721, %r9
vmovaps (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
add %rbp, %rbp

// Store
lea addresses_normal+0xfa9a, %rsi
nop
nop
cmp $13276, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
add $43569, %r10

// Load
lea addresses_WT+0xe34a, %r10
nop
nop
nop
nop
nop
add %rax, %rax
mov (%r10), %r9
nop
nop
nop
add $15696, %r10

// Faulty Load
lea addresses_US+0x1b4a, %r9
nop
nop
nop
nop
nop
sub %r10, %r10
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'00': 74}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
