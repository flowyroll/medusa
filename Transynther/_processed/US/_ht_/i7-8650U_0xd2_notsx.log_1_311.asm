.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15135, %rsi
lea addresses_A_ht+0x13e4d, %rdi
nop
add $17296, %r9
mov $62, %rcx
rep movsw
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x9735, %r12
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm2
and $0xffffffffffffffc0, %r12
movaps %xmm2, (%r12)
nop
nop
nop
nop
cmp $40369, %rdi
lea addresses_WT_ht+0x13bf5, %r9
clflush (%r9)
nop
nop
nop
nop
add $60395, %rsi
movl $0x61626364, (%r9)
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1ebeb, %rsi
lea addresses_WC_ht+0x1e523, %rdi
nop
nop
nop
sub $57272, %r13
mov $60, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_WC_ht+0x18735, %rdi
clflush (%rdi)
nop
nop
nop
inc %rsi
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x16935, %rdi
nop
nop
nop
and $58727, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rdi)
cmp $41418, %r12
lea addresses_normal_ht+0x5135, %rsi
lea addresses_normal_ht+0x15e93, %rdi
nop
nop
nop
nop
nop
and $25557, %rax
mov $120, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x12eb5, %rsi
lea addresses_WC_ht+0xfb35, %rdi
nop
nop
sub $36523, %r12
mov $54, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1c24b, %rax
nop
nop
nop
nop
add %r12, %r12
mov (%rax), %r13w
nop
nop
dec %rcx
lea addresses_A_ht+0x2af5, %r8
nop
nop
xor %r9, %r9
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
xor $32557, %r13
lea addresses_normal_ht+0x12535, %rcx
nop
nop
and $52329, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1a735, %rax
sub $63198, %rcx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
xor %rax, %rax
lea addresses_UC_ht+0x15735, %r12
nop
nop
xor %r9, %r9
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
add $34201, %rcx
lea addresses_WT_ht+0x7e9a, %rsi
nop
nop
nop
nop
nop
sub %r13, %r13
movb $0x61, (%rsi)
sub $45970, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xed35, %r12
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
add %r13, %r13

// REPMOV
lea addresses_PSE+0x15931, %rsi
lea addresses_PSE+0xb75, %rdi
nop
xor %r12, %r12
mov $4, %rcx
rep movsq
nop
nop
dec %r12

// Store
lea addresses_WC+0x9bf2, %r8
nop
nop
nop
add %rdi, %rdi
movb $0x51, (%r8)
xor %r12, %r12

// Faulty Load
lea addresses_US+0x1135, %rbx
cmp %rcx, %rcx
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'48': 1}
48
*/
