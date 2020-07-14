.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x7a55, %rdx
add %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xff09, %r10
add %rcx, %rcx
mov (%r10), %r12
nop
nop
nop
nop
xor $53425, %r9
lea addresses_A_ht+0x15c89, %r9
nop
nop
nop
sub %rdx, %rdx
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x5a09, %r10
nop
sub $21648, %r15
mov (%r10), %ecx
nop
nop
nop
nop
and $15753, %r15
lea addresses_UC_ht+0xb09, %r9
nop
nop
add %r12, %r12
mov (%r9), %r10
nop
and %r10, %r10
lea addresses_A_ht+0xab09, %r9
nop
nop
nop
xor $18152, %r12
mov (%r9), %r10
nop
nop
nop
and $41554, %r10
lea addresses_D_ht+0x13009, %rdx
clflush (%rdx)
nop
nop
nop
nop
mfence
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
add $13819, %rbx
lea addresses_UC_ht+0x1e8d9, %rbx
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%rbx)
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x6b09, %r12
nop
nop
nop
nop
add $43779, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
nop
sub $46457, %rbx
lea addresses_D_ht+0x149a9, %r10
nop
nop
nop
nop
inc %r12
movw $0x6162, (%r10)
nop
and $9161, %r10
lea addresses_normal_ht+0x12ed9, %r9
nop
nop
nop
nop
nop
and $51929, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
nop
add %r9, %r9
lea addresses_D_ht+0x1b7e1, %rbx
nop
dec %rdx
movw $0x6162, (%rbx)
nop
sub $40660, %r9
lea addresses_D_ht+0x1ab09, %r12
nop
inc %rdx
movb $0x61, (%r12)
nop
cmp %r12, %r12
lea addresses_WT_ht+0x13489, %rsi
lea addresses_D_ht+0xbd69, %rdi
nop
nop
nop
xor %r12, %r12
mov $86, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x16f6d, %rbx
and %rdx, %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
dec %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xfc79, %rdx
nop
nop
xor %rbp, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
xor $36889, %rdx

// Store
lea addresses_PSE+0x105dc, %r8
nop
inc %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
xor $23633, %r13

// REPMOV
lea addresses_normal+0x4b09, %rsi
mov $0xf09, %rdi
nop
nop
nop
nop
cmp $42998, %rdx
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WT+0x1db89, %r10
cmp %rsi, %rsi
movl $0x51525354, (%r10)
add $23645, %r13

// Store
lea addresses_normal+0x1958d, %rbp
nop
nop
nop
nop
add $40014, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rbp)
nop
sub $39136, %rdi

// Store
lea addresses_WC+0x1f199, %r15
cmp $57305, %rcx
movl $0x51525354, (%r15)
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_normal+0x4b09, %r13
clflush (%r13)
nop
nop
xor %rbp, %rbp
mov (%r13), %r8w
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_P', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'34': 891}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
