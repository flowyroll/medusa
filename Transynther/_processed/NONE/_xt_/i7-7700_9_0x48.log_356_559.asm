.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a1e8, %rsi
lea addresses_WT_ht+0x649c, %rdi
nop
and %r11, %r11
mov $78, %rcx
rep movsq
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0xedb8, %rsi
lea addresses_WC_ht+0x1a57c, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $64, %rcx
rep movsb
cmp $2640, %rcx
lea addresses_WT_ht+0x1929c, %rsi
lea addresses_normal_ht+0x1709c, %rdi
cmp $44498, %r12
mov $39, %rcx
rep movsq
nop
and %r11, %r11
lea addresses_WT_ht+0x14d3c, %rcx
nop
nop
nop
nop
cmp $19620, %r11
movw $0x6162, (%rcx)
nop
inc %r11
lea addresses_normal_ht+0x127ac, %rsi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
and $58080, %r11
lea addresses_normal_ht+0x191ac, %rcx
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm0
and $0xffffffffffffffc0, %rcx
movntdq %xmm0, (%rcx)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x1e89c, %r14
nop
nop
nop
nop
nop
sub $59481, %rdi
movl $0x61626364, (%r14)
nop
nop
and $42354, %rcx
lea addresses_normal_ht+0x3c9c, %rsi
nop
nop
nop
xor $326, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
sub $32980, %r11
lea addresses_WT_ht+0xc69c, %rdi
clflush (%rdi)
nop
nop
xor $38577, %rbx
mov (%rdi), %r14d
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x5f3c, %rdi
nop
nop
nop
and %rbx, %rbx
mov (%rdi), %r14d
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x16b58, %rbx
nop
add %r12, %r12
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
and $57045, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_D+0xc444, %rsi
clflush (%rsi)
xor %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
and $35257, %r15

// Store
lea addresses_WC+0x1f7a8, %rax
nop
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
cmp $25017, %rax

// Store
lea addresses_A+0x15d84, %r8
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
xor %r13, %r13

// Store
lea addresses_UC+0x1e09c, %r9
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r9)
nop
add $40929, %r9

// Store
mov $0x2c5, %r8
nop
nop
cmp $51440, %r9
movb $0x51, (%r8)
and %r9, %r9

// Store
lea addresses_RW+0x1485c, %r15
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
nop
xor $31237, %rax

// Store
mov $0x1d8d180000000fbc, %rax
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rax)
cmp %r8, %r8

// Faulty Load
lea addresses_D+0xac9c, %r9
nop
nop
cmp %r15, %r15
mov (%r9), %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'36': 356}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
