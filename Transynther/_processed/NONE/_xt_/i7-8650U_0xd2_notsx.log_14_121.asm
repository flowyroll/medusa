.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7687, %rsi
lea addresses_A_ht+0xa247, %rdi
nop
nop
nop
xor $17879, %r15
mov $112, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_normal_ht+0xbe87, %rsi
nop
nop
nop
xor $21074, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rsi)
dec %r15
lea addresses_WT_ht+0xb5c7, %rdi
nop
nop
and %r9, %r9
movl $0x61626364, (%rdi)
nop
cmp $4953, %r8
lea addresses_A_ht+0x11287, %r8
nop
nop
nop
nop
cmp $23910, %rdi
vmovups (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xdc87, %r10
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
sub $35989, %r15

// Load
lea addresses_A+0x1fab7, %r14
nop
nop
nop
nop
sub $47768, %rcx
mov (%r14), %r15
nop
and $18217, %rcx

// Load
lea addresses_WT+0x6087, %rbp
clflush (%rbp)
nop
nop
nop
sub $6579, %r10
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
sub $3339, %r10

// Store
lea addresses_WC+0x192c7, %rbp
nop
inc %rax
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
cmp %r15, %r15

// REPMOV
mov $0xe87, %rsi
lea addresses_US+0xa1f3, %rdi
nop
nop
nop
inc %r14
mov $68, %rcx
rep movsb
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WT+0x3e87, %rsi
nop
nop
nop
add %rbp, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x10a87, %rdi
nop
nop
add $36215, %rbp
mov (%rdi), %r14w
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'33': 14}
33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
