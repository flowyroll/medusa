.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x16d31, %r12
nop
nop
nop
sub $45530, %rbp
mov (%r12), %rsi
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x4829, %r10
and $38443, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x17763, %rax
nop
cmp %r13, %r13
movb $0x61, (%rax)
nop
xor $52262, %r12
lea addresses_WT_ht+0x132d1, %rsi
lea addresses_A_ht+0xc0d1, %rdi
cmp %r12, %r12
mov $34, %rcx
rep movsb
nop
nop
nop
nop
cmp $17432, %r12
lea addresses_UC_ht+0x1aed1, %r12
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1d0d1, %r12
xor $45973, %r10
mov (%r12), %r13
nop
nop
nop
nop
nop
and $52756, %rbp
lea addresses_D_ht+0xf861, %rdx
nop
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%rdx)
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x17e63, %rax
nop
xor $10800, %rdi
mov (%rax), %ecx
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x1c56b, %rbp
nop
cmp $24705, %r12
movl $0x61626364, (%rbp)
nop
dec %r13
lea addresses_UC_ht+0x178d1, %rsi
lea addresses_UC_ht+0x62c5, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
mov $1, %rcx
rep movsl
nop
nop
add $63365, %r13
lea addresses_WC_ht+0x58ab, %r10
clflush (%r10)
nop
add %rsi, %rsi
movw $0x6162, (%r10)
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_D+0x28d1, %rdx
nop
nop
nop
nop
nop
add $720, %rax
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
nop
nop
nop
inc %rax

// Store
mov $0x3dd, %r14
nop
and $3342, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovaps %ymm7, (%r14)
nop
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_WT+0x1e0d1, %rdx
nop
nop
nop
nop
and %rax, %rax
mov (%rdx), %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'39': 452}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
