.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1027c, %rsi
lea addresses_normal_ht+0x217c, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $42, %rcx
rep movsl
cmp %r15, %r15
lea addresses_A_ht+0xcbd3, %r14
nop
nop
nop
xor $2855, %rsi
movw $0x6162, (%r14)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0xeb7c, %r14
nop
nop
cmp $63435, %r8
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x837c, %rsi
lea addresses_D_ht+0x1c91d, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $120, %rcx
rep movsl
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x1be44, %r14
and %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%r14)
xor $23377, %r15
lea addresses_WT_ht+0x1cf7c, %rsi
lea addresses_WT_ht+0x14642, %rdi
nop
nop
nop
nop
nop
cmp $52072, %r11
mov $93, %rcx
rep movsq
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0xd68c, %r8
nop
cmp %rcx, %rcx
mov (%r8), %rdi
nop
sub $1726, %r15
lea addresses_UC_ht+0x8b7c, %r11
clflush (%r11)
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r8
movq %r8, (%r11)
nop
nop
nop
sub $39851, %r11
lea addresses_WC_ht+0x1de18, %r8
clflush (%r8)
nop
cmp $21169, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x16b7c, %rsi
lea addresses_normal_ht+0x161fc, %rdi
nop
nop
dec %r13
mov $7, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_UC_ht+0x17b7c, %rsi
lea addresses_UC_ht+0x56fc, %rdi
nop
and $24178, %r13
mov $82, %rcx
rep movsl
nop
nop
dec %r14
lea addresses_WC_ht+0x7a7c, %rcx
nop
nop
nop
xor %r11, %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and $8456, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rdx
push %rsi

// Store
mov $0x50b0ee0000000180, %rax
nop
nop
nop
and $63492, %r13
movl $0x51525354, (%rax)
add %rax, %rax

// Faulty Load
lea addresses_D+0x7b7c, %r14
nop
nop
nop
nop
nop
cmp $57411, %r8
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'36': 321}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
