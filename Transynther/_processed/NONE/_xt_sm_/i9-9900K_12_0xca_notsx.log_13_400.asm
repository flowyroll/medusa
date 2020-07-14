.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x168fa, %rsi
lea addresses_D_ht+0x1cadc, %rdi
nop
nop
nop
nop
add $2981, %r12
mov $30, %rcx
rep movsl
nop
nop
nop
cmp $22314, %r12
lea addresses_normal_ht+0x110fa, %rsi
lea addresses_WC_ht+0x48fa, %rdi
nop
nop
cmp %r14, %r14
mov $4, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0x180fa, %rsi
lea addresses_D_ht+0x48ba, %rdi
sub %rbx, %rbx
mov $101, %rcx
rep movsl
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x2cfa, %r14
clflush (%r14)
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%r14)
and $3038, %rdi
lea addresses_normal_ht+0xf8fa, %rcx
clflush (%rcx)
xor %rdi, %rdi
mov (%rcx), %rsi
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xf4d2, %rsi
nop
nop
nop
cmp %rbx, %rbx
mov (%rsi), %r14
nop
nop
xor $34350, %rdi
lea addresses_normal_ht+0x126fa, %rsi
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
xor $22093, %rdi
lea addresses_WC_ht+0x1e5f9, %r12
clflush (%r12)
nop
nop
nop
sub $43, %r10
movw $0x6162, (%r12)
nop
nop
cmp $59348, %rbx
lea addresses_normal_ht+0x39fa, %rdi
clflush (%rdi)
nop
nop
nop
and $27836, %rbx
mov (%rdi), %rcx
nop
nop
nop
sub $28912, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x1b8fa, %r10
nop
inc %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movaps %xmm2, (%r10)
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_RW+0x1b8fa, %r14
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
nop
inc %rax

// Load
lea addresses_WC+0x209e, %rdi
nop
nop
add %r14, %r14
vmovaps (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_RW+0x1b8fa, %rax
clflush (%rax)
and %rdx, %rdx
mov (%rax), %r13d
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'58': 13}
58 58 58 58 58 58 58 58 58 58 58 58 58
*/
