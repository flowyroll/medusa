.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb398, %rdi
clflush (%rdi)
nop
sub %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
and $12036, %r13
lea addresses_normal_ht+0x14908, %r8
nop
nop
nop
cmp $44194, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
xor $29769, %rdi
lea addresses_A_ht+0xe888, %r14
clflush (%r14)
nop
nop
nop
xor %r13, %r13
movl $0x61626364, (%r14)
sub $64646, %rdi
lea addresses_WC_ht+0xec08, %rsi
lea addresses_D_ht+0x25c0, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $10, %rcx
rep movsl
nop
nop
nop
nop
xor $14282, %r8
lea addresses_WT_ht+0x8b08, %r11
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%r11)
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x1ed20, %r11
nop
nop
xor $20727, %r14
movl $0x61626364, (%r11)
nop
nop
nop
nop
and $44844, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x17108, %rdx
nop
and $61762, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
add $6620, %rsi

// Store
lea addresses_WT+0x10d48, %r8
nop
xor %rbx, %rbx
movl $0x51525354, (%r8)
nop
mfence

// Store
lea addresses_WT+0x5d28, %rdi
nop
nop
nop
sub %r13, %r13
movw $0x5152, (%rdi)
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x1ec08, %rbx
nop
nop
nop
nop
nop
and $7842, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
inc %r8

// Faulty Load
lea addresses_PSE+0x3908, %rsi
xor %rbx, %rbx
mov (%rsi), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'33': 397}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
