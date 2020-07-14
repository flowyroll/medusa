.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x44fa, %rcx
nop
nop
and $5312, %rbp
movw $0x6162, (%rcx)
nop
add %rax, %rax
lea addresses_D_ht+0xbafa, %rsi
nop
nop
mfence
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xd6fa, %rsi
lea addresses_D_ht+0x18c06, %rdi
xor $30071, %r15
mov $55, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $27821, %rcx
lea addresses_WT_ht+0x735a, %rsi
lea addresses_normal_ht+0x1aefa, %rdi
sub $50337, %rdx
mov $81, %rcx
rep movsb
nop
nop
nop
xor $2871, %rcx
lea addresses_D_ht+0x1772, %rdi
nop
nop
xor $63098, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
cmp $14924, %rbx
lea addresses_normal_ht+0x1e07a, %r15
nop
nop
nop
inc %rsi
mov (%r15), %rbx
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x10eba, %rbx
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%rbx)
and %r15, %r15
lea addresses_D_ht+0x89da, %rsi
lea addresses_WT_ht+0x1381a, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $126, %rcx
rep movsw
nop
nop
xor $49437, %rbx
lea addresses_normal_ht+0x19196, %r15
nop
xor $44104, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r15)
nop
and %rbp, %rbp
lea addresses_D_ht+0x1afa, %rsi
lea addresses_normal_ht+0x81fa, %rdi
nop
nop
nop
inc %rbx
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
add $36252, %rbx
lea addresses_UC_ht+0x77ba, %rsi
lea addresses_D_ht+0x112fa, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $23, %rcx
rep movsw
nop
nop
nop
nop
and $1402, %rdx
lea addresses_WC_ht+0x827a, %rsi
lea addresses_A_ht+0x1d47a, %rdi
nop
cmp %rbx, %rbx
mov $24, %rcx
rep movsw
nop
and $12763, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WT+0x1e422, %r10
nop
nop
nop
nop
xor %rdx, %rdx
movw $0x5152, (%r10)
cmp $28019, %rbp

// Store
lea addresses_UC+0x5fda, %r15
nop
nop
cmp $64062, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movntdq %xmm7, (%r15)
nop
nop
nop
nop
xor $23311, %r10

// Store
lea addresses_PSE+0x17afa, %rdx
nop
nop
add $33486, %r9
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
nop
and %rdx, %rdx

// Store
lea addresses_RW+0x2bfa, %r12
nop
nop
nop
nop
nop
cmp $6844, %rbp
movw $0x5152, (%r12)
nop
nop
dec %r10

// Load
mov $0xd3a, %r9
nop
cmp $46572, %rdx
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_RW+0x1d2fa, %r9
nop
and $60222, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
nop
sub $37560, %r15

// Store
lea addresses_PSE+0x16fba, %r12
nop
sub $41915, %r10
movl $0x51525354, (%r12)
nop
cmp %r15, %r15

// Store
lea addresses_A+0x1e3cf, %rdx
and %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_WT+0x106fa, %rbp
sub %rdx, %rdx
movw $0x5152, (%rbp)
nop
nop
nop
add $2691, %r15

// Faulty Load
lea addresses_PSE+0x17afa, %r10
sub $58821, %rbp
mov (%r10), %r12w
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 6, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'58': 1120}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
