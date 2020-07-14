.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rsi
lea addresses_normal_ht+0x8cb1, %r9
nop
cmp $43131, %r12
movups (%r9), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
add $16856, %rsi
lea addresses_WC_ht+0x1e31, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
mfence
lea addresses_A_ht+0xc8b1, %r14
nop
and $42899, %r15
mov $0x6162636465666768, %r9
movq %r9, (%r14)
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x163b1, %r14
nop
nop
dec %rax
movl $0x61626364, (%r14)
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x14571, %r14
nop
dec %r15
movb (%r14), %r9b
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x47b1, %rdi
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
and $8348, %r10

// Store
lea addresses_A+0x1ecb1, %rdi
nop
nop
cmp $60355, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
sub $50999, %r11

// REPMOV
lea addresses_PSE+0x30b1, %rsi
lea addresses_PSE+0x1d9ee, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $16, %rcx
rep movsb
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_WT+0x1ccb1, %r11
nop
nop
nop
nop
dec %rsi
mov (%r11), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_PSE', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'58': 4}
58 58 58 58
*/
