.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x10352, %rcx
nop
lfence
mov (%rcx), %r9
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x15683, %rsi
lea addresses_WT_ht+0xedd2, %rdi
nop
nop
nop
nop
add $5540, %rdx
mov $115, %rcx
rep movsl
nop
nop
nop
nop
nop
and $23343, %rsi
lea addresses_WC_ht+0x4fe6, %rsi
lea addresses_UC_ht+0x1c3c2, %rdi
nop
nop
and %r9, %r9
mov $107, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1cd2, %r9
nop
nop
and $14134, %r10
mov (%r9), %di
nop
dec %r10
lea addresses_normal_ht+0x1a7a, %r9
nop
add %rsi, %rsi
movw $0x6162, (%r9)
nop
add $36999, %rcx
lea addresses_WC_ht+0x19d42, %r9
inc %rdx
movw $0x6162, (%r9)
nop
and $18416, %rdx
lea addresses_UC_ht+0x8e72, %rdi
nop
nop
nop
nop
inc %rcx
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
nop
nop
cmp $7867, %r9
lea addresses_WT_ht+0x8672, %rsi
lea addresses_A_ht+0x15cd2, %rdi
nop
nop
cmp $53257, %rbp
mov $68, %rcx
rep movsl
nop
nop
nop
nop
nop
and $59559, %r10
lea addresses_D_ht+0x3db2, %rbx
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1e0d2, %rdi
nop
nop
dec %rbp
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
nop
sub $51429, %r10
lea addresses_normal_ht+0xbb52, %rsi
lea addresses_UC_ht+0x3b2, %rdi
xor $12949, %r9
mov $3, %rcx
rep movsb
nop
nop
nop
nop
sub $5866, %r9
lea addresses_D_ht+0xc2d2, %rsi
lea addresses_WT_ht+0x82e2, %rdi
nop
add $46405, %rbx
mov $75, %rcx
rep movsl
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
mov $0xcd2, %rsi
nop
nop
nop
and %r15, %r15
movw $0x5152, (%rsi)
nop
xor $30667, %rdx

// Store
lea addresses_PSE+0xd4d2, %rdx
clflush (%rdx)
nop
cmp %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_WT+0x1fcd2, %rax
clflush (%rax)
nop
nop
sub $24148, %r15
mov (%rax), %r9w
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'52': 576}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
