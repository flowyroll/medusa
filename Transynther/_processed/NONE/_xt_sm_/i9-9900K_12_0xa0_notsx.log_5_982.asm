.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c5c9, %r12
nop
nop
sub %r14, %r14
movw $0x6162, (%r12)
and $35371, %r15
lea addresses_UC_ht+0x79c9, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %r11, %r11
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
nop
cmp $17919, %r10
lea addresses_WC_ht+0x17db9, %r10
nop
nop
nop
add %rcx, %rcx
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
cmp $41477, %r11
lea addresses_WT_ht+0x1798d, %rsi
lea addresses_UC_ht+0x1c1e9, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $40, %rcx
rep movsb
dec %r15
lea addresses_WC_ht+0x2cc9, %r15
nop
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%r15)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xa701, %rsi
lea addresses_WC_ht+0x10c9, %rdi
nop
nop
xor $5353, %r10
mov $62, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x15eed, %r14
nop
nop
nop
nop
nop
xor $26512, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r14)
nop
nop
and $29955, %rcx
lea addresses_D_ht+0x18b09, %rsi
lea addresses_WC_ht+0xb6c9, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $118, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $23538, %rsi
lea addresses_A_ht+0x16dc9, %rsi
lea addresses_A_ht+0xe1c9, %rdi
nop
nop
nop
nop
nop
xor $32353, %r12
mov $21, %rcx
rep movsl
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0xe471, %rsi
lea addresses_WC_ht+0x6344, %rdi
xor $57515, %r11
mov $56, %rcx
rep movsq
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x35c9, %rsi
lea addresses_normal_ht+0xadc9, %rdi
nop
nop
nop
sub $17888, %r10
mov $34, %rcx
rep movsq
nop
nop
inc %r13
lea addresses_A_ht+0x10fc9, %rcx
nop
nop
nop
nop
nop
cmp $53937, %r15
movb (%rcx), %r13b
nop
nop
dec %r13
lea addresses_WC_ht+0x41c9, %r14
and $47408, %rcx
mov (%r14), %r10d
nop
nop
nop
and $19804, %r13
lea addresses_normal_ht+0x135c9, %r11
nop
nop
nop
cmp $35403, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%r11)
nop
nop
cmp $38312, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x47ed, %r12
nop
nop
nop
add $27232, %r11
movw $0x5152, (%r12)
nop
nop
nop
nop
add %r12, %r12

// Store
mov $0x5ec8690000000089, %r15
nop
and %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r15)
cmp $29358, %rdi

// Store
lea addresses_A+0x1e5c9, %r11
xor %rbx, %rbx
movw $0x5152, (%r11)
nop
dec %rdx

// Store
mov $0x23e5eb0000000aa9, %r11
nop
nop
nop
and %r12, %r12
movb $0x51, (%r11)
nop
nop
sub $35137, %rbx

// Store
lea addresses_RW+0xfec9, %rdx
nop
nop
nop
cmp $37343, %r11
movl $0x51525354, (%rdx)
sub $37775, %rbx

// Faulty Load
lea addresses_A+0x1e5c9, %rdi
nop
nop
nop
nop
nop
xor $64801, %r15
mov (%rdi), %edx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'52': 5}
52 52 52 52 52
*/
